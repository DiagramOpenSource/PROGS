#!/usr/bin/env python
# coding=utf-8

u"""
Conversor caracteres (mar dic 18 11:37:22 CET 2018)
Codificaciones en: https://docs.python.org/2/library/codecs.html
@author: juhegue
Xml: quot  "     Otros: €     ░
     amp   &            ·     ╖
     apos  '
     lt    <
     gt    >
"""

__version__ = "0.0.3"

import argparse
import codecs


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter,)
    parser.add_argument('-v', '--version', action='version', version='%(prog)s ' + __version__)
    parser.add_argument('-fo', dest='forigen', type=str, required=True, help='fichero origen.')
    parser.add_argument('-fd', dest='fdestino', type=str, help='fichero destino, si se omite el origen.')
    parser.add_argument('-co', dest='corigen', type=str, default='cp1250', help=u'Codificación origen: defecto cp437.')
    parser.add_argument('-cd', dest='cdestino', type=str, default='utf8', help=u'Codificación destino: defecto utf8.')
    parser.add_argument('-m',  dest='modo', type=str, default='ignore', help=u'Modo conversión: strict, replace, ignore(defecto), backslashreplace.')
    parser.add_argument('-x',  dest='xml', type=int, default=1, choices=xrange(1, 4), help=u'1.-Xml escape(defecto), 2.-Xml unescape., 3.-Ignora')
    parser.add_argument('-o', dest='otros', type=int, default=1, choices=xrange(1, 4), help=u'1.-Otros escape(defecto), 2.-Otros unescape., 3.-Ignora')
    args = parser.parse_args()

    fdestino = args.fdestino if args.fdestino else args.forigen

    try:
        with codecs.open(args.forigen, encoding=args.corigen, errors=args.modo) as fr:
            data = fr.read()

        if args.xml == 1:
            data = data.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace('"', "&quot;").replace("'", "&apos;")
        elif args.xml == 2:
            data = data.replace("&lt;",  "<").replace("&gt;", ">").replace("&quot;", '"').replace("&apos;", "'").replace("&amp;", "&")

        if args.otros == 1:
            data = data.replace(u"░", u"€")
            data = data.replace(u"╖", u"·")
        elif args.otros == 2:
            data = data.replace(u"€", u"░")
            data = data.replace(u"·", u"╖", )

        with codecs.open(fdestino, "w", encoding=args.cdestino, errors=args.modo) as fw:
            fw.write(data)

    except Exception as e:
        print (e, e.message)


if __name__ == "__main__":
    main()
