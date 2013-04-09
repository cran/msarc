#!/usr/local/bin/python

import sys

protein_fields = ["Accession","Description","Score","Coverage",
                  "# Unique Peptides","# Proteins","# Peptides",
                  "Area","Heavy/Light","Heavy/Light Variability [%]"]

peptide_fields = ["Confidence Icon","IonScore","Exp Value","Charge","_M [ppm]",
                  "A2","Sequence","Area","Heavy/Light",
                  "Heavy/Light Variability [%]"]

################################################################################

def names2cols(names,line):
  flds = line.rstrip().split('\t')
  keep = []
  col = 0
  for f in flds:
    if f in names:
      keep.append(col)
    col += 1
  return keep

def printByCol(cols,line,isPep,out):
  flds = line.split('\t')
  dump = []
  for c in cols:
    dump.append(flds[c])
  oline = "\t".join(dump)
  if (isPep):
    oline = "\t" + oline
  out.write("%s\n" % (oline,))
  
################################################################################

(inFN,outFN) = sys.argv[1:]
inFD = open(inFN,"rU")
outFD = open(outFN,"w")

protein_header = inFD.readline()
peptide_header = None
protein_cols = names2cols(protein_fields,protein_header)
printByCol(protein_cols,protein_header,False,outFD)

for line in inFD:
  if line[0] == '\t': # it's a peptide
    if peptide_header == None:
      peptide_header = line
      peptide_cols = names2cols(peptide_fields,peptide_header)
      printByCol(peptide_cols,peptide_header,True,outFD)
    else:
      printByCol(peptide_cols,line,True,outFD)
  else: # it's a protein
    printByCol(protein_cols,line,False,outFD)
inFD.close()
outFD.close()
