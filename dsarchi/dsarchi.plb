;python
VersionPython,plbpytho
LanzaPush,plbpytho


;Auditoria
Dsmom004_15,plba0201
Dsmom004_16,plba0201
Dsmom004_17,plba0201


;Laboral
Labtraba_15,plba0201
Labtraba_16,plba0201
Labtraba_17,plba0201

;Borra Lineas en el Registro. dsarm005
BorraRegistro,dsarplb0

;Otros
eCambioDeCero,dsarplb6

;Encripta o Desencripta un Campo
Encripta,dsarplb0
Desencripta,dsarplb0
PidePassword,dsarplb0
PidePassword9,dsarplb0
QuitaRarosXML,dsarplb0
QuitaRarosCorreo,dsarplb0
RecibeConMD5,dsarplb0
CargaVarBorrado,dsarplb0


TraeTxtComprimido,dsarplb5
EnviaFicheroSinMD5,dsarplb5
EnviaFicheroConMD5,dsarplb5
RecibeEnServidorMD5,dsarplb5
QuitaRaros,dsarplb5
QuitaBotonSalir,dsarplb5
PonBotonSalir,dsarplb5
FiltroFecha,dsarplb5

;Calculo DNI y lectura de clientes
CalculoDNI,dsarzplb
LeeNifs,dsarzplb
LeeCliente,dsarzplb
LeeNif,dsarzplb

;Firma Documentos
FirmaDocumento,dsarplb1
RecuperaDocFirmado,dsarplb1
VerificaJava,dsarplb1
FirmaDocumentoXML,dsarplb1
VerificaFirmaXML,dsarplb1

DimeUnidad,dsarzplb
LeeUnidadBasico,dsarzplb
Pondsbrowse,dsarzplb
DSARCHI_INI,dsarzplb
Tipo8DESPANET,dsarzplb
SoyDESPANET,dsarzplb

;Gestion Temporales
CreaTempo,dsarplb2
BoraTempo,dsarplb2

;Traerse paquetes de dlls
Traete_dsselect,plbtraet
Traete_libtiff,plbtraet
Traete_dstesseract,plbtraet
Traete_dsofficetxt,plbtraet 
Traete_pdftotext,plbtraet
Traete_imagemagick,plbtraet
Traete_dsenviacorreo,plbtraet
Traete_dsescan_cli,plbtraet

;Visor de Logs
MeteVisorLog,dsarplb3

;Tratamientos DSXML
DescomprimeFichero,plbwords
AsignaWord,plbwords
AbreWordExterno,plbwords
RecibeFichero,plbwords
CogeMac,plbwords

;Arboles
GrabaVistas,plbcontr
GrabaVistaTiempoReal,plbcontr
IndexaTiempoReal,plbcontr

;Control
Tipo15Fm5,plbcontr
Tipo17Fm5,plbcontr
DimeDesFlow,plbcontr

;dsEscan
FormularioaVariables,dsarplb4
ActNifyNombre,dsarplb4
IntegridaddsEscan,dsarplb4
EnviaAvisoDiagram,dsarplb4

||Programa de Abdon. dsenviacorreo
DSEnviaCorreoPLB,plbtraet

||Vinculos Externos (TALLER, ...)
VinculosExternos,dsarplb2
GrabaVincuExte,dsarplb2
DimeValoresVinculo,dsarplb2
DimeTipoVinculo,dsarplb2

||LogXML
MeteLogXML,plbwords

||Temas de la clinica
ClinicaExMete,plbcontr
ClinicaExBorra,plbcontr
ClinicaDimeHis,plbcontr
ClinicaBuscaPac,dsarplb2
ClinicaHisYaIntro,dsarplb2
EjecutaSQL1,plbcontr

||Comersan
EstaComersan,zmodulos

AVEstaEnDscomer9,dsarplb9
EsDscomer9,dsarplb9

||Para. smtp-cli
ParametrosSMTPCLI,plbcorre
