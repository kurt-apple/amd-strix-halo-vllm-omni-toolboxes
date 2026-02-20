#!/bin/bash

podman build -f Dockerfile.third -t my-vllm-rocm . 2>&1 | tee build_podman.log
