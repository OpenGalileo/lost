#!/bin/bash
make clean
make release LOST_DISABLE_ASAN=1 LOST_FLOAT_MODE=1 