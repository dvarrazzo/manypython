Docker images with all supported python versions
================================================

- https://hub.docker.com/r/piro/manypython_i686/
- https://hub.docker.com/r/piro/manypython_x86_64/

These images contain Python versions 2.7 and from 3.4 to 3.7
compiled both in normal and debug mode.

The python installation are available under ``/opt/``, e.g. ``/opt/py27``,
``/opt/py35d``, etc.


Uploading the images
--------------------

If the images are modified they can be uploaded with::

    docker login
    docker build -f manypython_i686/Dockerfile -t piro/manypython_i686 .
    docker push piro/manypython_i686

    docker build -f manypython_x86_64/Dockerfile -t piro/manypython_x86_64 .
    docker push piro/manypython_x86_64
