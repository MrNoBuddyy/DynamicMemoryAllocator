#!/bin/bash

TEST_DIR="TestCases"

# Step 1: Compile Java files
make
if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

# Step 2: Run all test cases
if [ "$1" == "all" ]; then
    for infile in "$TEST_DIR"/*.in; do
        filename=$(basename "$infile")
        outfile="${filename%.in}.out"
        echo "Running $filename..."
        java -cp . Driver < "$infile" > "$TEST_DIR/$outfile"
    done
    echo "All test cases executed."
    exit 0
fi

# Step 3: Interactive or specific input
if [ $# -eq 0 ]; then
    echo "Provide input on console"
    java -cp . Driver
    exit 0
fi

if [ $# -eq 1 ]; then
    java -cp . Driver < "$1"
    exit 0
fi

if [ $# -eq 2 ]; then
    java -cp . Driver < "$1" > "$2"
    exit 0
fi

# Fallback usage
echo "Usage:"
echo "  ./run.sh                  # Run interactively"
echo "  ./run.sh input.in         # Run with input file"
echo "  ./run.sh input.in out.txt # Run with input and save to output"
echo "  ./run.sh all              # Run all test cases in $TEST_DIR"
