#!/bin/bash

sed -i "s/catdir(\$Bin, 'Scripts')/catfile(\$Bin)/g" wrapper_phage_contigs_sorter_iPlant.pl

# install
cd Scripts
make clean
make INCLUDE_DIRS="${CONDA_PREFIX}/include" LIBRARY_DIRS="${CONDA_PREFIX}/lib"

chmod +x *.pl Sliding_windows_3 ../wrapper_phage_contigs_sorter_iPlant.pl

cp *.pl ${CONDA_PERFIX}/bin/
cp Sliding_windows_3 ${CONDA_PREFIX}/bin/

cp ../wrapper_phage_contigs_sorter_iPlant.pl ${CONDA_PREFIX}/bin/

chmod +x ${RECIPE_DIR}/download-virsorter-db.sh
cp ${RECIPE_DIR}/download-virsorter-db.sh ${CONDA_PREFIX}/bin/

# create folder for database download
target=${CONDA_PREFIX}/share/${PKG_NAME}-${PKG_VERSION}
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
