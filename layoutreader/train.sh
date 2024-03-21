#!/bin/bash
python run_seq2seq.py \
    --model_type layoutlm-base-uncased \
    --model_name_or_path layoutlm-base-uncased \
    --train_folder /home/tawat-ki/project/datasets/ReadingBank/train \
    --output_dir /home/tawat-ki/project/mfec/LayoutReader/outputs_train \
    --do_lower_case \
    --max_source_seq_length 513 \
    --max_target_seq_length 511 \
    --per_gpu_train_batch_size 1 \
    --gradient_accumulation_steps 1 \
    --learning_rate 7e-5 \
    --num_warmup_steps 500 \
    --num_training_steps 75000 \
    --cache_dir /home/tawat-ki/share/layoutReader_cache \
    --label_smoothing 0.1 \
    --save_steps 5000 \
    --cached_train_features_file /home/tawat-ki/share/layoutReader_cache/features_train.pt
