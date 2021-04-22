# **cq-conda** Container Image

## How to build the image

```
docker build -t cq-conda .
```

## Usage


To run and create a new container for latter use:

```
docker run -v $PWD:/cadquery:z -itd cq-conda bash
```

## Normal use case

Given the script:

```python
# script.py

import cadquery as cq
from cadquery import exporters

cube = cq.Workplane().box(1, 1, 1)

exporters.export(cube, 'part.step')
```

To run it:

```
docker exec -i cq-conda python script.py
```
