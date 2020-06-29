

```
docker build -t juliano.siloto/pytorch .

nvidia-docker run --rm -it -v \
    ${DATASET_PATH}:/imagenet \
    --name juliano  -p 8888:8888 \
    -v $PWD:/work  -w /work juliano.siloto/pytorch \
    jupyter notebook --allow-root --ip 0.0.0.0 --no-browser

``