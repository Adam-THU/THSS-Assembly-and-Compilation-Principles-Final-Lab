#!/bin/bash
set -euo pipefail
cd /mnt/d/Pycharm/thss-2025-compiler/github-compiler 2>/dev/null || cd /mnt/host/d/Pycharm/thss-2025-compiler/github-compiler

echo "=== Ubuntu 22.04 Failed Tests Analysis ==="
echo ""

for n in 71 88; do
    echo "=========================================="
    echo "Test $n: $(ls test/resources/functional/${n}_*.sy | xargs basename -s .sy)"
    echo "=========================================="
    
    # Compile
    sy_file=$(ls test/resources/functional/${n}_*.sy)
    in_file=$(ls test/resources/functional/${n}_*.in 2>/dev/null || echo "/dev/null")
    out_file=$(ls test/resources/functional/${n}_*.out)
    
    echo "[1] Compiling..."
    timeout 10s ./build/compiler "$sy_file" "/tmp/test_${n}.ll" 2>&1 | head -10 || echo "Compile timeout/error: $?"
    
    echo "[2] Linking..."
    clang "/tmp/test_${n}.ll" test/resources/libsysy_x86.a -o "/tmp/test_${n}" 2>&1 | head -10 || echo "Link error: $?"
    
    echo "[3] Running..."
    timeout 10s "/tmp/test_${n}" < "$in_file" > "/tmp/test_${n}.output" 2>&1
    exit_code=$?
    echo "Exit code: $exit_code"
    
    echo "[4] Output diff (first 40 lines):"
    diff -u "$out_file" "/tmp/test_${n}.output" | head -40 || echo "No diff or diff failed"
    
    echo ""
done

echo "=== Summary ==="
echo "Check /tmp/test_71.ll and /tmp/test_88.ll for generated IR"

