#!/bin/bash

input="input.pdb" #replace with path to structure to relax
rosetta_scripts.mpi.linuxgccrelease @relax_options -in:file:s $input


