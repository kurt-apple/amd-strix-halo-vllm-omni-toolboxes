import re
from pathlib import Path

utils_file = Path("/opt/venv/lib64/python3.13/site-packages/flash_attn/flash_attn_triton_amd/utils.py")
content = utils_file.read_text()

# Replace the get_arch function
old_func = r'@functools\.cache\ndef get_arch\(\) -> GpuArch:.*?return GpuArch\(name=name\)'
new_func = '''@functools.cache
def get_arch() -> GpuArch:
    """Get the current GPU architecture - patched for gfx1151."""
    return GpuArch(name="gfx1151", family="rdna")'''

content = re.sub(old_func, new_func, content, flags=re.DOTALL)
utils_file.write_text(content)
print("Patched flash_attn get_arch()")
