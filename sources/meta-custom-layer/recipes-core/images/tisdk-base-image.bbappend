# Custom layer: meta-custom-layer
# Extends tisdk-base-image to include CUnit unit testing framework

IMAGE_INSTALL:append = " \
    cunit \
    cunit-dev \
    testingorch \
"
