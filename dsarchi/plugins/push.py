# -*- coding: utf-8 -*-

"""
Enviador PUSH (jue ene 21 12:25:30 CET 2016)
@author: Edgar Miró Monleón
"""

import json
import argparse
import sys
import os

API_KEY = "AIzaSyAncCYfiwFCd6Mplz33kTNXAACQjUFtzt4"
GCM_URL = "android.googleapis.com"
DEBUG = False


def send(identificador, notification, output):
    if output:
        delete_output_file(output)

    conn = get_connection()

    topic = "/topics/" + identificador

    payload = {
        "to": topic,
        "priority": "high",
        "notification" : notification
    }

    headers = {
        'authorization': "key=" + API_KEY,
        'content-type': "application/json"
    }

    if DEBUG:
        print(json.dumps(payload, ensure_ascii=False))
        return

    conn.request("POST", "/gcm/send", json.dumps(payload, ensure_ascii=False), headers)

    res = conn.getresponse()
    data = res.read()

    if output:
        save_file(output, data)
    else:
        print(data.decode("utf-8"))


def get_connection():
    if (sys.version_info >= (3, 0)):
        # Python 3 code in this block
        import http.client
        return http.client.HTTPSConnection(GCM_URL)
    else:
        # Python 2 code in this block
        import httplib
        return httplib.HTTPSConnection(GCM_URL)


def delete_output_file(output):
    try:
        os.remove(output)
    except OSError:
        print("ERROR al eliminar el archivo: " + output)


def save_file(output, data):
    file = open(output, "w")
    file.write(data.decode("utf-8"))
    file.close()


def procesar(args):
    tipo = args["tipo"]
    carpeta = args["carpeta"]
    usuario = args["usuario"]
    asesoria = args["asesoria"]
    output = args["output"]
    mensaje = args["mensaje"]
    documentos = args["documentos"]
    encode = args["encode"]

    if tipo == "documentos":
        if not carpeta:
            parser.error('Tiene que especificar la carpeta.')
            return

        if not usuario:
            parser.error('Tiene que especificar el usuario.')
            return

        if not asesoria:
            parser.error('Tiene que especificar la asesoria.')
            return

        if not documentos:
            parser.error('Tiene que especificar los documentos.')
            return

        topic = carpeta + "_" + usuario
        title = codificacion(asesoria, encode)

        if len(documentos) == 1:
            body = "Tiene 1 documento nuevo."
        else:
            body = "Tiene " + str(documentos) + " nuevos."
    elif tipo == "cliente":
        if not carpeta:
            parser.error('Tiene que especificar la carpeta.')
            return

        if not usuario:
            parser.error('Tiene que especificar el usuario.')
            return

        if not asesoria:
            parser.error('Tiene que especificar la asesoria.')
            return

        if not mensaje:
            parser.error('Tiene que especificar el mensaje.')
            return

        topic = carpeta + "_" + usuario
        title = codificacion(asesoria, encode)
        body = codificacion(mensaje, encode)
    elif tipo == "asesoria":
        if not carpeta:
            parser.error('Tiene que especificar la carpeta.')
            return

        if not asesoria:
            parser.error('Tiene que especificar la asesoria.')
            return

        if not mensaje:
            parser.error('Tiene que especificar el mensaje.')
            return

        topic = carpeta
        title = codificacion(asesoria, encode)
        body = codificacion(mensaje, encode)
    elif tipo == "global":
        if not mensaje:
            parser.error('Tiene que especificar el mensaje.')
            return

        topic = "global"
        title = "DESPABOX"
        body = codificacion(mensaje, encode)

    notification = dict()
    notification["title"] = title
    notification["body"] = body
    notification["sound"] = "default"

    send(topic, notification, output)


def codificacion(texto, encode):
    texto = unicode(texto, encode)
    return texto.encode("utf8")


# INICIO
parser = argparse.ArgumentParser(description='DESPABOX Push Sender')

parser.add_argument('-t', '--tipo', choices=['documentos', 'cliente', 'asesoria', 'global'], default='documentos', required=True)
parser.add_argument('-c', '--carpeta', help='Carpeta del cliente. Ejemplo: -c _u_ase0211_')
parser.add_argument('-u', '--usuario', help='Código del usuario DESPANET. Ejemplo: -u 00010')
parser.add_argument('-a', '--asesoria', help='Nombre de la asesoría. Ejemplo: -a "Diagram Software, S.L."')
parser.add_argument('-o', '--output', help='Nombre del fichero de salida. Ejemplo: -o salida.txt')
parser.add_argument('-m', '--mensaje', help='Mensaje que se enviará. Ejemplo: -m "Hola"')
parser.add_argument('-d', '--documentos', nargs='+', help='Lista de documentos. Ejemplo: -d 1 2 3 4', type=int)
parser.add_argument('-e', '--encode', dest='encode', type=str, help=u'Codificación (Ejemplo: utf8, cp1252, cp437, Latin-1)', default='utf8')

args = vars(parser.parse_args())

procesar(args)
