#!/bin/bash
filename='traces1.txt'

traces_1=("gcc_13B.trace.xz"  "gcc_39B.trace.xz" 
        "lbm_94B.trace.xz"
        "omnetpp_17B.trace.xz"
        "omnetpp_340B.trace.xz"
        "omnetpp_4B.trace.xz"
        "soplex_205B.trace.xz"
        "soplex_217B.trace.xz"
        "soplex_66B.trace.xz") 

traces_2=("gcc_39B.trace.xz" 
        "lbm_94B.trace.xz"
        "omnetpp_17B.trace.xz"
        "omnetpp_340B.trace.xz"
        "omnetpp_4B.trace.xz"
        "soplex_205B.trace.xz"
        "soplex_217B.trace.xz"
        "soplex_66B.trace.xz" "gcc_13B.trace.xz") 

traces_3=("lbm_94B.trace.xz"
        "omnetpp_17B.trace.xz"
        "omnetpp_340B.trace.xz"
        "omnetpp_4B.trace.xz"
        "soplex_205B.trace.xz"
        "soplex_217B.trace.xz"
        "soplex_66B.trace.xz" "gcc_13B.trace.xz"  "gcc_39B.trace.xz" ) 

traces_4=("omnetpp_17B.trace.xz"
        "omnetpp_340B.trace.xz"
        "omnetpp_4B.trace.xz"
        "soplex_205B.trace.xz"
        "soplex_217B.trace.xz"
        "soplex_66B.trace.xz" "gcc_13B.trace.xz"  "gcc_39B.trace.xz" 
        "lbm_94B.trace.xz") 

l1i='no'
l1d='no'
l2c='spp_dev_design3'
llc='no'
rep_policy='lru'

 ./build_champsim.sh bimodal $l1i $l1d $l2c $llc $rep_policy 4



# #~/btp2021/mithi_vamsi/ChampSim/build_champsim.sh bimodal no no no ppf srrip 1
for i in ${!traces_1[@]}; 
  
do
        now="$(date +"%T")"
        echo "$now"
        echo "element $i in traces_1 is ${traces_1[$i]}"
        echo "element $i in traces_2 is ${traces_2[$i]}"
        echo "element $i in traces_3 is ${traces_3[$i]}"
        echo "element $i in traces_4 is ${traces_4[$i]}"

        ./run_4core.sh bimodal-$l1i-$l1d-$l2c-$llc-$rep_policy-4core 100 50 0 ${traces_1[$i]} ${traces_2[$i]} ${traces_3[$i]} ${traces_4[$i]}          
        # ~/Downloads/champSim/run_champsim.sh bimodal-no-no-no-ppf-lru-1core 10 200 $t
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-bip-ship-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-ppf-ship-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-bip-drrip-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-ppf-drrip-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-bip-srrip-1core 10 200 $f
        #~/btp2021/mithi_vamsi/ChampSim/run_champsim.sh bimodal-no-no-no-ppf-srrip-1core 10 200 $f
done
