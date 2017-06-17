Docker images with all supported python versions
================================================

- https://hub.docker.com/r/piro/manypython_i686/
- https://hub.docker.com/r/piro/manypython_x86_64/

These images contain Python versions from 2.6 to 2.7 and from 3.2 to 3.6
compiled both in normal and debug mode.

The python installation are available under ``/opt/``, e.g. ``/opt/py27``,
``/opt/py35d``, etc.


Uploading the images
--------------------

If the images are modified they can be uploaded with::

    docker login
    docker -t manypython_i686 manypython_i686
    docker tag manypython_i686 piro/manypython_i686
    docker push piro/manypython_i686
