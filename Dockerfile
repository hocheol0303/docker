# 베이스 이미지를 tensorflow 2.15 GPU 버전으로 설정
FROM tensorflow/tensorflow:2.15.0-gpu

# 시간대 설정
ENV TZ=Asia/Seoul

# 패키지 설치
# libgl1은 cv2에 필요한 라이브러리
RUN apt update && apt install -y libgl1 git tzdata && \
	ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
	apt clean && rm -rf /var/lib/apt/lists/* && \
	pip install matplotlib pandas scikit-learn opencv-python && \
	pip install notebook ipykernel mediapipe nvitop wandb

# 작업 디렉토리 설정
WORKDIR /tf

# 호스트의 파일을 컨테이너에 복사하고 싶을 때 (선택)
# COPY ./my_script.py .

# 기본 실행 명령어 (선택)
# CMD ["python", "my_script.py"]

