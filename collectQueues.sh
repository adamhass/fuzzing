# This script is to fetch AFL's queue folder from each pod to the output directory 
# Need to replace <PODNAME> with pods that are alive for this to work.
kubectl cp <PODNAME> /root/out/cat/queue/ ./output/cat/
kubectl cp <PODNAME> /root/out/date/queue/ ./output/date/
kubectl cp <PODNAME> /root/out/df/queue/ ./output/df/
kubectl cp <PODNAME> /root/out/echo/queue/ ./output/echo/
kubectl cp <PODNAME> /root/out/ln/queue/ ./output/ln/
kubectl cp <PODNAME> /root/out/mkdir/queue/ ./output/mkdir/
kubectl cp <PODNAME> /root/out/mv/queue/ ./output/mv/
kubectl cp <PODNAME> /root/out/pwd/queue/ ./output/pwd/
kubectl cp <PODNAME> /root/out/touch/queue/ ./output/touch/
kubectl cp <PODNAME> /root/out/uname/queue/ ./output/uname/
kubectl cp <PODNAME> /root/out/cp/queue/ ./output/cp/
kubectl cp <PODNAME> /root/out/dd/queue/ ./output/dd/
kubectl cp <PODNAME> /root/out/dir/queue/ ./output/dir/
kubectl cp <PODNAME> /root/out/false/queue/ ./output/false/
kubectl cp <PODNAME> /root/out/ls/queue/ ./output/ls/
kubectl cp <PODNAME> /root/out/mktemp/queue/ ./output/mktemp/
kubectl cp <PODNAME> /root/out/printf/queue/ ./output/printf/
kubectl cp <PODNAME> /root/out/sleep/queue/ ./output/sleep/
kubectl cp <PODNAME> /root/out/true/queue/ ./output/true/
kubectl cp <PODNAME> /root/out/vdir/queue/ ./output/vdir/