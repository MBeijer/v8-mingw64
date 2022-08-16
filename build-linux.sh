#!/bin/bash
mkdir -p build-linux && \
	./run-linux cmake -S. -Bbuild-linux -DCMAKE_BUILD_TYPE=Release -G Ninja && \
	./run-linux cmake --build build-linux --parallel $(nproc) --verbose
#	./run-linux cmake --build build-linux --parallel $(nproc) --verbose

#./run-linux cmake -S. -Blinux && \
#./run-linux cmake --build linux --target torque bytecode_builtins_list_generator mksnapshot --parallel $(nproc) && \
#cp -fvr linux/torque linux/bytecode_builtins_list_generator linux/mksnapshot build/ && \
