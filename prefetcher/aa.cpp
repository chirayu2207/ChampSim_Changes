//
// Data Prefetching Championship Simulator 2
// Seth Pugsley, seth.h.pugsley@intel.com
//

/*
 * #002 Lookahead Prefetching with Signature Path
 *
 * Jinchun Kim, cienlux@tamu.edu
 * Paul V. Gratz, pgratz@gratz1.com
 * A. L. Narasimha Reddy, reddy@tamu.edu
 * Department of Electrical and Computer Engineering
 * Texas A&M University
 *
 * Compile command: g++ -Wall -o dpc2sim example_prefetchers/002_kim.cpp lib/dpc2sim.a
 * 
 * NOTE: Use #define DEBUG to print out detailed info
 */

#include "cache.h"

void l2c_prefetcher_initialize()
{
   
}

uint32_t l2c_prefetcher_operate(uint64_t addr, uint64_t ip, uint8_t cache_hit, uint8_t type, uint32_t metadata_in)
{
    
}

uint32_t l2c_prefetcher_cache_fill(uint64_t addr, uint32_t set, uint32_t way, uint8_t prefetch, uint64_t evicted_addr, uint32_t metadata_in)
{
}



void l2c_prefetcher_final_stats()
{
}
