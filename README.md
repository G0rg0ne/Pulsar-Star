# Pulsar-Star
Apply SVM to predict a Pulsar Star

## Docker
If you want to build the docker image run  : 

`docker build -t <image_name> .`


You can run the container using : 

`docker run -p 8888:8888 <image_name>`

Open the JupyterNotebook asscociated to the 8888 

Link : 
https://www.kaggle.com/code/prashant111/svm-classifier-tutorial

docker build -t pulsar_svm .

docker run -it --rm -v $(pwd):/workdir -p 8888:8888 pulsar_svm /bin/bash

jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root