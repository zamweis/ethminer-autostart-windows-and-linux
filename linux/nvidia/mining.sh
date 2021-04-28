#!/bin/bash

# set maximum power consumption (settings for RTX 2070 super)
sudo nvidia-smi -pl 107.5

# hide GreenWithEnvy
# used for overclocking nvidia gpus
gwe --hide-window 2>&1 &

# start ethminer
while (true) do
    # add own address and worker name
    /opt/ethminer/ethminer -U -R -P stratum://0x6DFcFe20565729f9Db800bc7342b62B3D2eC864B.lazy-reader@eu1.ethermine.org:4444
    # wait before restarting ethminer
    sleep 4
done