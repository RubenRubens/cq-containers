# **cq-cli** Container Image

This image is based on centos and cq-cli. For further information about cq-cli, please checkout
the [project repo](https://github.com/CadQuery/cq-cli).

## How to build the image

```
cd cq-cli
docker build -t cq-cli .
```

## Usage

```
docker run --rm -v $PWD:/cadquery:z -i cq-cli [args]
```

For example, to get help:

```
docker run --rm -v $PWD:/cadquery:z -i cq-cli --help
```

## Normal use case

Given the script:

```python
# script.py
import cadquery as cq
cube = cq.Workplane().box(1, 1, 1)
show_object(cube)
```

Running the script and exporting the geometry to a step file:

```
docker run --rm -v $PWD:/cadquery:z -i cq-cli --codec step --infile script.py --outfile part.step
```
