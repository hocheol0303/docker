# 이미지를 통해 도커 컨테이너 만드는 코드
# --gpus all: 모든 GPU를 할당
# -it: interactive 모드로 실행하며 터미널에 연결(in/out 연결)
# -e TZ=Asia/Seoul: 환경변수 TZ를 설정해서 시간대를 서울로 맞춤
# --name: 컨테이너 이름 지정
# -v [local path]: [container path]: local path와 container path를 연결
# -w: 컨테이너 시작될 때 들어갈 디렉터리
# tf_image: 사용할 Docker 이미지 이름(docker build한 이미지)
docker run --gpus all -dit \
	-e TZ=Asia/Seoul \
	--name detection \
	-v $home/detection:/detection \
	-w /detection \
	tf_image

