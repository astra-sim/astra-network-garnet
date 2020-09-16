#! /bin/bash
#comment
current_row=-1
tot_stat_row=1
mypath="../astra_results/$1-a2a"
rm -rf $mypath
mkdir $mypath
filename="sample-torus"
../build/Garnet_standalone/gem5.opt ../configs/example/garnet_synth_traffic.py \
--num-passes=2 \
--net=sample_a2a_net \
--sys=sys_inputs/sample_a2a_sys \
--workload=workload_inputs/DLRM_HybridParallel \
--compute-scale=1.0 \
--comm-scale=1.0 \
--path="$mypath/" \
--total-stat-rows=1 \
--stat-row=0 \
--run-name="$filename" \
--synthetic=training
