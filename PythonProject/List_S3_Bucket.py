import boto3
client = boto3.client('s3', region_name='us-east-1')

list = client.list_buckets()

for bucket in list['Buckets']:
    print(bucket['Name'])