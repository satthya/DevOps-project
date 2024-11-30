import boto3
com1 = boto3.client('ec2')
resp = com1.run_instances(ImageId='ami-0f935a2ecd3a7bd5c',
                          InstanceType='t2.micro',
                          MinCount=1,
                          MaxCount=1)

for instance in resp['Instances']:
    print(instance['InstanceId'])