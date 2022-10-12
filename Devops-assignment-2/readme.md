### Please import your credentials in aws credential file

## usage service-collection.py

This will give you details about all region and available services in a dictionary format.

```bash

python3 service-collection.py

```
# Available regions and Services we can be extract from the dictionary to list accordingly
eg :

```bash
my_regions = list(d.keys())
print (my_regions)

```
## usage ec2-extractor.py

This program will help you to extract all the ec2 instance details from single AWS account (all regions). This will covert the output to a .csv file for readability.

```bash

python ec2-extractor.py

```