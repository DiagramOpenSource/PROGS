import sys

URL_SIIBOX = "siiboxsoftware.com"

def get_connection():
    if (sys.version_info >= (3, 0)):
        # Python 3 code in this block
        import http.client
        return http.client.HTTPSConnection(URL_SIIBOX)
    else:
        # Python 2 code in this block
        import httplib
        return httplib.HTTPSConnection(URL_SIIBOX)



conn = get_connection()
conn.request("GET", "/myapi/sincro/ase/_ase0211_/999021/")
res = conn.getresponse()
data = res.read()

print(data)


