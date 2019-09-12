import sys
import requests
from mac.logger import logger
from mac import defaults

macaddress=defaults.macaddress

def get():
    try:
        response = requests.get(f'{defaults.url}{macaddress}')
    except requests.exceptions.ConnectionError as e:
        logger.error(e)
        sys.exit(1)
    response_json = response.json()
    companyName=response_json['vendorDetails']['companyName']
    
    return (f'{macaddress}--->>{companyName}')




