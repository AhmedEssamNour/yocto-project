# Custom layer: meta-custom-updates
# Extends tisdk-base-image to include CUnit unit testing framework

IMAGE_INSTALL:append = " \
    cunit \
    cunit-dev \
"
