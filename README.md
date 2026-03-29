
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


![S3-Jenkins-Bucket-Exist](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Jenkins-Bucket-Exist.png)

### S3 Bucket Proof Images

| Image Name | Link |
|------------|------|
| S3-Jenkins-Bucket-Exist.png | [View](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Jenkins-Bucket-Exist.png) |
| S3-Lab-1A-to-1C-Bonus-F-Directory-Exist.png | [View](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Lab-1A-to-1C-Bonus-F-Directory-Exist.png) |
| S3-Lab-1C-Bonus-G-Directory-Exist.png | [View](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Lab-1C-Bonus-G-Directory-Exist.png) |
| S3-Lab-2A-Cli-Check-Artifacts-Exist.png | [View](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Lab-2A-Cli-Check-Artifacts-Exist.png) |
| S3-Lab-2B-BAM-A-Directory-Exist.png | [View](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Lab-2B-BAM-A-Directory-Exist.png) |
| S3-Lab-2B-BAM-B-Directory-Exist.png | [View](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Lab-2B-BAM-B-Directory-Exist.png) |
| S3-Lab-2B-BAM-C-Directory-Exist.png | [View](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Lab-2B-BAM-C-Directory-Exist.png) |
| S3-Lab-3B-Artifacts-Directory-Exist.png | [View](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Lab-3B-Artifacts-Directory-Exist.png) |
| S3-Webhook-Directory-Exist.png | [View](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Jenkin-S3-Bucket-Photo/S3-Webhook-Directory-Exist.png) |


## S3 Bucket contains Github Webhook Artifacts

### Video of Jenkins Console Output
#### Asset:

https://github.com/user-attachments/assets/c53617f7-287b-445f-9594-f56a810b625a

<https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Jenkins-Initiated-by-Webhook-Console-Output-Recording.mp4>    

![Jenkins Console Output showing Webhook](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Jenkins-Console-Output-showing-Webhook.png)



#### Github Webhook Set

1. ![Github-setup-Webhook-via-push](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Github-setup-Webhook-via-push.png)

2. ![Jenkins-Pipeline-Configure-Trigger-via-Github](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Jenkins-Pipeline-Configure-Trigger-via-Github.png)

3. ![Jenkins-Pipeline-Successful-Deployment-via-Webhook](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Jenkins-Pipeline-Successful-Deployment-via-Webhook.png)

4. ![Trigger-initiated-via-Webhook](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Webhook-proof/Trigger-initiated-via-Webhook.png)


## S3 Bucket contains Theo WAF's response Armageddon Submission

![Theo WAF Response to Armageddon 7.0 Submission](https://github.com/MichaelDale1/new-jenkins-s3-test/blob/main/Theo-Waf-Response-to-Arm-7-0/Theo-Waf-response-to-group-Armageddon-7.0-submission.png)
