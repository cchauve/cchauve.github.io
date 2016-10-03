cp $1/results_$2/contigs/ancient_extant_hits                  black_death_megablast_hits.txt
cp $1/results_$2/contigs/families_with_contig_names           black_death_homologous_markers_families.txt
cp $1/results_$2/scaffold/adjacencies_weighted                black_death_adjacencies.txt
cp $1/results_$2/scaffold/repeat_spanning_intervals_weighted  black_death_repeat_spanning_intervals.txt
cp $1/results_$2/scaffold/adjacencies_kept                    black_death_kept_adjacencies.txt
cp $1/results_$2/scaffold/adjacencies_discarded               black_death_discarded_adjacencies.txt
cp $1/results_$2/scaffold/repeat_spanning_intervals_kept      black_death_kept_repeat_spanning_intervals.txt
cp $1/results_$2/scaffold/repeat_spanning_intervals_disc      black_death_discarded_repeat_spanning_intervals.txt
cp $1/results_$2/scaffold/scaffold_order                      black_death_markers_order.txt
cp $1/results_$2/scaffold/adjacencies_CARS_chosen             black_death_outgroup_adjacencies.txt
cp $1/results_$2/scaffold/gaps_coordinates_and_length         black_death_gaps.txt
tar cf black_death_gaps_alignments.tar $1/results_$2/finishing/alignments/*muscle $1/results_$2/finishing/alignments/*ancestral
gzip black_death_gaps_alignments.tar
cp $1/results_$2/finishing/ancestral_sequence_CARS_combined.fasta black_death_DNA_sequence.fa
gzip black_death_DNA_sequence.fa
cp $1/results_$2/finishing/ancestral_sequence_map_CARS_combined   black_death_DNA_sequence_map
cp $1/results_$2/annotation/basys.gb                              black_death_ancestral_sequence_annotation_Basys.gbk
