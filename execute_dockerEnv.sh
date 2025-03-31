docker run --gpus all -it \
	--name hobbang \
	-v $home/classification:/classification \
	-w /classification \
	tf_image

