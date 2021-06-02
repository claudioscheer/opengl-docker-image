build:
	docker build -t claudioscheer/opengl-development .

run-glmark2:
	sudo xhost +local:root
	docker run \
		--rm \
		-it \
		--gpus all \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-e DISPLAY=${DISPLAY} \
		-e QT_X11_NO_MITSHM=1 \
		claudioscheer/opengl-development \
		glmark2

run-glxgears:
	sudo xhost +local:root
	docker run \
		--rm \
		-it \
		--gpus all \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-e DISPLAY=${DISPLAY} \
		-e QT_X11_NO_MITSHM=1 \
		claudioscheer/opengl-development \
		glxgears
