#!/bin/bash
$R CMD INSTALL --build linux/VirFinder_1.1.tar.gz
cp bin/VirFinder_wrapper.R ${CONDA_PREFIX}/bin
