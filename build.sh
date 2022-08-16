#!/bin/bash
mkdir -p build && \
	./run-mingw cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release -G Ninja && \
	./run-mingw cmake --build build --target bytecode_builtins_list_generator --parallel $(nproc) && \
	./run-mingw cmake --build build --parallel $(nproc) --verbose

#./run-linux cmake -S. -Blinux && \
#./run-linux cmake --build linux --target torque bytecode_builtins_list_generator mksnapshot --parallel $(nproc) && \
#cp -fvr linux/torque linux/bytecode_builtins_list_generator linux/mksnapshot build/ && \
