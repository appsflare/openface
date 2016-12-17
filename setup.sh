./models/get-models.sh
pip2 install -r requirements.txt
python2 setup.py install
pip2 install -r api/web/requirements.txt
pip2 install -r training/requirements.txt