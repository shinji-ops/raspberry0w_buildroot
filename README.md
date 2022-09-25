Raspberry zero W + BuildRoot + Docker


refer to 
https://github.com/nomumu/pizeroW_BuidrootDocker
 when I tried to build 2022.04 version, wifi did not work.
 you need to comment out 1st line of wpa_supplicant.conf.


(1)make docker image
sudo docker image build -t pizerow_buildroot:v2 .


(2)run docker image
sudo docker run  -it \   
 --mount type=bind,src=`pwd`/articles,dst=/work/articles   \
 --mount type=bind,src=`pwd`/downloads,dst=/work/dl   \
  pizerow_buildroot:v2

