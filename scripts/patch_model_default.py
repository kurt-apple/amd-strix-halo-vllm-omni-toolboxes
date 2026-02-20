from pathlib import Path

model_py = Path("/opt/venv/lib64/python3.13/site-packages/vllm/config/model.py")
content = model_py.read_text()

# Replace the hardcoded default with env var lookup
old_line = '    model: str = "Qwen/Qwen3-0.6B"'
new_line = '    model: str = os.environ.get("VLLM_DEFAULT_MODEL", "Qwen/Qwen3-Omni-30B-A3B-Instruct")'

content = content.replace(old_line, new_line)

# Add os import at top if not present
if "import os" not in content.split('\n')[:50]:
    content = "import os\n" + content

model_py.write_text(content)
print("Patched model.py to use VLLM_DEFAULT_MODEL env var")
