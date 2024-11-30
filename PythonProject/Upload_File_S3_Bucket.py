import boto3
client = boto3.client('s3', region_name='us-east-1')

with open('satthya1.txt','w') as file:
    file.write('This is my first automation.')

client.upload_file(Filename='satthya.txt',
                   Bucket='satthya2',
                   Key='satthya-test')
