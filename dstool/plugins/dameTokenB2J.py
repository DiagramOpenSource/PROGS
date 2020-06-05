'''
dameTokenB2J.py

(carlos cortes, 22.01.2020 )

Ejemplo de llamada:
python dameTokenB2J.py http://192.168.10.48:8081/api/v2/geconet/login/ "carlosc@diagram.es" "CLAVEULTRASECRETA" "021_1" null /tmp/resultadoxxxxx.txt

'''
import json
import urllib
import urllib2
import sys
import os

parametros = sys.argv[1:]
if len(parametros) == 6:
    url = str(parametros[0])
    email = str(parametros[1])
    password = str(parametros[2])
    idacceso = str(parametros[3]) 
    codempresa = str(parametros[4]) 
    fic_des = parametros[5]

    data={
        "email": email,
        "password": password,
        "id_acceso": idacceso,
    }

    if codempresa != "null":
        data["codigo_empresa"] = codempresa


    if os.path.isfile(fic_des):
        os.remove(fic_des)  

    try:
        params = urllib.urlencode(data)
        response = urllib2.urlopen(url, params)
        json_response = json.loads(response.read())
        f = open(fic_des, 'wb')
        f.write(json_response.get('mensaje'))
        f.close()
    except IOError, error:
        # print error
        f = open(fic_des, 'wb')
        f.write("Error: %s" % str(error))
        f.close
else:
    print "Error en parametros (%s) (%s)" % (len(parametros), parametros) 
