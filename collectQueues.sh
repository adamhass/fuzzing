# This script is to fetch AFL's queue folder from each pod to the output directory 
# Need to replace ! with pods that are alive for this to work.
kubectl cp !:/root/out/cat/queue/ ./output/cat/
kubectl cp date-7989d4f58c-zfd5d:/root/out/date/queue/ ./output/date/
kubectl cp mkdir-8448d5f44f-vpxfm:/root/out/mkdir/queue/ ./output/mkdir/
kubectl cp touch-f8d47449-bg24s:/root/out/touch/queue/ ./output/touch/
kubectl cp !:/root/out/df/queue/ ./output/df/
kubectl cp !:/root/out/echo/queue/ ./output/echo/
kubectl cp !:/root/out/ln/queue/ ./output/ln/
kubectl cp !:/root/out/mv/queue/ ./output/mv/
kubectl cp !:/root/out/pwd/queue/ ./output/pwd/
kubectl cp !:/root/out/uname/queue/ ./output/uname/
kubectl cp !:/root/out/cp/queue/ ./output/cp/
kubectl cp !:/root/out/dd/queue/ ./output/dd/
kubectl cp !:/root/out/dir/queue/ ./output/dir/
kubectl cp !:/root/out/false/queue/ ./output/false/
kubectl cp !:/root/out/ls/queue/ ./output/ls/
kubectl cp !:/root/out/mktemp/queue/ ./output/mktemp/
kubectl cp !:/root/out/printf/queue/ ./output/printf/
kubectl cp !:/root/out/sleep/queue/ ./output/sleep/
kubectl cp !:/root/out/true/queue/ ./output/true/
kubectl cp !:/root/out/vdir/queue/ ./output/vdir/