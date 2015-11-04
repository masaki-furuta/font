#!/bin/bash -x

FNT=7x14
FDR=/usr/share/X11/fonts/misc

cp -v ${FDR}/${FNT}.pcf.gz .
gunzip ${FNT}.pcf.gz
pcf2bdf -o ${FNT}.bdf ${FNT}.pcf
gbdfed ${FNT}.bdf
bdftopcf -o ${FNT}.pcf ${FNT}.bdf
gzip ${FNT}.pcf
sudo mv -v ${FDR}/${FNT}.pcf.gz ${FDR}/${FNT}.pcf.gz-$(date +%F)
sudo cp -v ${FNT}.pcf.gz ${FDR}/${FNT}.pcf.gz
       
