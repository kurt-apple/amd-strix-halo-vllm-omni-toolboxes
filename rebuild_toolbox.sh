#!/bin/bash

toolbox rm vllm
toolbox create vllm --image localhost/my-vllm-rocm:latest -- --device /dev/dri --device /dev/kfd --group-add video --group-add render --security-opt seccomp=unconfined
