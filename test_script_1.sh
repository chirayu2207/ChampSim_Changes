#!/bin/bash
filename='traces1.txt'
l='lru'
traces=("gcc_13B.trace.xz"  "gcc_39B.trace.xz" 
        "lbm_94B.trace.xz"
        "omnetpp_17B.trace.xz"
        "omnetpp_340B.trace.xz"
        "omnetpp_4B.trace.xz"
        "soplex_205B.trace.xz"
        "soplex_217B.trace.xz"
        "soplex_66B.trace.xz") 


# ./build_champsim.sh bimodal next_line ppf ppf next_line lru 1


# #~/btp2021/mithi_vamsi/ChampSim/build_champsim.sh bimodal no no no bip ship 1
# #~/btp2021/mithi_vamsi/ChampSim/build_champsim.sh bimodal no no no ppf ship 1
# #~/btp2021/mithi_vamsi/ChampSim/build_champsim.sh bimodal no no no bip drrip 1
# #~/btp2021/mithi_vamsi/ChampSim/build_champsim.sh bimodal no no no ppf drrip 1
# #~/btp2021/mithi_vamsi/ChampSim/build_champsim.sh bimodal no no no bip srrip 1
# #~/btp2021/mithi_vamsi/ChampSim/build_champsim.sh bimodal no no no ppf srrip 1
for t in "${traces[@]}"
do
        now="$(date +"%T")"
        echo "$now"
        echo "$t"
        ./run_champsim.sh bimodal-next_line-ppf-ppf-next_line-$l-1core 10 200 $t
        # ~/Downloads/champSim/run_champsim.sh bimodal-no-no-no-ppf-lru-1core 10 200 $t
	#~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-bip-ship-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-ppf-ship-1core 10 200 $f
	#~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-bip-drrip-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-ppf-drrip-1core 10 200 $f
	#~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-bip-srrip-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-ppf-srrip-1core 10 200 $f
done
