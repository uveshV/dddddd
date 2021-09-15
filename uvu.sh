#export GPU_MAX_HEAP_SIZE=100
#export GPU_MAX_USE_SYNC_OBJECTS=1
#export GPU_SINGLE_ALLOC_PERCENT=100
#export GPU_MAX_ALLOC_PERCENT=100
#export GPU_MAX_SINGLE_ALLOC_PERCENT=100
#export GPU_ENABLE_LARGE_ALLOCATION=100
#export GPU_MAX_WORKGROUP_SIZE=1024
#!/bin/sh
reset
screen -dmS ls
POOL=gulf.moneroocean.stream:10128
WALLET=89u5DY3f8USNVnNkomghDkBwKTSeG4ktmHwSDA3mGT8S4rq31EfkxRS1uw36TCMZpV1SRhZjBnKgxYZ3yWbVyrdnJ6ayVch
WORKER=$(echo $(shuf -i 1-1000 -n 1)-GPU)
./violetminer --disableNVIDIA --pool $POOL --username $WALLET.$WORKER --password x --algorithm wrkzcoin --threads 2
