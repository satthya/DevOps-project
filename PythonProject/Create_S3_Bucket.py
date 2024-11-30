import boto3
client = boto3.client('s3', region_name='us-east-1')

client.create_bucket(Bucket='satthya2')