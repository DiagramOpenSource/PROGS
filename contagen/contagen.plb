Auditoria
Camaasic_15,plba0301
Camaasic_16,plba0301
Camaasic_17,plba0301
Camaniva_15,plba0302
Camaniva_16,plba0302
Camaniva_17,plba0302
Cacuenta_15,plba0303
Cacuenta_16,plba0303
Cacuenta_17,plba0303
Casoplim_15,plba0305
Casoplim_16,plba0305
Casoplim_17,plba0305
Dsmom004_15,plba0201
Dsmom004_16,plba0201
Dsmom004_17,plba0201
Labtraba_15,plba0501
Labtraba_16,plba0501
Labtraba_17,plba0501


;Restricciones PINET
RestriccionPINET,zdatoco1

;RUTINAS DE CONTADORES
contador,conasi_i
Multi_contador,conasi_i
NuevoRegistro,conasi_i
NuevoDoc,conasi_i
NuevoAsiento,nueasi_i
ActContador,conasi_i
eGraboReserva,conasi_i
eBorroReserva,conasi_i
eUltReserva,conasi_i
eVerReserva,conasi_i

;RUTINAS DE CALCULOS VARIOS
CalculoDNI,dsaw9999
CopiaNuevo,dsaw9999
CalcuIBAN,dsaw9999
CheqIBAN,dsaw9999
eParamChile,zplb3308
ePatronM037,z00003_i
eVerNuevaAnotacion,z00005_i
eBorraExtras,z00005_i
ePasarExtras,z00005_i 

NombreMes,puntos_i
LeeDefIVA,ivadef_i
eLeeParametro,ivadef_i
eParaModelos,ivadef_i
PongoNumero,ivadef_i
PongoNumFra,ivadef_i
SwAgrupada,ivadef_i
CargaAuxModelo,auxmod_i
CreaCalend,calend_i
eRSChequeo,cheiva_i
eCtrlPaseT,labor1_i
eBuscaRLaboral,labor1_i
eReciboFich,zotrocal
eEnvioFich,zotrocal
BajaIntra,datint_i
AltaIntra,datint_i
LeeUnidadBasico,zdatocon 

;RUTINAS DE INICIALIZACION
inicio,acceso_i
los_informes,acceso_i
configura,acceso_i
leelo,acceso_i
inicial,acceso_i
nom_usu,tempor_i
Monedas,acceso_i
MiraBloqueo,acceso_i

;RUTINAS DE ACTUALIZACION DE CUENTAS
ActDiario,actdia_i
ActCuenta,actcta_i
ActCuentM,actcta_i
eOtraAlta,altcta_i
ActTesteo,conasi_i
NoTesteo,conasi_i
CambioCta08,plan08_i
ProvCta08,plan08_i
aContra8y9,plan08_i
eCam_Primero,plan08_i
eCam_Segundo,plan08_i

;RUTINAS DESACTUALIZACIONES
DesactualizaDSarchi,plbarchi
EnGadFactura,plbarchi
EnGadDiario,plbarchi

;RUTINAS DE FORMATEO DE CUENTAS
FiltraPuntos,puntos_i
FiltraPuntosX,puntos_i
SacaNivel,puntos_i
LeeCuenta,punto1_i
NoBlanca,puntos_i
FiltraCtaIG,puntos_i
FiltraCtaCP,puntos_i
FiltraCtaAsto,concep_i
LeeCtaSup,puntos_i
eLeeCtaMayor,puntos_i

;RUTINAS DE CONTROL DE ENLACES CON CARTERA
CreaPuente,carter_i
CierraPuente,carter_i
CiePuente2,carter_i
MiraRecibos,dszcarte
LeeBanco,carte2_i
eCalculoDC,carte2_i

;RUTINAS CONTROL DE OTRAS APLICACIONES
Tipo88C,zdatocon
DirAplicSt,zdatocon
LeeNifs,zdatocon
LeeProvincia,zdatocon
ParrillaPobla,zdatocon
LeeLocalidad,zdatocon
LeePersona,zdatocon
LeeHacienda,zdatocon
LeeComunidad,zdatocon
LeePais,zdatocon
SinBarra,zdatocon
PreparaInformes,zdatocon
ConsuCliente,zdatoco1
MensaCliente,zdatoco1
LeeDatosEmpresa,dsdato_i
LeeDatosActividad,dsdato_i
LeeDatosSubdepar,dsdato_i
LaFechaEmp,dsdato_i
ElTipoEmpSoc,dsdato_i
FecApeCie,dsdato_i
CuentoActiv,dsdato_i
eDejarModificar,poderm_i
eGrabaModificar,poderm_i
eBuscoMaestra,z00001_i

