"""
Obtiene la conversion en base64 del fichero indicado
Normalmente se utilizara como origen un pdf

uso: file2base64  fichero_origen fichero_destino

(carlos cortes, 06.06.2018 )
"""
import base64
import sys

def convert_to_base64(path):
    encoded_string = "ERROR"
    with open(path, "rb") as invoice_file:
        encoded_string = base64.b64encode(invoice_file.read())
    return encoded_string

parametros = sys.argv[1:]
if len(parametros) == 2:
    fic_ori = parametros[0]
    fic_des = parametros[1]
    try:
        fichero64 = convert_to_base64(fic_ori)
        f = open(fic_des, 'wb')
        f.write(fichero64)
        f.close()
    except IOError, error:
        print error
else:
    print "Error en parametros \n Uso: file2base64 fichero_origen fichero_destino"
