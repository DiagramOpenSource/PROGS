"""
Consulta API, peticiones GET desde Basico 
(carlos cortes, 14/06/2017)

Ejemplo de llamada
python peticiones_api.py http://192.168.10.48:8086 /myapi/sincro/ase/ ase0211 999001 /tmp/resultado.txt
"""
import sys
import urllib2
import os

parametros = sys.argv[1:]
if len(parametros) == 5:
    url_base = str(parametros[0])
    url_api = str(parametros[1])
    valor = str(parametros[2])
    numero_ini = str(parametros[3]) 
    fic_des = parametros[4]
    
    if os.path.isfile(fic_des):
        os.remove(fic_des)  
    
    ruta = url_base + url_api + valor + "/" + numero_ini + "/"
    ruta = ruta.replace("\\", "/")
    # print(ruta)
    try:
        res = urllib2.urlopen(ruta).read()
        f = open(fic_des, 'wb')
        f.write(res)
        f.close()
    except IOError, error:
        print error
        f = open(fic_des, 'wb')
        f.write("ERROR: %s" % str(error))
        f.write("\nRUTA: %s" % str(ruta))
        f.close
else:
    print "Error en parametros (%s) (%s)" % (len(parametros), parametros) 
