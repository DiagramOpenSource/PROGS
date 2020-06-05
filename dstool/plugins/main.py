#!/usr/bin/env python
# -*- coding: cp1252 -*-
#Juan Hevilla Guerrero 07/05/2008

import os
import sys
import traceback
import ds
import dsbase

try:
    nombre = dsbase.dsVariable().eaModulo
    modulo = __import__(nombre)
    modulo.Main()
except:
    exc_type, exc_value, exc_traceback = sys.exc_info()
    exc = traceback.format_exception(exc_type, exc_value, exc_traceback)
    error = os.linesep.join(exc)
    f = open("err.log", "w")
    f.write(str(error))
    f.close()
