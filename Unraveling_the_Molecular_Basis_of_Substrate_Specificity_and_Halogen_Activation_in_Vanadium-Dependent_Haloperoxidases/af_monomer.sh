#!/bin/bash

run_alphafold.py \ 
--max_template_date=2020-05-14 \ 
--fasta_paths=input.fasta \ 
--model_preset=monomer \ 
--use_gpu_relax=True 
