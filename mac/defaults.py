import os
apikey = os.environ.get('apikey')
url = f'https://api.macaddress.io/v1?apiKey={apikey}&output=json&search='
macaddress = os.environ.get('macaddress')



