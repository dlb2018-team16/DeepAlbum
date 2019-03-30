# Deep Album

We are Team 16 from Deep Learning JP Basic Course 2018,
You can listen to composed melodies like a "somebody song" by AI

* [https://soundcloud.com/yurufuwa/sets/deep-album](https://soundcloud.com/yurufuwa/sets/deep-album)
* [Poster Presentation [PDF]](https://github.com/dlb2018-team16/DeepAlbum/blob/master/Team16%20Poster.pdf)
* [Survey & Experiment](https://github.com/dlb2018-team16/NeuralStyleTransfer/issues/1)

![](https://i1.sndcdn.com/artworks-000512079066-m9zut3-t500x500.jpg)

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


