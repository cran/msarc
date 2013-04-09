#!/usr/bin/python

import sys
import os

################################################################################

def loadSub(fn):
  fd = open(fn,"rU")
  fd.readline()
  ids = {}
  for line in fd:
    if line[0] == '\t':
      pass
    else:
      id = line.split()[0]
      ids[id] = id
  fd.close()
  return ids

################################################################################

mainFN,subFN,outFN = sys.argv[1:]

subIDs = loadSub(subFN)
sys.stderr.write("loaded %d Uniprot IDs to filter out from '%s'.\n" % (len(subIDs),subFN))
if os.path.exists(outFN):
  sys.stderr.write("Output file '%s' exists.  Will not overwrite.\n" % (outFN,))
  sys.exit(0)
outFD = open(outFN,"w")
mainFD = open(mainFN,"rU")
header = mainFD.readline()
outFD.write(header)
keeping = False
kept = 0
dropped = 0
for line in mainFD:
  if line[0] == '\t':
    if keeping:
      outFD.write(line)
  else:
    id = line.split()[0]
    if id in subIDs:
      keeping = False
      sys.stderr.write("Dropping %s\n" % (id,))
      dropped += 1
    else:
      outFD.write(line)
      keeping = True
      sys.stderr.write("Keeping %s\n" % (id,))
      kept += 1
mainFD.close()
outFD.close()
sys.stderr.write("Kept %d.  Dropped %d.\n" % (kept,dropped))
