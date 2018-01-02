tensorboard --port 22222 --logdir ./nmt/nmt_model/ &
python -m nmt.nmt \
    --src=en --tgt=pt \
    --vocab_prefix=./nmt/nmt_data/vocab  \
    --train_prefix=./nmt/nmt_data/train_data \
    --dev_prefix=./nmt/nmt_data/dev_data  \
    --test_prefix=./nmt/nmt_data/test_data \
    --out_dir=./nmt/nmt_model \
    --num_train_steps=12000 \
    --steps_per_stats=100 \
    --num_layers=2 \
    --num_units=128 \
    --dropout=0.2 \
    --metrics=bleu
