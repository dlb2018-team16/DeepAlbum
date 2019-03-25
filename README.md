# NeuralStyleTransfer

## Docker image for using GPUs with magenta
You can build docker image for using GPUs with magenta.
```
cd docker
docker build -t magenta-gpu:latest -f magenta-gpu.Dockerfile .

# run example
docker run -it --runtime=nvidia -it -p 6006:6006 -v /path/to/your/working/directory:/magenta-data magenta-gpu:latest
```
You need `nvidia-docker` to run docker container with GPU.
