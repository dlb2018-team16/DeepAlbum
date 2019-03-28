# {TBD} :thinking_face:

## What's about

We are Team 16 from Deep Learning JP Basic Course 2018,
You can listen to generated melodies like a "somebody song" by AI

* [https://soundcloud.com/yurufuwa/sets/deep-album](https://soundcloud.com/yurufuwa/sets/deep-album)
* [Survey & Experiment](https://github.com/dlb2018-team16/NeuralStyleTransfer/issues/1)

## Setup 

### Docker image for using GPUs with magenta
You can build docker image for using GPUs with magenta.

```
cd docker
docker build -t magenta-gpu:latest -f magenta-gpu.Dockerfile .

# run example
docker run -it --runtime=nvidia -it -p 6006:6006 -v /path/to/your/working/directory:/magenta-data magenta-gpu:latest
```
You need `nvidia-docker` to run docker container with GPU.