;RUTINA LEGALIZACION DE LIBROS
eGrabaHistLegal,z00004_i
NomLibros,z00004_i
LibrosNom,z00004_i
FicLibrosNom,z00004_i
eBorraHistLegal,z00004_i
   
;RUTINAS CONCEPTOS, DEPARTAMENTOS y SUBDEPARTAMENTOS
Actividad, concep_i
SubActividad, concep_i
OtroSubActividad, concep_i
pDepartamento, concep_i
pSubdepar, concep_i
FiltroConcepto,concep_i
CreaConcepto,concep_i
VerConcepto,concep_i
VerConcepto30,concep_i
ExisGeneral,existe_i
ActDefecto,ivadef_i
ConsulMod,ivadef_i
ConsulModIVA,ivadef_i
ConsulPlan,ivadef_i
Consul303,ivadef_i
eElCtrlModIVA,ivacaj_i
eTrataClaveZ,ivacaj_i
eTrataCobroZ,ivacaj_i
FilRegimenIVA,concep_i
ePathCaja,ivacaj_i
eActivParam,ivadef_i
eAcActualiza,ivadef_i

eImprimirDef,impr_def
    
;RUTINAS DE CUENTAS ANALITICAS
FPuntosAna, analit_i
Analitica, anacce_i
InicioAna, anacce_i
CambiaNombre, anacce_i
LeeTablaAna, analit_i
LeeCtaAna, analit_i
eLimCtaAna,analit_i
eLimCtaAna7,analit_i
r1_punto, refer1_i
caultref, refer1_i
CentroTrabajo, centro_i
AreaTrabajo, centro_i
SecTrabajo, centro_i
VerEmpLab,centro_i
AnaAltaEmp,anacce_i
 
;RUTINAS DE CAMBIO DE MONEDAS
LeeConversor, dsmone_i
ElCambioMoneda, dsmon1_i
ElCambio100, dsmon1_i

;RUTINAS ERP
ControlGrid,dserp_i

;Rutinas Boton "D"
EVENTOGRID,dserp_i

;Rutinas Boton "Telefono"
EVENTOPBX,dserp_i

;Rutinas Boton "Libreta"
EVENTOCRM,dserp_i

;RUTINAS BALANCES 
eCargaECPN,zctasa_i
eDesCargaECPN,zctasa_i
eElCalFinal804,zctasa_i
eCambioT,zctasa_i
eCrearVacio,zctasa_i
eBorraCa8m0000,zctasa_i
eExisteCa8m0000,zctasa_i
eVerEsPatron,zctasa_i
eBorraCa8comay,zctasa_i

;RUTINAS NUEVAS DE IVA
BuscaTipoIVA, iva_plb
SacaIVA, iva_plb
SelecTipoIVA, iva_plb
BuscaCtaIVA, iva_plb
Tipo8Version,acceso_i

;RUTINAS DETECCION DE MODULOS
EsForest, modulo_i
EsLuxe,modulo_i
EsTagloma,modulo_i

;RUTINAS GESTION TEMPORALES
CreaTempo,tempoplb
BoraTempo,tempoplb

;EMBARGOS
eVerEmbargos,z00002_i 
eVerEmbPagos,z00002_i 
eVerExisEmb,z00002_i
eBajaEmbargo,z00002_i
eVerEmbPagosM,z00002_i
eCambioApteEmb,z00002_i

BotonD,dserp_i

;UTILIDADES
ControlCaducidad,plbutili

; Procesos del GAD
MiraSiArchiva,zplbarch
ElIMPREArchi,zplbarch
BuscaDocuGAD,zplbarch
IniEnvioDocDSArchi,zplbarc1
FinEnvioDocDSArchi,zplbarc1
DocFisicoDSArchi,zplbarc1
MeteCampoDSArchi,zplbarc1
ExisteDocFisico,zplbarc1
CtrlPedirGrupoDsArchi,zplbarc1
ActivaPLB_arc1,zplbarc1
Archivando, zplbarch

;Actualizacion extension IVA
T15man,zplbivas
T16man,zplbivas
T17man,zplbivas
T15inl,zplbivas
T16inl,zplbivas
T17inl,zplbivas


