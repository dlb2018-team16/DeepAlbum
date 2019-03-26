# Simple MusicVAE Train Sample with 東方

## 前処理

> extract single track in midi

* [SMF track separator](http://gaha2.blog52.fc2.com/blog-entry-135.html)
* [pretty_midi¶](http://craffel.github.io/pretty-midi/)

> extract sequences and convert tfrecord

```
convert_dir_to_note_sequences --input_dir=/magenta-data/NeuralStyleTransfer/dataset/data_touhou/ --output_file=/magenta-data/NeuralStyleTransfer/dataset/touhou_notesequences.tfrecord --recursive
```

> train

```
#2bar
music_vae_train --config=cat-mel_2bar_small --run_dir=/tmp/vae/ --mode=train --examples_path=/magenta-data/NeuralStyleTransfer/dataset/touhou_1track_notesequences.tfrecord

#16bar
music_vae_train --config=hier-mel_16bar --run_dir=/tmp/vae/ --mode=train --examples_path=/magenta-data/NeuralStyleTransfer/dataset/touhou_notesequences.tfrecord

#16bar with your hyper params
music_vae_train --config=hier-mel_16bar --run_dir=/tmp/vae/ --mode=train --examples_path=/magenta-data/NeuralStyleTransfer/dataset/touhou_notesequences.tfrecord --hparams=e
nc_rnn_size=\[512\],dec_rnn_size=\[256\, 256\]
```
