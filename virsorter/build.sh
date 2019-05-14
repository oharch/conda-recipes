#!/bin/bash

sed -i 's%catdir($Bin, \'Scripts\')%catfile($Bin)%g' wrapper_phage_contigs_sorter_iPlant.pl

# install
cd Scripts
make clean
make INCLUDE_DIRS="$PREFIX/include" LIBRARY_DIRS="$PREFIX/lib"

chmod +x *.pl Sliding_windows_3 ../Scripts/wrapper_phage_contigs_sorter_iPlant.pl

cp *.pl ${PERFIX}/bin/
cp Sliding_windows_3 ${PREFIX}/bin/

cp ../Scripts/wrapper_phage_contigs_sorter_iPlant.pl ${PREFIX}/bin/

chmod +x ${RECIPE_DIR}/download-virsorter-db.sh
cp ${RECIPE_DIR}/download-virsorter-db.sh ${PREFIX}/bin/

# create folder for database download
target=${PREFIX}/share/${PKG_NAME}-${PKG_VERSION}
mkdir -p ${target}/db/
touch ${target}/db/.empty

## set VirSorter DB PATH variable on activation
#mkdir -p ${PREFIX}/etc/conda/activate.d ${PREFIX}/etc/conda/deactivate.d
#cat <<EOF >> ${PREFIX}/etc/conda/activate.d/virsorter.sh
#export VIRSORTER_DATA_PATH=${target}/db/
#EOF
#cat <<EOF >> ${PREFIX}/etc/conda/deactivate.d/virsorter.sh
#unset VIRSORTER_DATA_PATH
#EOF
