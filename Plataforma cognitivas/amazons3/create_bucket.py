import boto3
import logging
from botocore.exceptions import ClientError

s3 = boto3.client('s3')

def creating_bucket(bucket_name):
    try:
        s3.create_bucket(Bucket=bucket_name)
        print('Done!')
    except ClientError as e:
        logging.error(e)
        print('Bucket not created!')