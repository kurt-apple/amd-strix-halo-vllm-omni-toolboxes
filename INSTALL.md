1. run scripts/install_stuff.sh once to pull large files with specific versions
2. podman build -f Dockerfile.first -t vllm-rocm-first . 2>&1 | tee build_first.log
3. podman build -f Dockerfile.second -t vllm-rocm-second . 2>&1 | tee build_second.log
4. podman build -f Dockerfile.third -t my-vllm-rocm . 2>&1 | tee build_podman.log
5. toolbox create vllm \
  --image localhost/my-vllm-rocm:latest \
  -- --device /dev/dri --device /dev/kfd \
  --group-add video --group-add render --security-opt seccomp=unconfined
