#!/bin/bash
python decode_seq2seq.py \
    --model_type layoutlm \
    --tokenizer_name bert-base-uncased \
    --input_folder /home/tawat-ki/project/datasets/ReadingBank/test \
    --cached_feature_file /home/tawat-ki/project/datasets/ReadingBank/test/cache/features_train.pt \
    --output_file /home/tawat-ki/project/mfec/LayoutReader/outputs/test_decode \
    --split test \
    --do_lower_case \
    --model_path  /home/tawat-ki/project/mfec/LayoutReader/outputs/ckpt-75000 \
    --cache_dir /home/tawat-ki/project/datasets/ReadingBank/test/cache/ \
    --max_seq_length 1024 \
    --max_tgt_length 511 \
    --batch_size 1 \
    --beam_size 1 \
    --length_penalty 0 \
    --forbid_duplicate_ngrams \
    --mode s2s \
    --forbid_ignore_word "."

