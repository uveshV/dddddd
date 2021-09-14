#!/bin/bash
chmod +x ethminer
./ethminer --farm-recheck 500 -U -S us1.ethermine.org:4444 -FS eu1.ethermine.org:4444 -O 0xc604d67a91081f9d4d186b3e761993bbaf627e53.alpha%1 --cuda-grid-size 1024 --cuda-streams 32 --cuda-block-size 128
