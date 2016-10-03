cp ../INPUT_DATA/SPECIES_TREE black_death_species_tree.nhx 

cp ../OUTPUT_MEGABLAST/MEGABLAST_Yersinia_pestis_pseutuberculosis_hits black_death_megablast_hits.txt

cp ../OUTPUT_FAMILIES/ancestral_content TMP1
echo @ >> TMP1
cat ../OUTPUT_FAMILIES/families_with_contig_names >> TMP1
awk 'BEGIN{S=1}{if($1=="@"){S++}else{if(S==1){MULT[$1]=$2}else{if(substr($1,1,1)==">"){printf("%s %d\n"1,MULT[$1])}else{print $0}}}}' TMP1 > black_death_homologous_markers_families.txt 
rm TMP1

cp ../OUTPUT_ANGES/WEIGHT/BLACK_DEATH_WACS black_death_adjacencies_common_intervals.txt

cp ../OUTPUT_LINEARIZATION/kept black_death_kept_adjacencies.txt
cp ../OUTPUT_LINEARIZATION/discarded black_death_discarded_adjacencies.txt

cp ../OUTPUT_CHROMOSOME/marker_sequence_corrected_1_undoubled black_death_markers_order.txt

cp ../OUTPUT_GAPS/gaps_ancestral_and_extant_with_lengths_intervals black_death_gaps.txt

cp ../OUTPUT_SEQUENCES/ALIGNMENTS/black_death_gaps_alignments.tar.gz .