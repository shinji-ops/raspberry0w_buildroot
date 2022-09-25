Raspberry zero W + BuildRoot + Docker


referred to 
https://github.com/nomumu/pizeroW_BuidrootDocker

(1)make docker image
sudo docker image build -t pizerow_buildroot:v2 .


(2)run docker image
sudo docker run  -it \   
 --mount type=bind,src=`pwd`/articles,dst=/work/articles   \
 --mount type=bind,src=`pwd`/downloads,dst=/work/dl   \
  pizerow_buildroot:v2

