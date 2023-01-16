sudo apt update && sudo apt upgrade
sudo apt install git cmake
sudo apt install libalsaplayer-dev libclalsadrv-dev libdssialsacompat-dev
git clone https://github.com/mpromonet/v4l2rtspserver.git
cd v4l2rtspserver/
cmake . && make -j4
sudo make install
sudo cp rtsp-camera.service /etc/systemd/system/rtsp-camera.service
sudo systemctl enable rtsp-camera
sudo systemctl start rtsp-camera
