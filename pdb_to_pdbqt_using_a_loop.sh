#!/bin/bash
for p in {0..100}
 do
 /Users/mlhossen/Downloads/mgltools_1.5.7_MacOS-X/bin/pythonsh /Users/mlhossen/Downloads/mgltools_1.5.7_MacOS-X/MGLToolsPckgs/AutoDockTools/Utilities24/prepare_receptor4.py -r Receptors/${p}.pdb -o  Receptors/${p}.pdbqt
 done
