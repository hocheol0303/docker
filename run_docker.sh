docker run --gpus all -it \
	-e TZ=Asia/Seoul \
	--name hobbang \
	-v $home/classification:/classification \
	-w /classification \
	tf_image

