import os
from time import sleep

try:
    os.system("SETX {0} {1}".format('PYTHONPATH', os.path.dirname(__file__)))
    os.system("SETX {0} {1}".format('ENV_DIR', os.path.dirname(__file__)))
except Exception as e:
    input(e)
    
sleep(1)