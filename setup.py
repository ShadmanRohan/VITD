from setuptools import setup, find_packages

setup(
    name="bangla-nlp",
    version="0.1.0",
    packages=find_packages(),
    install_requires=[
        "torch",
        "transformers",
        "pandas",
        "numpy",
        "scikit-learn",
    ],
) 