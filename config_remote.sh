#bash
# Stop lirc to free up /dev/lirc0
sudo /etc/init.d/lircd stop
# Create a new remote control configuration file (using /dev/lirc0) and save the output to ~/lircd.conf
irrecord -f -d /dev/lirc0 ./lircd.conf
# Make a backup of the original lircd.conf file
sudo mv /etc/lirc/lircd.conf /etc/lirc/lircd_original.conf
# Copy over your new configuration file
sudo cp ./lircd.conf /etc/lirc/lircd.conf
# Start up lirc again
sudo /etc/init.d/lircd start

