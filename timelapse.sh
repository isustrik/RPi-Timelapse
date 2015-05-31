#Garden Cam Script - run from crontab 600 to 2300 (17hrs)

SAVEDIR=/home/pi/GardenCam/pictures

for i in {1..1020}; do #end after 1020 picture or in this case  17hrs=1020min;

#For 17hr timelapses use ther following for the For loop and Sleep values:
# for 1min between pics use 1020 plus a sleep of 50
# for 5min between pics use 204 plus a sleep of 290
# for 10min between pics us 102 plus a sleep of 590
# for 15min between pics use 68 plus a sleep of 890
# for 20min between pics use 51 plus a sleep of 1190
# for 30min between pics use 34 plus a sleep of 1790

filename=GC-$(date +"%Y%m%d_%H%M-%S").jpg #this names the file GC-<date>_<timeHrMin>-<seconds>.jpg

raspistill -n -ev -1 -vf -hf -o $SAVEDIR/$filename #Garden Cam is running bright and upside down so vf/hf flip it and ev reduces the exposure

#raspistill -n -vf -hf -sh 25 -co 10 -br 45 -sa 10 -ev -3 -o $SAVEDIR/$filename

sleep 50; #this will take a picture every minute approximately with ~6-10sec to take and save picture + wait/sleep of 50sec.

done;
