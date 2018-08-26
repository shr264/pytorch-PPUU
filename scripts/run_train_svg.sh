#!/bin/bash

for npred in 20; do 
    for bsize in 12; do 
        for u_reg in 0.0 0.1 0.5 1.0 2.0; do 
            for lambda_a in 0.0; do 
                for z_updates in 0; do 
                    for lrt_z in 0.0; do 
                        sbatch submit_train_svg.slurm $npred $u_reg $lrt_z $z_updates $bsize
                    done
                done
            done
        done
    done
done