sudo apt update && sudo apt upgrade
sudo apt install git cmake
sudo apt install libalsaplayer-dev libclalsadrv-dev libdssialsacompat-dev
git clone https://github.com/mpromonet/v4l2rtspserver.git
cd v4l2rtspserver/
cmake . && make -j4
sudo make install
