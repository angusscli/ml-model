TRAIN_FILE=model_data/data.csv
EVAL_FILE=model_data/test.csv

export TRAIN_STEPS=1000
DATE=`date '+%Y%m%d_%H%M%S'`
export OUTPUT_DIR=model_$DATE
rm -rf $OUTPUT_DIR

python -m trainer.task --train-files $TRAIN_FILE \
                       --eval-files $EVAL_FILE \
                       --job-dir $OUTPUT_DIR \
                       --train-steps $TRAIN_STEPS \
                       --eval-steps 100
