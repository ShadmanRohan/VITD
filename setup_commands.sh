# 1. Create new directory structure
mkdir -p src/{data,models,utils}
mkdir -p experiments/{notebooks,configs}
mkdir -p saved_models/{banglabert,banglat5}/version_1
mkdir -p data/{raw,processed,augmented}
mkdir -p tests
mkdir -p docs

# 2. Move and reorganize data files
mv data/raw/* data/raw/
mv data/data_gen/train_data.csv data/processed/
mv data/data_gen/validation_data.csv data/processed/
mv data/data_gen/train_paraphrased.csv data/augmented/

# 3. Move model files
mv models/banglabert/configs/* saved_models/banglabert/version_1/
mv models/banglabert/checkpoints/* saved_models/banglabert/version_1/
mv models/banglat5/configs/* saved_models/banglat5/version_1/
mv models/banglat5/checkpoints/* saved_models/banglat5/version_1/

# 4. Move and rename notebooks
mv notebooks/TrainingBert.ipynb experiments/notebooks/bert_training.ipynb
mv notebooks/violence.ipynb experiments/notebooks/data_exploration.ipynb
mv notebooks/DataGen.ipynb experiments/notebooks/data_preparation.ipynb
mv notebooks/fasttext_classification.ipynb experiments/notebooks/model_evaluation.ipynb

# 5. Move and reorganize scripts
mv scripts/utils.py src/utils/helpers.py
mv scripts/train_model.py src/models/trainer.py

# 6. Create necessary new files
touch src/{data,models,utils}/__init__.py
touch src/data/{preprocessing.py,augmentation.py}
touch src/models/{model.py,inference.py}
touch src/utils/metrics.py
touch tests/{__init__.py,test_preprocessing.py,test_model.py}
touch docs/{setup.md,data_preparation.md,training.md}
touch requirements.txt setup.py

# 7. Clean up empty directories
rm -rf data/data_gen
rm -rf models
rm -rf notebooks
rm -rf scripts 