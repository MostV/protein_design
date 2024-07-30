#!/bin/bash

#adapted from Frenz, Brandon, Steven M. Lewis, Indigo King, Frank DiMaio, Hahnbeom Park, and Yifan Song. 2020. “Prediction of Protein Mutational Free Energy: Benchmark and Sampling Improvements Increase Classification Accuracy.” Frontiers in Bioengineering and Biotechnology 8 (October): 558247.

input="input.pdb" # replace with path to structure to relax

relax.mpi.linuxgccrelease \
-s $input \
-ignore_unrecognized_res   \ 
-out:file:scorefile cartrelax.sc  \
-relax:cartesian \
-score:weights ref2015_cart \ 
-relax:min_type lbfgs_armijo_nonmonotone \
-relax:script cart2.script \
-fa_max_dis 9.0  
