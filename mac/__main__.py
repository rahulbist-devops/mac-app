from mac import utils 
import sys
from mac.logger import logger


def get_response():
    response = utils.get()
    print(response)

get_response()
