#!/bin/bash

source activate mlflowenv
mlflow server --host 0.0.0.0
