#!/bin/bash

sudo podman build --no-cache -t my-vllm-rocm . 2>&1 | tee build_podman.log
