#!/bin/bash
# Trigger: grapheme_bytes adjustCapacity
# Uses ZWJ emoji sequences (multi-codepoint characters)
ITER=${1:-100}
E="👨‍👩‍👧‍👦"  # 7 codepoints

echo "=== grapheme_bytes trigger ==="
for i in $(seq 1 $ITER); do
    printf '%s' "$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E"
    printf '%s\n' "$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E"
done
echo "Done: $ITER iterations"
