#!/bin/bash
jupyter notebook --no-browser --NotebookApp.allow_origin=$(gp url 8888)
