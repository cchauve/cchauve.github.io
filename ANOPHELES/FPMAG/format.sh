echo Gambia_RU
cp Gambia_RU_MAP Gambia_RU_MAP_save
sed 's/marker/gene/g' Gambia_RU_MAP > MAP_1
python add_gene_names.py Gambia_RU_FAMILIES MAP_1 MAP_2
cp MAP_2 Gambia_RU_MAP

echo Gambia_AR
cp Gambia_AR_MAP Gambia_AR_MAP_save
sed 's/marker/gene/g' Gambia_AR_MAP > MAP_1
python add_gene_names.py Gambia_AR_FAMILIES MAP_1 MAP_2
cp MAP_2 Gambia_AR_MAP

echo Gambia_ARU
cp Gambia_ARU_MAP Gambia_ARU_MAP_save
sed 's/marker/gene/g' Gambia_ARU_MAP > MAP_1
python add_gene_names.py Gambia_ARU_FAMILIES MAP_1 MAP_2
cp MAP_2 Gambia_ARU_MAP

echo Cellia_IARU
cp Cellia_IARU_MAP Cellia_IARU_MAP_save
sed 's/marker/gene/g' Cellia_IARU_MAP > MAP_1
python add_gene_names.py Cellia_IARU_FAMILIES MAP_1 MAP_2
cp MAP_2 Cellia_IARU_MAP

echo Anophelinae_LIARU
cp Anophelinae_LIARU_MAP Anophelinae_LIARU_MAP_save
sed 's/marker/gene/g' Anophelinae_LIARU_MAP > MAP_1
python add_gene_names.py Anophelinae_LIARU_FAMILIES MAP_1 MAP_2
cp MAP_2 Anophelinae_LIARU_MAP