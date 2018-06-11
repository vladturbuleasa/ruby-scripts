## Retrieve IAM users with access key from AWS

### Requirements:
1. Ruby version ~> '2.5.1' Mac OS/ CentOS / Debian (use rbenv)
2. AWS account/ Access Key + Secret Key + Availability Zone

### Setup your VM/Mac OS
Go to you ```.bash_profile``` and add the below lines at the end of the file:
```access transformers
export AWS_ACCESS_KEY_ID=<your_acc_key>
export AWS_SECRET_ACCESS_KEY=<your_secret_key>
```

to make the keys accesible run:
```access transformers
source ~/.bash_profile
```
The AWS Region will be needed when you will run the script

### Run the script
In order to run the script , copy it on the system and run, don't forget to change the region from eu-central-1 to the needed region:
```access transformers
chmod +x iam.rb 
source ~/.bash_profile
ruby iam.rb eu-central-1
```

*Note:* If there is a bug or an improvment that can be made please let me know at vlad.turbuleasa@gmail.com
