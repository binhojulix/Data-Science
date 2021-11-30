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
        print('Bucket não criado!')


def creating_bucket_with_region(bucket_name, region):
     try:
         s3 = boto3.client('s3', region_name=region)       
         location = {'LocationConstraint': region}
         s3.create_bucket(Bucket=bucket_name,
                          CreateBucketConfiguration=location)
    except ClientError as e:
        logging.error(e)
        print('Bucket not created!')

        response = s3.list_buckets()
        print('Existing buckets:')
        for bucket in response['Buckets']:
            print(f'{bucket['Name']}')