import boto3
client = boto3.client('s3', region_name='us-east-1')

client.download_file(Bucket='satthya2',
                     Key='satthya-test',
                     Filename='mydownload')