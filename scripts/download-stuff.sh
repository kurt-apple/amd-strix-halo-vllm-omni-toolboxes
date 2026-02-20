#!/bin/bash
cd ..
mkdir deps
cd deps
git clone --depth=1 --branch v3.6.0 --progress git@github.com:triton-lang/triton.git triton
# tar czf triton-v3.6.0.tar.gz triton/

mkdir torch_wheels
cd torch_wheels
curl https://rocm.nightlies.amd.com/v2-staging/gfx1151/torch-2.11.0a0%2Brocm7.12.0a20260211-cp313-cp313-linux_x86_64.whl -O torch-2.11.0a0+rocm7.12.0a20260211-cp313-cp313-linux_x86_64.whl
curl https://rocm.nightlies.amd.com/v2-staging/gfx1151/torchaudio-2.11.0a0%2Brocm7.12.0a20260211-cp313-cp313-linux_x86_64.whl -O torchaudio-2.11.0a0+rocm7.12.0a20260211-cp313-cp313-linux_x86_64.whl
curl https://rocm.nightlies.amd.com/v2-staging/gfx1151/torchvision-0.26.0a0%2Brocm7.12.0a20260211-cp313-cp313-linux_x86_64.whl -O torchvision-0.26.0a0+rocm7.12.0a20260211-cp313-cp313-linux_x86_64.whl
cd ..

