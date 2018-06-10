#!/usr/bin/env ruby

require 'aws-sdk-iam'
require 'json'
require 'rubygems'

def iam_users_key(iam)

iam_hash = Hash.new

  iam.list_users.users.each do |user|
    array_acc_key = []
    name = user.user_name   
    q = iam.list_access_keys({user_name: name}).access_key_metadata

    if  !q.any?
      acc_key = ""
      iam_hash[name] = acc_key
    else
      iam.list_access_keys({user_name: name}).access_key_metadata.each do |key|
        acc_key = key.access_key_id
        array_acc_key << acc_key
      end
      iam_hash[name] = array_acc_key
    end

  end

  return iam_hash.to_json  

#method ends
end


#input
read_aws_reagin = ARGV
iam1 = Aws::IAM::Client.new(region: read_aws_reagin.to_s)

output = iam_users_key(iam1)

puts output

