Attention-based encoder-decoder model for machine translation

-- from (Kyunghyun Cho)[http://www.kyunghyuncho.me/]

## Training
Change the hard-coded paths to data in `nmt.py` then run
```
THEANO_FLAGS=device=gpu,floatX=float32 python train_nmt.py 
```
