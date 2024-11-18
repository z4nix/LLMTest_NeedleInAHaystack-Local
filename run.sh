#!/bin/bash

START=256
END=4096
STEP=256

MODEL_NAMES=(
  "model_default"
)

for MODEL_NAME in "${MODEL_NAMES[@]}"; do
  python3 -u run_needle_in_haystack.py --s_len $START --e_len $END \
      --model_name ~/LLMTest_NeedleInAHaystack-Local/models/${MODEL_NAME} \
      --attn_implementation eager \
      --step $STEP \
      --model_version ${MODEL_NAME}_${START}_${END}_${STEP}
done



