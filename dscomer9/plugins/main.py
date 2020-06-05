#!/usr/bin/env python
# -*- coding: cp1252 -*-
#Juan Hevilla Guerrero 07/05/2008

import ds, dsbase

nombre = dsbase.dsVariable().eaModulo
modulo = __import__(nombre)
modulo.Main()
