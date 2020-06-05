#mv /u/dsprofes/basica/fich /u/dsprofes/basica/fichnuestro
#mv /u/dsprofes/basica/fichclientes /u/dsprofes/basica/fich
mv /u/dsprofes/integral/fich /u/dsprofes/integral/fichnuestro
mv /u/dsprofes/integral/fichclientes /u/dsprofes/integral/fich
mv /u/dsprofes/modelos/fich /u/dsprofes/modelos/fichnuestro
mv /u/dsprofes/modelos/fichclientes /u/dsprofes/modelos/fich

#chmod -R 777 /u/dsprofes/basica/fich
chmod -R 777 /u/dsprofes/integral/fich
chmod -R 777 /u/dsprofes/modelos/fich
#chown -R ds:wheel /u/dsprofes/basica/fich 
chown -R ds:wheel /u/dsprofes/integral/fich
chown -R ds:wheel /u/dsprofes/modelos/fich
