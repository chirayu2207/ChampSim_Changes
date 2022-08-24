#!/bin/bash
filename='traces1.txt'

traces=("gcc_13B.trace.xz"  "gcc_39B.trace.xz" 
        "lbm_94B.trace.xz"
        "omnetpp_17B.trace.xz"
        "omnetpp_340B.trace.xz"
        "omnetpp_4B.trace.xz"
        "soplex_205B.trace.xz"
        "soplex_217B.trace.xz"
        "soplex_66B.trace.xz") 

l1i='no'
l1d='no'
l2c='spp_dev_design_2'
llc='no'
rep_policy='lru'

 ./build_champsim.sh bimodal $l1i $l1d $l2c $llc $rep_policy 4

for t in "${traces[@]}"
do
        now="$(date +"%T")"
        echo "$now"
        echo "$t"

        ./run_4core.sh bimodal-$l1i-$l1d-$l2c-$llc-$rep_policy-4core 50 50 0 $t $t $t $t          
        # ~/Downloads/champSim/run_champsim.sh bimodal-no-no-no-ppf-lru-1core 10 200 $t
	#~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-bip-ship-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-ppf-ship-1core 10 200 $f
	#~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-bip-drrip-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-ppf-drrip-1core 10 200 $f
	#~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-bip-srrip-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-ppf-srrip-1core 10 200 $f
done
