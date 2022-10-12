import boto3 as boto3
session = boto3.Session(
    aws_access_key_id="",
    aws_secret_access_key=""
)

regions = session.get_available_regions("ssm")

d = {}
for region in regions:
    s = boto3.Session(region_name=region)
    d[region] = s.get_available_services()

print(d)

