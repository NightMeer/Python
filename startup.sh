#!/bin/bash
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip

if [ ! -s "requirements.txt" ]; then
  pip3 install -r /src/requirements.txt
fi

if [ "$PACKAGES" != "" ]
then
  echo "Install"
  pip install $PACKAGES
fi

pip freeze > docker-requirements.txt

chmod 777 -R /src

python3 $FILENAME $ADDITIONAL_COMMAND