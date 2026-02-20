from vllm_omni import AsyncOmni
import time

def main():
    print("Loading Qwen3-Omni...")
    start = time.time()

    llm = AsyncOmni(model='marksverdhei/Qwen3-Omni-30B-A3B-FP8')

    print(f"Model loaded in {time.time() - start:.2f}s")
    print("\nGenerating text...")

    output = llm.generate("What is artificial intelligence?")
    print(f"\nResult: {output}")

if __name__ == '__main__':
    main()
