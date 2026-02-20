# Full
#SNAPSHOT=~/.cache/huggingface/hub/models--Qwen--Qwen3-Omni-30B-A3B-Instruct/snapshots/26291f793822fb6be9555850f06dfe95f2d7e695
#VLLM_DEFAULT_MODEL='Qwen/Qwen3-Omni-30B-A3B-Instruct'
#VLLM_CUSTOM_STAGE=qwen3_omni.yaml
# 4bit awq
#SNAPSHOT=~/.cache/huggingface/hub/models--cyankiwi--Qwen3-Omni-30B-A3B-Instruct-AWQ-4bit/snapshots/d3eff4697642fafd0f01641ddb84b8ce45c0601d
#VLLM_DEFAULT_MODEL='cyankiwi/Qwen3-Omni-30B-A3B-Instruct-AWQ-4bit'
#VLLM_CUSTOM_STAGE=qwen3_omni.yaml
# 8bit awq
#SNAPSHOT=~/.cache/huggingface/hub/models--cyankiwi--Qwen3-Omni-30B-A3B-Instruct-AWQ-8bit/snapshots/5cbd2cc4f16ca62613e218997e1d03399a506d10
#VLLM_DEFAULT_MODEL='cyankiwi/Qwen3-Omni-30B-A3B-Instruct-AWQ-8bit'
#VLLM_CUSTOM_STAGE=qwen3_omni.yaml
# Qwen2.5 Omni
SNAPSHOT=~/.cache/huggingface/hub/models--Qwen--Qwen2.5-Omni-7B/snapshots/ae9e1690543ffd5c0221dc27f79834d0294cba0009
VLLM_DEFAULT_MODEL='Qwen/Qwen2.5-Omni-7B'
VLLM_CUSTOM_STAGE=qwen2.5.yaml
# not sure this did anything :(
export MIOPEN_DEBUG_GEMM_WORKSPACE_SIZE=536870912
# vllm serve --omni --port 8091 --stage-configs-path $VLLM_CUSTOM_STAGE --model $SNAPSHOT
vllm serve --omni --port 8091 --stage-configs-path $VLLM_CUSTOM_STAGE --model $VLLM_DEFAULT_MODEL &
#python gradio_demo.py --model Qwen/Qwen2.5-Omni-7B --api-base http://localhost:8091/v1 --port 7861 --share
