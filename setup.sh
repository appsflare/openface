git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; bash install-deps;
./install.sh

source ~/.bashrc

for NAME in dpnn nn optim optnet csvigo cutorch cunn fblualib torchx tds; do luarocks install $NAME; done

./models/get-models.sh
pip2 install -r requirements.txt
python2 setup.py install
pip2 install -r api/web/requirements.txt
pip2 install -r training/requirements.txt