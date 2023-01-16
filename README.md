# hub-DIY-surveillance-camera
A project that captures a FullHD video stream, sends it through an RTSP server, encodes it, and stores it in a 48 hour loop that takes a bit less than 300GB on a hard drive.

Installing and starting the camera:
./install_camera.sh

Installing and starting the recording server (make sure you have at least 80 GB of storage available for the recorded video files):
./install_server.sh

You should also change the server service files to choose where you want the recorded files to be written, as the destination isn't standard but specific to my machine.

Make sure you run this with machines configured with static IPs and update the install_server.sh script with your camera IP address.

To stop the services, run sudo systemctl disable "service name".
