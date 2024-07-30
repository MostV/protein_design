#!/bin/bash

#adapted from Frenz, Brandon, Steven M. Lewis, Indigo King, Frank DiMaio, Hahnbeom Park, and Yifan Song. 2020. “Prediction of Protein Mutational Free Energy: Benchmark and Sampling Improvements Increase Classification Accuracy.” Frontiers in Bioengineering and Biotechnology 8 (October): 558247.

input="relaxed_input.pdb" #replace with path to structure to mutate
mutfile="cart_ddg.mutfile"  #replace with path to mutation file

cartesian_ddg.mpi.linuxgccrelease \
-s $input_pdb   \
-ddg::mut_file $mutfile \
-out:path:all cartddg \
-ddg:iterations 10 \
-force_iterations false   \
-ddg::score_cutoff 1.0 \
-ddg::cartesian \
-ddg:bbnbrs 1  \
-fa_max_dis 9 \
-score:weights ref2015_cart  \
-overwrite
