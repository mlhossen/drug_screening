#!/usr/bin/perl

### Read top ligands from scoresort.txt file ################
#open(TOP, "scoresort.txt") or die "Can't open file \n";
#open(my $outf, '>', 'topligands.txt');
#while (<TOP>){
#    #if(1..10){print substr($_,7,-4), "\n";}
#    if(1..10){print $outf substr($_,8,-5), "\n";}
#}
#close(TOP);
#close outf;
##########################################################################
# Alternatively run the following:
# perl -lane 'if($i<1000){print substr($F[1], 0, -4); $i++}' scoresort.txt >topligands.txtxxxs 
###########################################################################

for $i(1..3) {
	$numligand=0;
	$outp = "_$i.pdbqt";
	$outl = "_$i.log";
   
	$liglist="babel-ligands-pdbqt/ligands.txt";
    	open(IN, "$liglist") or die;

    	while(<IN>){
	 	s/\n+//gm; 
		push (@code, $_);
		print "Reading ligand $_ for receptor $i.pdbqt \n";
		`./vina --receptor Receptor/$i.pdbqt --config config.txt --ligand babel-ligands-pdbqt/$_ --out "Output/$_$outp" --log "Logs/$_$outl" `;
		$numligand++;
		}
	#$i++;
	close(IN);
	print "Screened $numligand ligands for receptor $i.pdbqt \n";
}

print "Screening is Done! =] \n";


