## This is the fabric8 hawtio-kubernetes console builder image

This image is used as a [Custom OpenShift Builder](https://github.com/openshift/origin/blob/master/docs/builds.md#custom-builds) to generate the console's gulp site, build and push to a private docker registry.

In order to generate the site, [npm](https://www.npmjs.com/) and [gulp](http://gulpjs.com/) are installed inside the image.