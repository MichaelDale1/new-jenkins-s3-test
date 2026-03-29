# New Jenkins server test with terraform deployment and triggers

## Jenkinsfile

A simple declarative Jenkinsfile
- Clones git repo 
- Binds AWS IAM user creds in terraform stages with AWS Creds plugin
- Stages for terraform init and apply 
- Destroy stage using user input 

## Terraform script 
- A simple AWS S3 bucket is deployed
- State file is stored in S3 backend 
- S3 bucket name uniqueness is guranteed 

## User data
EC2 startup script to bootstrap Jenkins server


# Michael "Dale's" King Armageddon Proof
## S3 Bucket contains Armageddon Artifacts

## S3 Bucket contains Github Webhook Artifacts

### Video of Jenkins Console Output

#### Github Webhook Set

1. **[Github-setup-Webhook-via-push](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Github-setup-Webhook-via-push.png)**

2. [Jenkins-Pipeline-Configure-Trigger-via-Github](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Jenkins-Pipeline-Configure-Trigger-via-Github.png)

3. **[Jenkins-Pipeline-Successful-Deployment-via-Webhook](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Jenkins-Pipeline-Successful-Deployment-via-Webhook.png)**

4. [Trigger-initiated-via-Webhook](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Trigger-initiated-via-Webhook.png)


## S3 Bucket contains Theo WAF's response Armageddon Submission

