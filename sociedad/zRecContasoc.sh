mkdir /tmp/manolo

cd /u/dsprofes/contasoc

tar cvfz /tmp/manolo/zsocdef.tgz --exclude fich_* --exclude fich */isom00* */calc* */ca1*
tar cvfz /tmp/manolo/zsocfic.tgz --exclude fich_* fich/isom05* fich/ism00001* fich/ism00002*

cd /u/dsasesor/sociedad

tar xvfz /tmp/manolo/zsocdef.tgz
tar xvfz /tmp/manolo/zsocfic.tgz
 

 
