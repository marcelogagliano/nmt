python -m nmt.nmt \
    --src=vi --tgt=en \
    --vocab_prefix=./nmt/nmt_data/vocab  \
    --train_prefix=./nmt/nmt_data/train \
    --dev_prefix=./nmt/nmt_data/tst2012  \
    --test_prefix=./nmt/nmt_data/tst2013 \
    --out_dir=./nmt/nmt_model \
    --num_train_steps=12000 \
    --steps_per_stats=100 \
    --num_layers=2 \
    --num_units=128 \
    --dropout=0.2 \
    --metrics=bleu
tensorboard --port 22222 --logdir ./nmt/nmt_model/
