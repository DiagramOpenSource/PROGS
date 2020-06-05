#!/bin/sh

basico="/u/basico"
carpeta=$1          # Ejemplo: /u/ase0211
documento=$2        # Ejemplo: 187

$basico/bin/serverds @$carpeta "/!:dsarchi/dpntz003;$documento" >>despabox.log 2>>despabox.err
