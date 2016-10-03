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
    if l[0]==">" or len(l)<=2:
        output.write(l)
    else:
        l1=l.rstrip().split()
        marker=l1[0]
        gene=corresp[marker]
        output.write(l.rstrip()+"\t"+gene+"\n")
        
