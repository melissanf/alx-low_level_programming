#!/bin/bash

# Check if there are any .c files in the current directory
if ls *.c 1> /dev/null 2>&1; then
    # Compile all .c files into object files
    gcc -c -fPIC *.c

    # Create the dynamic library (liball.so) from the object files
    gcc -shared -o liball.so *.o

    # Clean up the temporary object files
    rm *.o

    echo "Dynamic library liball.so created successfully."
else
    echo "No .c files found in the current directory."
fi
