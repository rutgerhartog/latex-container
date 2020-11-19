#!/bin/sh

if [[ ${PLUGIN_COMPILER} == "pythontex" ]]; then
  pdflatex ${PLUGIN_FILENAME} && pythontex3 ${PLUGIN_FILENAME} && pdflatex ${PLUGIN_FILENAME}
elif [[ ${PLUGIN_COMPILER} == "pdflatex" ]]; then
  pdflatex ${PLUGIN_FILENAME}
elif [[ ${PLUGIN_COMPILER} == "lualatex" ]]; then
  lualatex ${PLUGIN_FILENAME}
elif [[ ${PLUGIN_COMPILER} == "xelatex"]]; then
  xelatex ${PLUGIN_FILENAME}
fi
