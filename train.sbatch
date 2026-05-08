#!/bin/bash
#SBATCH --job-name=mithun-frcnn
#SBATCH --partition=a100
#SBATCH --gres=gpu:a100:1
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --time=24:00:00
#SBATCH --output=logs/frcnn-%j.out
#SBATCH --error=logs/frcnn-%j.err

cd ~/assignment3
mkdir -p logs voc
module load python/anaconda3 cuda/11.8
source ~/envs/cv/bin/activate
python -u train/train_faster_rcnn.py --config config/voc.yaml
