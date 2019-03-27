# Simple MusicVAE Train Sample with 東方

## setup magenta-gpu docker


```
 git clone https://github.com/dlb2018-team16/NeuralStyleTransfer
 cd NeuralStyleTransfer/docker/
 docker build -t magenta-gpu:latest -f magenta-gpu.Dockerfile .
 docker run --runtime=nvidia -it -v $PWD:/magenta-data magenta-gpu:latest /bin/bash
```

## prepare

> extract single track in midi

* [SMF track separator](http://gaha2.blog52.fc2.com/blog-entry-135.html)
* [pretty_midi¶](http://craffel.github.io/pretty-midi/)

> extract sequences and convert tfrecord from midi files in datasets

```
convert_dir_to_note_sequences --input_dir=/magenta-data/NeuralStyleTransfer/dataset/data_touhou/ --output_file=/magenta-data/NeuralStyleTransfer/dataset/touhou_notesequences.tfrecord --recursive
```

## train for melody generation

```
#2bar
music_vae_train --config=cat-mel_2bar_small --run_dir=/tmp/vae/ --mode=train --examples_path=/magenta-data/NeuralStyleTransfer/dataset/touhou_1track_notesequences.tfrecord

#16bar
music_vae_train --config=hier-mel_16bar --run_dir=/tmp/vae/ --mode=train --examples_path=/magenta-data/NeuralStyleTransfer/dataset/touhou_notesequences.tfrecord

#16bar with your hyper params
music_vae_train --config=hier-mel_16bar --run_dir=/tmp/vae --mode=train --examples_path=/magenta-data/NeuralStyleTransfer/dataset/touhou_notesequences.tfrecord --hparams=batch_size=32 --checkpoints_to_keep=5
```


## generate

you should create checkpoint_file by `model.ckpt` from `--run_dir`

```
music_vae_generate --config=hier-mel_16bar --checkpoint_file=/magenta-data/NeuralStyleTransfer/models/touhou_443_hier-mel_16bar.tar --mode=sample --num_outputs=5 --output_dir=/magenta-data
```
