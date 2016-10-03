import sys

fpmag_file=open(sys.argv[1],"r").readlines()
corresp={}
for l in fpmag_file:
    if l[0]!=">" and len(l)>2:
        l1=l.rstrip().split()
        marker=l1[0]
        gene=l1[2]
        corresp[marker]=gene

anges_file=open(sys.argv[2],"r").readlines()
output=open(sys.argv[3],"w")
for l in anges_file:
    if l[0]==">" or l[0]=='g' or l[0]=='#':
        output.write(l)
        if l[0]=='g' and l[1]=='e':
            gene_bool=1
            gap_bool=0
        elif l[0]=='g' and l[1]=='a':
            gene_bool=0
            gap_bool=1
        else:
            gene_bool=0
            gap_bool=0
    elif gene_bool==1:
        l1=l.rstrip().split()
        marker=l1[0]
        coord1=int(marker.split(':')[1].split('-')[0])
        coord2=int(marker.split(':')[1].split('-')[1])
        marker=marker.split(':')[0]+":"+str(coord1)+"-"+str(coord2)
        gene=corresp[marker]
        output.write(l.rstrip()+"\t"+gene+"\n")
    elif gap_bool==1:
        output.write(l)
        
#AARA.KB704440:3579788-3579792 - AARA008981
