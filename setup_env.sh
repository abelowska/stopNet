#!/bin/bash
set -e

python3.11 -m venv --copies venv
source venv/bin/activate

pip install wheel
pip install --no-cache-dir -r requirements.txt
python -m ipykernel install --user --name=stopnet

deactivate
