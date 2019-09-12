import os
import logging

logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)

if os.environ.get('DEBUG'):
    logger.setLevel(logging.DEBUG)
