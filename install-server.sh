sudo apt install ffmpeg
sudo cp server-recorder.service /etc/systemd/system/server-recorder.service
echo '0 0 * * * /usr/bin/find /mnt/hdd1/record -name "camera*" -type f -mtime +2 -exec rm -f {} \;' | sudo tee --append /etc/crontab
sudo systemctl enable server-recorder.service
sudo systemctl start server-recorder.service
