#This will manually capture a picture approximately every 1 minute run from rc.local with an & at the end

SAVEDIR=/home/pi/tl/tl_test

while [ true ]; do

filename=GC-$(date -u +"%Y%m%d_%H%M-%S").jpg

raspistill -n -hf -vf -o $SAVEDIR/$filename

sleep 50; #this plus the 6 seconds to take a picture = 1minute

done;
