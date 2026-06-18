CREATE TABLE Asignacion_Horario ( 
     Responsable_R_id                                 INTEGER  NOT NULL , 
     Turno_Tu_id                                      INTEGER  NOT NULL 
);


ALTER TABLE Asignacion_Horario 
    ADD CONSTRAINT Asignacion_Horario_PK PRIMARY KEY ( Responsable_R_id, Turno_Tu_id ) ;


CREATE TABLE Asistencia ( 
     A_id                 SERIAL  NOT NULL , 
     A_fecha_hora_llegada TIMESTAMP  NOT NULL , 
     A_fecha_hora_salida  TIMESTAMP  NOT NULL , 
     Empleado_Em_id       INTEGER  NOT NULL 
);


ALTER TABLE Asistencia ADD CONSTRAINT Asistencia_PK PRIMARY KEY ( A_id, Empleado_Em_id ) ;


CREATE TABLE Bloqueo ( 
     B_id                 SERIAL  NOT NULL , 
     B_fecha_hora_inicio  TIMESTAMP  NOT NULL , 
     B_fecha_hora_fin     TIMESTAMP  NOT NULL , 
     B_descripcion        VARCHAR (500)  NOT NULL 
);


ALTER TABLE Bloqueo ADD CONSTRAINT Bloqueo_PK PRIMARY KEY ( B_id ) ;


CREATE TABLE Caracteristica ( 
     Car_id                SERIAL  NOT NULL , 
     Car_nombre            VARCHAR (100)  NOT NULL , 
     Car_descripcion       VARCHAR (250)  NOT NULL , 
     Diseño_Producto_DP_id INTEGER  NOT NULL 
);


ALTER TABLE Caracteristica ADD CONSTRAINT Caracteristica_PK PRIMARY KEY ( Car_id, Diseño_Producto_DP_id ) ;


CREATE TABLE Caracteristica_Compatibilidad ( 
     CarCom_id                             SERIAL  NOT NULL , 
     CarCom_nombre                         VARCHAR (100)  NOT NULL , 
     CarCom_descripcion                    VARCHAR (250)  NOT NULL , 
     Caracteristica_Car_id2                INTEGER  NOT NULL , 
     Caracteristica_Diseño_Producto_DP_id2 INTEGER  NOT NULL , 
     Caracteristica_Car_id                 INTEGER  NOT NULL , 
     Caracteristica_Diseño_Producto_DP_id  INTEGER  NOT NULL 
);


ALTER TABLE Caracteristica_Compatibilidad 
    ADD CONSTRAINT Caracteristica_Compatibilidad_PK PRIMARY KEY ( CarCom_id, Caracteristica_Car_id2, Caracteristica_Diseño_Producto_DP_id2, Caracteristica_Car_id, Caracteristica_Diseño_Producto_DP_id ) ;


CREATE TABLE Cargo ( 
     Car_id          SERIAL  NOT NULL , 
     Car_nombre      VARCHAR (100)  NOT NULL , 
     Car_descripcion VARCHAR (250)  NOT NULL 
);


ALTER TABLE Cargo ADD CONSTRAINT Cargo_PK PRIMARY KEY ( Car_id ) ;


CREATE TABLE Categoria ( 
     Cat_id           SERIAL  NOT NULL , 
     Cat_nombre       VARCHAR (100)  NOT NULL , 
     Cat_descripcion  VARCHAR (250)  NOT NULL , 
     Categoria_Cat_id INTEGER 
);


ALTER TABLE Categoria ADD CONSTRAINT Categoria_PK PRIMARY KEY ( Cat_id ) ;


CREATE TABLE Cheque ( 
     MP_id            INTEGER  NOT NULL , 
     CH_banco         VARCHAR (100)  NOT NULL , 
     CH_numero_cuenta VARCHAR (50)  NOT NULL 
);


ALTER TABLE Cheque ADD CONSTRAINT Cheque_PK PRIMARY KEY ( MP_id ) ;


CREATE TABLE Cliente ( 
     Cl_id            SERIAL  NOT NULL , 
     Cl_direccion     VARCHAR (250)  NOT NULL , 
     Cl_email         VARCHAR (150)  NOT NULL , 
     Bloqueo_B_id     INTEGER  NOT NULL , 
     Membresia_Mem_id INTEGER 
);


CREATE UNIQUE INDEX Cliente__IDX ON Cliente ( Membresia_Mem_id ASC );


ALTER TABLE Cliente ADD CONSTRAINT Cliente_PK PRIMARY KEY ( Cl_id ) ;


CREATE TABLE Cliente_B2B ( 
     Cl_id              INTEGER  NOT NULL , 
     ClB2B_nombre       VARCHAR (100)  NOT NULL , 
     ClB2B_linea_credito NUMERIC  NOT NULL 
);


ALTER TABLE Cliente_B2B ADD CONSTRAINT Cliente_B2B_PK PRIMARY KEY ( Cl_id ) ;


CREATE TABLE Cliente_B2C ( 
     Cl_id            INTEGER  NOT NULL , 
     ClB2C_p_nombre   VARCHAR (50)  NOT NULL , 
     ClB2B_s_nombre   VARCHAR (50) , 
     ClB2B_p_apellido VARCHAR (50)  NOT NULL , 
     ClB2B_s_apellido VARCHAR (50)  NOT NULL 
);


ALTER TABLE Cliente_B2C ADD CONSTRAINT Cliente_B2C_PK PRIMARY KEY ( Cl_id ) ;


CREATE TABLE Compatibilidad ( 
     Comp_id           SERIAL  NOT NULL , 
     Categoria_Cat_id  INTEGER  NOT NULL , 
     Categoria_Cat_id2 INTEGER  NOT NULL 
);


ALTER TABLE Compatibilidad ADD CONSTRAINT Compatibilidad_PK PRIMARY KEY ( Comp_id, Categoria_Cat_id, Categoria_Cat_id2 ) ;


CREATE TABLE Compra_BTC ( 
     CBTC_id                 SERIAL  NOT NULL , 
     CBTC_fecha_hora         TIMESTAMP  NOT NULL , 
     CBTC_total              NUMERIC  NOT NULL , 
     CBTC_subtotal           NUMERIC  NOT NULL , 
     CBTC_numero_fact_compra VARCHAR (100)  NOT NULL , 
     CBTC_estado             VARCHAR (50)  NOT NULL , 
     CBTC_velocidad          VARCHAR (50)  NOT NULL 
);


ALTER TABLE Compra_BTC ADD CONSTRAINT Compra_BTC_PK PRIMARY KEY ( CBTC_id ) ;


CREATE TABLE Control_Calidad ( 
     CC_id                      SERIAL  NOT NULL , 
     CC_fecha                   DATE  NOT NULL , 
     CC_muestras_inspeccionadas INTEGER  NOT NULL , 
     CC_unidades_rechazadas     INTEGER  NOT NULL , 
     CC_unidades_aprobadas      INTEGER  NOT NULL , 
     CC_resultado               VARCHAR (50)  NOT NULL , 
     CC_observaciones           VARCHAR (500)  NOT NULL 
);


ALTER TABLE Control_Calidad ADD CONSTRAINT Control_Calidad_PK PRIMARY KEY ( CC_id ) ;


CREATE TABLE Courier ( 
     Cou_id        SERIAL  NOT NULL , 
     Cou_direccion VARCHAR (250)  NOT NULL , 
     Cou_nombre    VARCHAR (100)  NOT NULL 
);


ALTER TABLE Courier ADD CONSTRAINT Courier_PK PRIMARY KEY ( Cou_id ) ;


CREATE TABLE Cryptomoneda ( 
     MP_id     INTEGER  NOT NULL , 
     CR_nombre VARCHAR (50)  NOT NULL 
);


ALTER TABLE Cryptomoneda ADD CONSTRAINT Cryptomoneda_PK PRIMARY KEY ( MP_id ) ;


CREATE TABLE Defecto_Calidad ( 
     DC_id            SERIAL  NOT NULL , 
     DC_fecha_reporte DATE  NOT NULL , 
     DC_estado        VARCHAR (50)  NOT NULL , 
     DC_gravedad      VARCHAR (50)  NOT NULL , 
     DC_tipo          VARCHAR (100)  NOT NULL 
);


ALTER TABLE Defecto_Calidad ADD CONSTRAINT Defecto_Calidad_PK PRIMARY KEY ( DC_id ) ;


CREATE TABLE Departamento ( 
     De_id     SERIAL  NOT NULL , 
     De_nombre VARCHAR (100)  NOT NULL 
);


ALTER TABLE Departamento ADD CONSTRAINT Departamento_PK PRIMARY KEY ( De_id ) ;


CREATE TABLE Despacho_BTB ( 
     DesBTB_id               SERIAL  NOT NULL , 
     DesBTB_fecha_hora       TIMESTAMP  NOT NULL , 
     DesBTB_cantidad_paletas INTEGER  NOT NULL , 
     DesBTB_direccion        VARCHAR (250)  NOT NULL , 
     Lugar_L_id              INTEGER  NOT NULL 
);


ALTER TABLE Despacho_BTB ADD CONSTRAINT Despacho_BTB_PK PRIMARY KEY ( DesBTB_id ) ;


CREATE TABLE Despacho_BTC ( 
     DesBTC_id               SERIAL  NOT NULL , 
     DesBTC_fecha_hora       TIMESTAMP  NOT NULL , 
     DesBTC_cantidad_paletas INTEGER  NOT NULL , 
     DesBTC_direccion        VARCHAR (250)  NOT NULL , 
     DesBTC_peso             NUMERIC  NOT NULL , 
     DesBTC_costo            NUMERIC  NOT NULL , 
     DesBTC_numero_tracking  VARCHAR (100)  NOT NULL , 
     Courier_Cou_id          INTEGER  NOT NULL , 
     Lugar_L_id              INTEGER  NOT NULL 
);


ALTER TABLE Despacho_BTC ADD CONSTRAINT Despacho_BTC_PK PRIMARY KEY ( DesBTC_id ) ;


CREATE TABLE Diseño_Producto ( 
     DP_id                   SERIAL  NOT NULL , 
     DP_nombre_comercial     VARCHAR (150)  NOT NULL , 
     DP_descripcion          VARCHAR (400)  NOT NULL , 
     DP_fecha_lanzamiento    DATE  NOT NULL , 
     DP_precio_inicial       NUMERIC , 
     DP_manual_instrucciones VARCHAR (250) , 
     DP_ancho_cm             NUMERIC  NOT NULL , 
     DP_largo_cm             NUMERIC  NOT NULL , 
     DP_peso_volumetrico     NUMERIC  NOT NULL , 
     Material_M_id           INTEGER  NOT NULL 
);


ALTER TABLE Diseño_Producto ADD CONSTRAINT Diseño_Producto_PK PRIMARY KEY ( DP_id ) ;


CREATE TABLE Empleado ( 
     Em_id            SERIAL  NOT NULL , 
     Em_p_nombre      VARCHAR (50)  NOT NULL , 
     Em_s_nombre      VARCHAR (50) , 
     Em_p_apellido    VARCHAR (50)  NOT NULL , 
     Em_s_apellido    VARCHAR (50)  NOT NULL , 
     Em_sueldo_actual NUMERIC  NOT NULL 
);


ALTER TABLE Empleado ADD CONSTRAINT Empleado_PK PRIMARY KEY ( Em_id ) ;


CREATE TABLE Envio ( 
     E_id               SERIAL  NOT NULL , 
     E_numero           VARCHAR (100)  NOT NULL , 
     E_fecha_hora       TIMESTAMP  NOT NULL , 
     Courier_Cou_id     INTEGER  NOT NULL , 
     Transportista_T_id INTEGER  NOT NULL 
);


ALTER TABLE Envio ADD CONSTRAINT Envio_PK PRIMARY KEY ( E_id ) ;


CREATE TABLE Estado ( 
     Est_id          SERIAL  NOT NULL , 
     Est_nombre      VARCHAR (50)  NOT NULL , 
     Est_descripcion VARCHAR (250)  NOT NULL 
);


ALTER TABLE Estado ADD CONSTRAINT Estado_PK PRIMARY KEY ( Est_id ) ;


CREATE TABLE Estado_Cliente ( 
     EC_fecha_inicio DATE  NOT NULL , 
     EC_fecha_fin    DATE  NOT NULL , 
     Cliente_Cl_id   INTEGER  NOT NULL , 
     Estado_Est_id   INTEGER  NOT NULL 
);


ALTER TABLE Estado_Cliente ADD CONSTRAINT Estado_Cliente_PK PRIMARY KEY ( Cliente_Cl_id, Estado_Est_id ) ;


CREATE TABLE Estado_Compra_BTC ( 
     Estado_Est_id      INTEGER  NOT NULL , 
     Compra_BTC_CBTC_id INTEGER  NOT NULL 
);


ALTER TABLE Estado_Compra_BTC ADD CONSTRAINT Estado_Compra_BTC_PK PRIMARY KEY ( Estado_Est_id, Compra_BTC_CBTC_id ) ;


CREATE TABLE Estado_Despacho_BTB ( 
     Estado_Est_id          INTEGER  NOT NULL , 
     Despacho_BTB_DesBTB_id INTEGER  NOT NULL 
);


ALTER TABLE Estado_Despacho_BTB ADD CONSTRAINT Estado_Despacho_BTB_PK PRIMARY KEY ( Estado_Est_id, Despacho_BTB_DesBTB_id ) ;


CREATE TABLE Estado_Despacho_BTC ( 
     Despacho_BTC_DesBTC_id INTEGER  NOT NULL , 
     Estado_Est_id          INTEGER  NOT NULL 
);


ALTER TABLE Estado_Despacho_BTC ADD CONSTRAINT Estado_Despacho_BTC_PK PRIMARY KEY ( Despacho_BTC_DesBTC_id, Estado_Est_id ) ;


CREATE TABLE Estado_Envio ( 
     EstEn_fecha_inicio DATE  NOT NULL , 
     EstEn_fecha_fin    DATE  NOT NULL , 
     Envio_E_id         INTEGER  NOT NULL , 
     Estado_Est_id      INTEGER  NOT NULL 
);


ALTER TABLE Estado_Envio ADD CONSTRAINT Estado_Envio_PK PRIMARY KEY ( Envio_E_id, Estado_Est_id ) ;


CREATE TABLE Exclusividad_Producto ( 
     EP_id       SERIAL  NOT NULL , 
     EP_nombre   VARCHAR (100)  NOT NULL , 
     EP_cantidad INTEGER  NOT NULL 
);


ALTER TABLE Exclusividad_Producto ADD CONSTRAINT Exclusividad_Producto_PK PRIMARY KEY ( EP_id ) ;


CREATE TABLE Fase ( 
     F_id          SERIAL  NOT NULL , 
     F_nombre      VARCHAR (100)  NOT NULL , 
     F_descripcion VARCHAR (400)  NOT NULL 
);


ALTER TABLE Fase ADD CONSTRAINT Fase_PK PRIMARY KEY ( F_id ) ;


CREATE TABLE Fase_Compra ( 
     FC_id                SERIAL  NOT NULL , 
     FC_fecha_hora_inicio TIMESTAMP  NOT NULL , 
     FC_fecha_hora_fin    TIMESTAMP  NOT NULL , 
     Departamento_De_id   INTEGER  NOT NULL 
);


ALTER TABLE Fase_Compra ADD CONSTRAINT Fase_Compra_PK PRIMARY KEY ( FC_id ) ;


CREATE TABLE Fase_Diseno ( 
     FD_id                 SERIAL  NOT NULL , 
     FD_fecha_hora_inicio  TIMESTAMP  NOT NULL , 
     FD_fecha_hora_fin     TIMESTAMP  NOT NULL , 
     Fase_F_id             INTEGER  NOT NULL , 
     Diseño_Producto_DP_id INTEGER  NOT NULL , 
     Departamento_De_id    INTEGER  NOT NULL 
);


ALTER TABLE Fase_Diseno ADD CONSTRAINT Fase_Diseno_PK PRIMARY KEY ( FD_id, Fase_F_id, Diseño_Producto_DP_id ) ;


CREATE TABLE Fase_Logistica ( 
     FL_id                  SERIAL  NOT NULL , 
     FL_fecha_hora_inicio   TIMESTAMP  NOT NULL , 
     FL_fecha_hora_fin      TIMESTAMP  NOT NULL , 
     Fase_F_id              INTEGER  NOT NULL , 
     Despacho_BTB_DesBTB_id INTEGER  NOT NULL , 
     Despacho_BTC_DesBTC_id INTEGER  NOT NULL 
);


ALTER TABLE Fase_Logistica ADD CONSTRAINT Fase_Logistica_PK PRIMARY KEY ( FL_id, Fase_F_id, Despacho_BTB_DesBTB_id, Despacho_BTC_DesBTC_id ) ;


CREATE TABLE Fase_Operativa ( 
     FO_id                 SERIAL  NOT NULL , 
     FO_nombre             VARCHAR (100)  NOT NULL , 
     FO_direccion          VARCHAR (250)  NOT NULL , 
     Lote_Produccion_LP_id INTEGER  NOT NULL , 
     Fase_F_id             INTEGER  NOT NULL 
);


ALTER TABLE Fase_Operativa ADD CONSTRAINT Fase_Operativa_PK PRIMARY KEY ( FO_id, Lote_Produccion_LP_id, Fase_F_id ) ;


CREATE TABLE Fase_Post_Venta ( 
     FPV_id                SERIAL  NOT NULL , 
     FPV_fecha_hora_inicio TIMESTAMP  NOT NULL , 
     FPV_fecha_hora_fin    TIMESTAMP  NOT NULL , 
     Departamento_De_id    INTEGER  NOT NULL , 
     Producto_Final_PF_id  INTEGER  NOT NULL , 
     Fase_F_id             INTEGER  NOT NULL , 
     Fase_Compra_FC_id     INTEGER  NOT NULL 
);


ALTER TABLE Fase_Post_Venta ADD CONSTRAINT Fase_Post_Venta_PK PRIMARY KEY ( FPV_id, Producto_Final_PF_id, Fase_F_id, Fase_Compra_FC_id ) ;


CREATE TABLE Historico_Empleado ( 
     HEm_id                SERIAL  NOT NULL , 
     HEm_fecha_hora_inicio TIMESTAMP  NOT NULL , 
     HEm_fecha_hora_fin    TIMESTAMP  NOT NULL , 
     HEm_sueldo            NUMERIC  NOT NULL , 
     Empleado_Em_id        INTEGER  NOT NULL , 
     Cargo_Car_id          INTEGER  NOT NULL , 
     Departamento_De_id    INTEGER  NOT NULL 
);


ALTER TABLE Historico_Empleado ADD CONSTRAINT Historico_Empleado_PK PRIMARY KEY ( HEm_id, Empleado_Em_id, Departamento_De_id ) ;


CREATE TABLE Historico_Orden_Compra ( 
     HOC_id             SERIAL  NOT NULL , 
     HOC_estado         VARCHAR (50)  NOT NULL , 
     HOC_fecha_inicio   DATE  NOT NULL , 
     HOC_fecha_fin      DATE  NOT NULL , 
     Orden_Compra_OC_id INTEGER  NOT NULL 
);


ALTER TABLE Historico_Orden_Compra ADD CONSTRAINT Historico_Orden_Compra_PK PRIMARY KEY ( HOC_id, Orden_Compra_OC_id ) ;


CREATE TABLE Historico_Producto ( 
     HP_id                     SERIAL  NOT NULL , 
     HP_fecha_hora_lanzamiento TIMESTAMP  NOT NULL , 
     HP_precio                 NUMERIC  NOT NULL , 
     HP_rareza_edicion         VARCHAR (50)  NOT NULL , 
     Producto_Final_PF_id      INTEGER  NOT NULL 
);


ALTER TABLE Historico_Producto ADD CONSTRAINT Historico_Producto_PK PRIMARY KEY ( HP_id, Producto_Final_PF_id ) ;


CREATE TABLE Historico_Profesion ( 
     HProf_id              SERIAL  NOT NULL , 
     HProf_fecha_inicio    DATE  NOT NULL , 
     HProf_fecha_fin       DATE  NOT NULL , 
     Diseño_Producto_DP_id INTEGER  NOT NULL , 
     Profesion_Prof_id     INTEGER  NOT NULL 
);


ALTER TABLE Historico_Profesion ADD CONSTRAINT Historico_Profesion_PK PRIMARY KEY ( HProf_id, Diseño_Producto_DP_id, Profesion_Prof_id ) ;


CREATE TABLE Lote_Produccion ( 
     LP_id                                             SERIAL  NOT NULL , 
     LP_fecha_hora                                     TIMESTAMP  NOT NULL , 
     LP_cantidad_producida                             NUMERIC  NOT NULL , 
     Material_M_id                                     INTEGER  NOT NULL , 
     Pieza_Caracteristica_Caracteristica_Car_id        INTEGER  NOT NULL , 
     Pieza_Caracteristica_Caracteristica_Diseño_Producto_DP_id INTEGER  NOT NULL , 
     Pieza_Caracteristica_Pieza_Pie_id                 INTEGER  NOT NULL , 
     Pieza_Caracteristica_Pieza_Categoria_Cat_id       INTEGER  NOT NULL , 
     Pieza_Caracteristica_Pieza_Diseño_Producto_DP_id  INTEGER  NOT NULL , 
     Compatibilidad_Comp_id                            INTEGER  NOT NULL , 
     Compatibilidad_Categoria_Cat_id                   INTEGER  NOT NULL , 
     Compatibilidad_Categoria_Cat_id2                  INTEGER  NOT NULL , 
     Control_Calidad_CC_id                             INTEGER  NOT NULL 
);


ALTER TABLE Lote_Produccion ADD CONSTRAINT Lote_Produccion_PK PRIMARY KEY ( LP_id ) ;


CREATE TABLE Lugar ( 
     L_id       SERIAL  NOT NULL , 
     L_nombre   VARCHAR (100)  NOT NULL , 
     L_tipo     VARCHAR (50)  NOT NULL , 
     Lugar_L_id INTEGER 
);


ALTER TABLE Lugar ADD CONSTRAINT Lugar_PK PRIMARY KEY ( L_id ) ;


CREATE TABLE Material ( 
     M_id          SERIAL  NOT NULL , 
     M_nombre      VARCHAR (100)  NOT NULL , 
     M_descripcion VARCHAR (350)  NOT NULL 
);


ALTER TABLE Material ADD CONSTRAINT Material_PK PRIMARY KEY ( M_id ) ;


CREATE TABLE Membresia ( 
     Mem_id          SERIAL  NOT NULL , 
     Mem_nombre      VARCHAR (100)  NOT NULL , 
     Mem_descripcion VARCHAR (250)  NOT NULL , 
     Cliente_Cl_id   INTEGER 
);


CREATE UNIQUE INDEX Membresia__IDX ON Membresia ( Cliente_Cl_id ASC );


ALTER TABLE Membresia ADD CONSTRAINT Membresia_PK PRIMARY KEY ( Mem_id ) ;


CREATE TABLE Mercado_Secundario ( 
     MS_id               SERIAL  NOT NULL , 
     MS_condicion_fisica VARCHAR (100)  NOT NULL , 
     MS_precio_actual    NUMERIC  NOT NULL 
);


ALTER TABLE Mercado_Secundario ADD CONSTRAINT Mercado_Secundario_PK PRIMARY KEY ( MS_id ) ;


CREATE TABLE Metodo_Pago ( 
     MP_id         SERIAL  NOT NULL , 
     MP_numero     VARCHAR (100)  NOT NULL , 
     Cliente_Cl_id INTEGER  NOT NULL 
);


ALTER TABLE Metodo_Pago ADD CONSTRAINT Metodo_Pago_PK PRIMARY KEY ( MP_id ) ;


CREATE TABLE Orden_Compra ( 
     OC_id                  SERIAL  NOT NULL , 
     OC_total               NUMERIC  NOT NULL , 
     OC_subtotal            NUMERIC  NOT NULL , 
     OC_numero_orden_compra VARCHAR (100)  NOT NULL , 
     Cliente_Cl_id          INTEGER 
);


ALTER TABLE Orden_Compra ADD CONSTRAINT Orden_Compra_PK PRIMARY KEY ( OC_id ) ;


CREATE TABLE Pago ( 
     Pa_monto           NUMERIC  NOT NULL , 
     Pa_fecha_hora      TIMESTAMP  NOT NULL , 
     Metodo_Pago_MP_id  INTEGER  NOT NULL , 
     Orden_Compra_OC_id INTEGER  NOT NULL , 
     Compra_BTC_CBTC_id INTEGER  NOT NULL 
);


ALTER TABLE Pago ADD CONSTRAINT Pago_PK PRIMARY KEY ( Metodo_Pago_MP_id, Orden_Compra_OC_id, Compra_BTC_CBTC_id ) ;


CREATE TABLE Pago_nomina ( 
     PaN_monto        NUMERIC  NOT NULL , 
     Empleado_Em_id   INTEGER  NOT NULL , 
     Pre_Nomina_PN_id INTEGER  NOT NULL 
);


ALTER TABLE Pago_nomina ADD CONSTRAINT Pago_nomina_PK PRIMARY KEY ( Empleado_Em_id, Pre_Nomina_PN_id ) ;


CREATE TABLE Paypal ( 
     MP_id      INTEGER  NOT NULL , 
     PAP_correo VARCHAR (100)  NOT NULL 
);


ALTER TABLE Paypal ADD CONSTRAINT Paypal_PK PRIMARY KEY ( MP_id ) ;


CREATE TABLE Pieza ( 
     Pie_id                SERIAL  NOT NULL , 
     Pie_fecha_inicio      DATE  NOT NULL , 
     Pie_fecha_fin         DATE  NOT NULL , 
     Categoria_Cat_id      INTEGER  NOT NULL , 
     Diseño_Producto_DP_id INTEGER  NOT NULL 
);


ALTER TABLE Pieza ADD CONSTRAINT Pieza_PK PRIMARY KEY ( Pie_id, Categoria_Cat_id, Diseño_Producto_DP_id ) ;


CREATE TABLE Pieza_Caracteristica ( 
     PC_valor                             VARCHAR (100)  NOT NULL , 
     Caracteristica_Car_id                INTEGER  NOT NULL , 
     Caracteristica_Diseño_Producto_DP_id INTEGER  NOT NULL , 
     Pieza_Pie_id                         INTEGER  NOT NULL , 
     Pieza_Categoria_Cat_id               INTEGER  NOT NULL , 
     Pieza_Diseño_Producto_DP_id          INTEGER  NOT NULL 
);


ALTER TABLE Pieza_Caracteristica 
    ADD CONSTRAINT Pieza_Caracteristica_PK PRIMARY KEY ( Caracteristica_Car_id, Caracteristica_Diseño_Producto_DP_id, Pieza_Pie_id, Pieza_Categoria_Cat_id, Pieza_Diseño_Producto_DP_id ) ;


CREATE TABLE Pre_Nomina ( 
     PN_id                   SERIAL  NOT NULL , 
     PN_fecha_hora           TIMESTAMP  NOT NULL , 
     PN_total                NUMERIC  NOT NULL , 
     PN_subtotal             NUMERIC  NOT NULL , 
     Tabulador_Oficial_TO_id INTEGER  NOT NULL 
);


ALTER TABLE Pre_Nomina ADD CONSTRAINT Pre_Nomina_PK PRIMARY KEY ( PN_id ) ;


CREATE TABLE Privilegio ( 
     Pri_id          SERIAL  NOT NULL , 
     Pri_nombre      VARCHAR (100)  NOT NULL , 
     Pri_descripcion VARCHAR (250)  NOT NULL 
);


ALTER TABLE Privilegio ADD CONSTRAINT Privilegio_PK PRIMARY KEY ( Pri_id ) ;


CREATE TABLE Producto_Final ( 
     PF_id                       SERIAL  NOT NULL , 
     PF_nombre                   VARCHAR (150)  NOT NULL , 
     PF_era                      VARCHAR (50)  NOT NULL , 
     PF_rareza                   VARCHAR (50)  NOT NULL , 
     PF_estado                   VARCHAR (50)  NOT NULL , 
     Mercado_Secundario_MS_id    INTEGER  NOT NULL , 
     Exclusividad_Producto_EP_id INTEGER  NOT NULL , 
     Lote_Produccion_LP_id       INTEGER  NOT NULL , 
     Orden_Compra_OC_id          INTEGER  NOT NULL , 
     Compra_BTC_CBTC_id          INTEGER  NOT NULL 
);


ALTER TABLE Producto_Final ADD CONSTRAINT Producto_Final_PK PRIMARY KEY ( PF_id ) ;


CREATE TABLE Profesion ( 
     Prof_id          SERIAL  NOT NULL , 
     Prof_nombre      VARCHAR (100)  NOT NULL , 
     Prof_descripcion VARCHAR (250)  NOT NULL 
);


ALTER TABLE Profesion ADD CONSTRAINT Profesion_PK PRIMARY KEY ( Prof_id ) ;


CREATE TABLE Proveedor ( 
     Prov_id        SERIAL  NOT NULL , 
     Prov_nombre    VARCHAR (100)  NOT NULL , 
     Prov_direccion VARCHAR (250)  NOT NULL 
);


ALTER TABLE Proveedor ADD CONSTRAINT Proveedor_PK PRIMARY KEY ( Prov_id ) ;


CREATE TABLE Proveedor_Material ( 
     Proveedor_Prov_id INTEGER  NOT NULL , 
     Material_M_id     INTEGER  NOT NULL 
);


ALTER TABLE Proveedor_Material ADD CONSTRAINT Proveedor_Material_PK PRIMARY KEY ( Proveedor_Prov_id, Material_M_id ) ;


CREATE TABLE Prueba_Calidad ( 
     Control_Calidad_CC_id INTEGER  NOT NULL , 
     Defecto_Calidad_DC_id INTEGER  NOT NULL 
);


ALTER TABLE Prueba_Calidad ADD CONSTRAINT Prueba_Calidad_PK PRIMARY KEY ( Control_Calidad_CC_id, Defecto_Calidad_DC_id ) ;


CREATE TABLE Puja ( 
     Pu_id                     SERIAL  NOT NULL , 
     Pu_fecha_hora_milisegundo TIMESTAMP  NOT NULL , 
     Pu_monto                  NUMERIC  NOT NULL , 
     Subasta_Su_id             INTEGER  NOT NULL , 
     Usuario_U_id              INTEGER  NOT NULL 
);


ALTER TABLE Puja ADD CONSTRAINT Puja_PK PRIMARY KEY ( Pu_id, Subasta_Su_id, Usuario_U_id ) ;


CREATE TABLE Responsable ( 
     R_id                                 SERIAL  NOT NULL , 
     R_fecha_inicio                       DATE  NULL , 
     R_fecha_fin                          DATE  NULL , 
     Empleado_Em_id                       INTEGER  NULL , 
     Fase_Post_Venta_FPV_id               INTEGER  NULL , 
     Fase_Post_Venta_PF_id                INTEGER  NULL , 
     Cargo_Car_id                         INTEGER  NULL , 
     Fase_Operativa_FO_id                 INTEGER  NULL , 
     Fase_Operativa_Lote_Produccion_LP_id INTEGER  NULL , 
     Fase_Operativa_Fase_F_id             INTEGER  NULL , 
     Fase_Post_Venta_F_id                 INTEGER  NULL , 
     Fase_Diseno_FD_id                    INTEGER  NULL , 
     Fase_Diseno_Fase_F_id                INTEGER  NULL , 
     Fase_Post_Venta_FC_id                INTEGER  NULL , 
     Fase_Compra_FC_id                    INTEGER  NULL , 
     Fase_Logistica_FL_id                 INTEGER  NULL , 
     Fase_Logistica_Fase_F_id             INTEGER  NULL , 
     Fase_Logistica_DesBTB_id             INTEGER  NULL , 
     Fase_Logistica_DesBTC_id             INTEGER  NULL , 
     Fase_Diseno_DP_id                    INTEGER  NULL ,
     CONSTRAINT arc_responsable_exclusivo CHECK (
         (Fase_Compra_FC_id IS NOT NULL AND Fase_Diseno_FD_id IS NULL AND Fase_Diseno_Fase_F_id IS NULL AND Fase_Diseno_DP_id IS NULL AND Fase_Logistica_FL_id IS NULL AND Fase_Logistica_Fase_F_id IS NULL AND Fase_Logistica_DesBTB_id IS NULL AND Fase_Logistica_DesBTC_id IS NULL AND Fase_Operativa_FO_id IS NULL AND Fase_Operativa_Lote_Produccion_LP_id IS NULL AND Fase_Operativa_Fase_F_id IS NULL AND Fase_Post_Venta_FPV_id IS NULL AND Fase_Post_Venta_PF_id IS NULL AND Fase_Post_Venta_F_id IS NULL AND Fase_Post_Venta_FC_id IS NULL)
         OR
         (Fase_Compra_FC_id IS NULL AND Fase_Diseno_FD_id IS NOT NULL AND Fase_Diseno_Fase_F_id IS NOT NULL AND Fase_Diseno_DP_id IS NOT NULL AND Fase_Logistica_FL_id IS NULL AND Fase_Logistica_Fase_F_id IS NULL AND Fase_Logistica_DesBTB_id IS NULL AND Fase_Logistica_DesBTC_id IS NULL AND Fase_Operativa_FO_id IS NULL AND Fase_Operativa_Lote_Produccion_LP_id IS NULL AND Fase_Operativa_Fase_F_id IS NULL AND Fase_Post_Venta_FPV_id IS NULL AND Fase_Post_Venta_PF_id IS NULL AND Fase_Post_Venta_F_id IS NULL AND Fase_Post_Venta_FC_id IS NULL)
         OR
         (Fase_Compra_FC_id IS NULL AND Fase_Diseno_FD_id IS NULL AND Fase_Diseno_Fase_F_id IS NULL AND Fase_Diseno_DP_id IS NULL AND Fase_Logistica_FL_id IS NOT NULL AND Fase_Logistica_Fase_F_id IS NOT NULL AND Fase_Logistica_DesBTB_id IS NOT NULL AND Fase_Logistica_DesBTC_id IS NOT NULL AND Fase_Operativa_FO_id IS NULL AND Fase_Operativa_Lote_Produccion_LP_id IS NULL AND Fase_Operativa_Fase_F_id IS NULL AND Fase_Post_Venta_FPV_id IS NULL AND Fase_Post_Venta_PF_id IS NULL AND Fase_Post_Venta_F_id IS NULL AND Fase_Post_Venta_FC_id IS NULL)
         OR
         (Fase_Compra_FC_id IS NULL AND Fase_Diseno_FD_id IS NULL AND Fase_Diseno_Fase_F_id IS NULL AND Fase_Diseno_DP_id IS NULL AND Fase_Logistica_FL_id IS NULL AND Fase_Logistica_Fase_F_id IS NULL AND Fase_Logistica_DesBTB_id IS NULL AND Fase_Logistica_DesBTC_id IS NULL AND Fase_Operativa_FO_id IS NOT NULL AND Fase_Operativa_Lote_Produccion_LP_id IS NOT NULL AND Fase_Operativa_Fase_F_id IS NOT NULL AND Fase_Post_Venta_FPV_id IS NULL AND Fase_Post_Venta_PF_id IS NULL AND Fase_Post_Venta_F_id IS NULL AND Fase_Post_Venta_FC_id IS NULL)
         OR
         (Fase_Compra_FC_id IS NULL AND Fase_Diseno_FD_id IS NULL AND Fase_Diseno_Fase_F_id IS NULL AND Fase_Diseno_DP_id IS NULL AND Fase_Logistica_FL_id IS NULL AND Fase_Logistica_Fase_F_id IS NULL AND Fase_Logistica_DesBTB_id IS NULL AND Fase_Logistica_DesBTC_id IS NULL AND Fase_Operativa_FO_id IS NULL AND Fase_Operativa_Lote_Produccion_LP_id IS NULL AND Fase_Operativa_Fase_F_id IS NULL AND Fase_Post_Venta_FPV_id IS NOT NULL AND Fase_Post_Venta_PF_id IS NOT NULL AND Fase_Post_Venta_F_id IS NOT NULL AND Fase_Post_Venta_FC_id IS NOT NULL)
     )
);


ALTER TABLE Responsable 
    ADD CONSTRAINT Responsable_PK PRIMARY KEY (R_id) ;


CREATE TABLE Rol ( 
     R_id          SERIAL  NOT NULL , 
     R_nombre      VARCHAR (50)  NOT NULL , 
     R_descripcion VARCHAR (250)  NOT NULL 
);


ALTER TABLE Rol ADD CONSTRAINT Rol_PK PRIMARY KEY ( R_id ) ;


CREATE TABLE Rol_Privilegio ( 
     Rol_R_id          INTEGER  NOT NULL , 
     Privilegio_Pri_id INTEGER  NOT NULL 
);


ALTER TABLE Rol_Privilegio ADD CONSTRAINT Rol_Privilegio_PK PRIMARY KEY ( Rol_R_id, Privilegio_Pri_id ) ;


CREATE TABLE Sede ( 
     S_id        SERIAL  NOT NULL , 
     S_nombre    VARCHAR (100)  NOT NULL , 
     S_direccion VARCHAR (250)  NOT NULL , 
     Lugar_L_id  INTEGER  NOT NULL 
);


ALTER TABLE Sede ADD CONSTRAINT Sede_PK PRIMARY KEY ( S_id, Lugar_L_id ) ;


CREATE TABLE Subasta ( 
     Su_id                SERIAL  NOT NULL , 
     Su_precio_base       NUMERIC  NOT NULL , 
     Su_fecha_hora_inicio TIMESTAMP  NOT NULL , 
     Su_fecha_hora_cierre TIMESTAMP  NOT NULL , 
     Producto_Final_PF_id INTEGER  NOT NULL 
);


ALTER TABLE Subasta ADD CONSTRAINT Subasta_PK PRIMARY KEY ( Su_id ) ;


CREATE TABLE Tabulador_Oficial ( 
     TO_id              SERIAL  NOT NULL , 
     TO_sueldo_base_rol NUMERIC  NOT NULL , 
     TO_rol             VARCHAR (100)  NOT NULL 
);


ALTER TABLE Tabulador_Oficial ADD CONSTRAINT Tabulador_Oficial_PK PRIMARY KEY ( TO_id ) ;


CREATE TABLE Tarjeta_Credito ( 
     MP_id                INTEGER  NOT NULL , 
     TC_fecha_vencimiento VARCHAR (10)  NOT NULL , 
     TC_tipo              VARCHAR (50)  NOT NULL 
);


ALTER TABLE Tarjeta_Credito ADD CONSTRAINT Tarjeta_Credito_PK PRIMARY KEY ( MP_id ) ;


CREATE TABLE Tarjeta_Debito ( 
     MP_id          INTEGER  NOT NULL , 
     TD_tipo_cuenta VARCHAR (50)  NOT NULL 
);


ALTER TABLE Tarjeta_Debito ADD CONSTRAINT Tarjeta_Debito_PK PRIMARY KEY ( MP_id ) ;


CREATE TABLE Transferencia_Bancaria_Internacional ( 
     MP_id            INTEGER  NOT NULL , 
     TBI_nombre       VARCHAR (100)  NOT NULL , 
     TBI_codigo_swift VARCHAR (11)  NOT NULL 
);


ALTER TABLE Transferencia_Bancaria_Internacional ADD CONSTRAINT Transferencia_Bancaria_Internacional_PK PRIMARY KEY ( MP_id ) ;


CREATE TABLE Transportista ( 
     T_id                   SERIAL  NOT NULL , 
     T_p_nombre             VARCHAR (50)  NOT NULL , 
     T_s_nombre             VARCHAR (50) , 
     T_p_apellido           VARCHAR (50)  NOT NULL , 
     T_s_apellido           VARCHAR (50)  NOT NULL , 
     Despacho_BTB_DesBTB_id INTEGER  NOT NULL 
);


ALTER TABLE Transportista ADD CONSTRAINT Transportista_PK PRIMARY KEY ( T_id ) ;


CREATE TABLE Turno ( 
     Tu_id          SERIAL  NOT NULL , 
     Tu_dia         VARCHAR (15)  NOT NULL , 
     Tu_hora_inicio TIMESTAMP  NOT NULL , 
     Tu_hora_fin    TIMESTAMP  NOT NULL 
);


ALTER TABLE Turno ADD CONSTRAINT Turno_PK PRIMARY KEY ( Tu_id ) ;


-- TABLA USUARIO MODIFICADA Y CON EL ARCO EXCLUSIVO INTEGRADO
CREATE TABLE Usuario ( 
     U_id           SERIAL  NOT NULL , 
     U_contraseña   VARCHAR (100)  NOT NULL , 
     U_nombre       VARCHAR (100)  NOT NULL , 
     Rol_R_id       INTEGER  NOT NULL , 
     Cliente_Cl_id  INTEGER , 
     Empleado_Em_id INTEGER ,
     CONSTRAINT arc_usuario_exclusivo CHECK (
        (Cliente_Cl_id IS NOT NULL AND Empleado_Em_id IS NULL) 
        OR 
        (Cliente_Cl_id IS NULL AND Empleado_Em_id IS NOT NULL)
     )
);


ALTER TABLE Usuario ADD CONSTRAINT Usuario_PK PRIMARY KEY ( U_id ) ;


CREATE TABLE Vinculo ( 
     VI_id                 SERIAL  NOT NULL , 
     VI_nombre             VARCHAR (100)  NOT NULL , 
     VI_descripcion        VARCHAR (250)  NOT NULL , 
     Producto_Final_PF_id  INTEGER  NOT NULL , 
     Producto_Final_PF_id2 INTEGER  NOT NULL 
);


ALTER TABLE Vinculo ADD CONSTRAINT Vinculo_PK PRIMARY KEY ( VI_id, Producto_Final_PF_id, Producto_Final_PF_id2 ) ;


-- ==========================================
-- FOREING KEYS
-- ==========================================


ALTER TABLE Asignacion_Horario ADD CONSTRAINT Asignacion_Horario_Responsable_FK FOREIGN KEY ( Responsable_R_id ) REFERENCES Responsable ( R_id );
ALTER TABLE Asignacion_Horario ADD CONSTRAINT Asignacion_Horario_Turno_FK FOREIGN KEY ( Turno_Tu_id ) REFERENCES Turno ( Tu_id );
ALTER TABLE Asistencia ADD CONSTRAINT Asistencia_Empleado_FK FOREIGN KEY ( Empleado_Em_id ) REFERENCES Empleado ( Em_id );
ALTER TABLE Caracteristica_Compatibilidad ADD CONSTRAINT Caracteristica_Compatibilidad_Caracteristica_FK FOREIGN KEY ( Caracteristica_Car_id, Caracteristica_Diseño_Producto_DP_id ) REFERENCES Caracteristica ( Car_id, Diseño_Producto_DP_id );
ALTER TABLE Caracteristica_Compatibilidad ADD CONSTRAINT Caracteristica_Compatibilidad_Caracteristica_FKv2 FOREIGN KEY ( Caracteristica_Car_id2, Caracteristica_Diseño_Producto_DP_id2 ) REFERENCES Caracteristica ( Car_id, Diseño_Producto_DP_id );
ALTER TABLE Caracteristica ADD CONSTRAINT Caracteristica_Diseño_Producto_FK FOREIGN KEY ( Diseño_Producto_DP_id ) REFERENCES Diseño_Producto ( DP_id );
ALTER TABLE Categoria ADD CONSTRAINT Categoria_Categoria_FK FOREIGN KEY ( Categoria_Cat_id ) REFERENCES Categoria ( Cat_id );
ALTER TABLE Cheque ADD CONSTRAINT Cheque_Metodo_Pago_FK FOREIGN KEY ( MP_id ) REFERENCES Metodo_Pago ( MP_id );
ALTER TABLE Cliente_B2B ADD CONSTRAINT Cliente_B2B_Cliente_FK FOREIGN KEY ( Cl_id ) REFERENCES Cliente ( Cl_id );
ALTER TABLE Cliente_B2C ADD CONSTRAINT Cliente_B2C_Cliente_FK FOREIGN KEY ( Cl_id ) REFERENCES Cliente ( Cl_id );
ALTER TABLE Cliente ADD CONSTRAINT Cliente_Bloqueo_FK FOREIGN KEY ( Bloqueo_B_id ) REFERENCES Bloqueo ( B_id );
ALTER TABLE Cliente ADD CONSTRAINT Cliente_Membresia_FK FOREIGN KEY ( Membresia_Mem_id ) REFERENCES Membresia ( Mem_id );
ALTER TABLE Compatibilidad ADD CONSTRAINT Compatibilidad_Categoria_FK FOREIGN KEY ( Categoria_Cat_id ) REFERENCES Categoria ( Cat_id );
ALTER TABLE Compatibilidad ADD CONSTRAINT Compatibilidad_Categoria_FKv2 FOREIGN KEY ( Categoria_Cat_id2 ) REFERENCES Categoria ( Cat_id );
ALTER TABLE Cryptomoneda ADD CONSTRAINT Cryptomoneda_Metodo_Pago_FK FOREIGN KEY ( MP_id ) REFERENCES Metodo_Pago ( MP_id );
ALTER TABLE Despacho_BTB ADD CONSTRAINT Despacho_BTB_Lugar_FK FOREIGN KEY ( Lugar_L_id ) REFERENCES Lugar ( L_id );
ALTER TABLE Despacho_BTC ADD CONSTRAINT Despacho_BTC_Courier_FK FOREIGN KEY ( Courier_Cou_id ) REFERENCES Courier ( Cou_id );
ALTER TABLE Despacho_BTC ADD CONSTRAINT Despacho_BTC_Lugar_FK FOREIGN KEY ( Lugar_L_id ) REFERENCES Lugar ( L_id );
ALTER TABLE Diseño_Producto ADD CONSTRAINT Diseño_Producto_Material_FK FOREIGN KEY ( Material_M_id ) REFERENCES Material ( M_id );
ALTER TABLE Envio ADD CONSTRAINT Envio_Courier_FK FOREIGN KEY ( Courier_Cou_id ) REFERENCES Courier ( Cou_id );
ALTER TABLE Envio ADD CONSTRAINT Envio_Transportista_FK FOREIGN KEY ( Transportista_T_id ) REFERENCES Transportista ( T_id );
ALTER TABLE Estado_Cliente ADD CONSTRAINT Estado_Cliente_Cliente_FK FOREIGN KEY ( Cliente_Cl_id ) REFERENCES Cliente ( Cl_id );
ALTER TABLE Estado_Cliente ADD CONSTRAINT Estado_Cliente_Estado_FK FOREIGN KEY ( Estado_Est_id ) REFERENCES Estado ( Est_id );
ALTER TABLE Estado_Compra_BTC ADD CONSTRAINT Estado_Compra_BTC_Compra_BTC_FK FOREIGN KEY ( Compra_BTC_CBTC_id ) REFERENCES Compra_BTC ( CBTC_id );
ALTER TABLE Estado_Compra_BTC ADD CONSTRAINT Estado_Compra_BTC_Estado_FK FOREIGN KEY ( Estado_Est_id ) REFERENCES Estado ( Est_id );
ALTER TABLE Estado_Despacho_BTB ADD CONSTRAINT Estado_Despacho_BTB_Despacho_BTB_FK FOREIGN KEY ( Despacho_BTB_DesBTB_id ) REFERENCES Despacho_BTB ( DesBTB_id );
ALTER TABLE Estado_Despacho_BTB ADD CONSTRAINT Estado_Despacho_BTB_Estado_FK FOREIGN KEY ( Estado_Est_id ) REFERENCES Estado ( Est_id );
ALTER TABLE Estado_Despacho_BTC ADD CONSTRAINT Estado_Despacho_BTC_Despacho_BTC_FK FOREIGN KEY ( Despacho_BTC_DesBTC_id ) REFERENCES Despacho_BTC ( DesBTC_id );
ALTER TABLE Estado_Despacho_BTC ADD CONSTRAINT Estado_Despacho_BTC_Estado_FK FOREIGN KEY ( Estado_Est_id ) REFERENCES Estado ( Est_id );
ALTER TABLE Estado_Envio ADD CONSTRAINT Estado_Envio_Envio_FK FOREIGN KEY ( Envio_E_id ) REFERENCES Envio ( E_id );
ALTER TABLE Estado_Envio ADD CONSTRAINT Estado_Envio_Estado_FK FOREIGN KEY ( Estado_Est_id ) REFERENCES Estado ( Est_id );
ALTER TABLE Fase_Compra ADD CONSTRAINT Fase_Compra_Departamento_FK FOREIGN KEY ( Departamento_De_id ) REFERENCES Departamento ( De_id );
ALTER TABLE Fase_Diseno ADD CONSTRAINT Fase_Diseno_Departamento_FK FOREIGN KEY ( Departamento_De_id ) REFERENCES Departamento ( De_id );
ALTER TABLE Fase_Diseno ADD CONSTRAINT Fase_Diseno_Diseño_Producto_FK FOREIGN KEY ( Diseño_Producto_DP_id ) REFERENCES Diseño_Producto ( DP_id );
ALTER TABLE Fase_Diseno ADD CONSTRAINT Fase_Diseno_Fase_FK FOREIGN KEY ( Fase_F_id ) REFERENCES Fase ( F_id );
ALTER TABLE Fase_Logistica ADD CONSTRAINT Fase_Logistica_Despacho_BTB_FK FOREIGN KEY ( Despacho_BTB_DesBTB_id ) REFERENCES Despacho_BTB ( DesBTB_id );
ALTER TABLE Fase_Logistica ADD CONSTRAINT Fase_Logistica_Despacho_BTC_FK FOREIGN KEY ( Despacho_BTC_DesBTC_id ) REFERENCES Despacho_BTC ( DesBTC_id );
ALTER TABLE Fase_Logistica ADD CONSTRAINT Fase_Logistica_Fase_FK FOREIGN KEY ( Fase_F_id ) REFERENCES Fase ( F_id );
ALTER TABLE Fase_Operativa ADD CONSTRAINT Fase_Operativa_Fase_FK FOREIGN KEY ( Fase_F_id ) REFERENCES Fase ( F_id );
ALTER TABLE Fase_Operativa ADD CONSTRAINT Fase_Operativa_Lote_Produccion_FK FOREIGN KEY ( Lote_Produccion_LP_id ) REFERENCES Lote_Produccion ( LP_id );
ALTER TABLE Fase_Post_Venta ADD CONSTRAINT Fase_Post_Venta_Departamento_FK FOREIGN KEY ( Departamento_De_id ) REFERENCES Departamento ( De_id );
ALTER TABLE Fase_Post_Venta ADD CONSTRAINT Fase_Post_Venta_Fase_Compra_FK FOREIGN KEY ( Fase_Compra_FC_id ) REFERENCES Fase_Compra ( FC_id );
ALTER TABLE Fase_Post_Venta ADD CONSTRAINT Fase_Post_Venta_Fase_FK FOREIGN KEY ( Fase_F_id ) REFERENCES Fase ( F_id );
ALTER TABLE Fase_Post_Venta ADD CONSTRAINT Fase_Post_Venta_Producto_Final_FK FOREIGN KEY ( Producto_Final_PF_id ) REFERENCES Producto_Final ( PF_id );
ALTER TABLE Historico_Empleado ADD CONSTRAINT Historico_Empleado_Cargo_FK FOREIGN KEY ( Cargo_Car_id ) REFERENCES Cargo ( Car_id );
ALTER TABLE Historico_Empleado ADD CONSTRAINT Historico_Empleado_Departamento_FK FOREIGN KEY ( Departamento_De_id ) REFERENCES Departamento ( De_id );
ALTER TABLE Historico_Empleado ADD CONSTRAINT Historico_Empleado_Empleado_FK FOREIGN KEY ( Empleado_Em_id ) REFERENCES Empleado ( Em_id );
ALTER TABLE Historico_Orden_Compra ADD CONSTRAINT Historico_Orden_Compra_Orden_Compra_FK FOREIGN KEY ( Orden_Compra_OC_id ) REFERENCES Orden_Compra ( OC_id );
ALTER TABLE Historico_Producto ADD CONSTRAINT Historico_Producto_Producto_Final_FK FOREIGN KEY ( Producto_Final_PF_id ) REFERENCES Producto_Final ( PF_id );
ALTER TABLE Historico_Profesion ADD CONSTRAINT Historico_Profesion_Diseño_Producto_FK FOREIGN KEY ( Diseño_Producto_DP_id ) REFERENCES Diseño_Producto ( DP_id );
ALTER TABLE Historico_Profesion ADD CONSTRAINT Historico_Profesion_Profesion_FK FOREIGN KEY ( Profesion_Prof_id ) REFERENCES Profesion ( Prof_id );
ALTER TABLE Lote_Produccion ADD CONSTRAINT Lote_Produccion_Compatibilidad_FK FOREIGN KEY ( Compatibilidad_Comp_id, Compatibilidad_Categoria_Cat_id, Compatibilidad_Categoria_Cat_id2 ) REFERENCES Compatibilidad ( Comp_id, Categoria_Cat_id, Categoria_Cat_id2 );
ALTER TABLE Lote_Produccion ADD CONSTRAINT Lote_Produccion_Control_Calidad_FK FOREIGN KEY ( Control_Calidad_CC_id ) REFERENCES Control_Calidad ( CC_id );
ALTER TABLE Lote_Produccion ADD CONSTRAINT Lote_Produccion_Material_FK FOREIGN KEY ( Material_M_id ) REFERENCES Material ( M_id );
ALTER TABLE Lote_Produccion ADD CONSTRAINT Lote_Produccion_Pieza_Caracteristica_FK FOREIGN KEY ( Pieza_Caracteristica_Caracteristica_Car_id, Pieza_Caracteristica_Caracteristica_Diseño_Producto_DP_id, Pieza_Caracteristica_Pieza_Pie_id, Pieza_Caracteristica_Pieza_Categoria_Cat_id, Pieza_Caracteristica_Pieza_Diseño_Producto_DP_id ) REFERENCES Pieza_Caracteristica ( Caracteristica_Car_id, Caracteristica_Diseño_Producto_DP_id, Pieza_Pie_id, Pieza_Categoria_Cat_id, Pieza_Diseño_Producto_DP_id );
ALTER TABLE Lugar ADD CONSTRAINT Lugar_Lugar_FK FOREIGN KEY ( Lugar_L_id ) REFERENCES Lugar ( L_id );
ALTER TABLE Membresia ADD CONSTRAINT Membresia_Cliente_FK FOREIGN KEY ( Cliente_Cl_id ) REFERENCES Cliente ( Cl_id );
ALTER TABLE Metodo_Pago ADD CONSTRAINT Metodo_Pago_Cliente_FK FOREIGN KEY ( Cliente_Cl_id ) REFERENCES Cliente ( Cl_id );
ALTER TABLE Orden_Compra ADD CONSTRAINT Orden_Compra_Cliente_FK FOREIGN KEY ( Cliente_Cl_id ) REFERENCES Cliente ( Cl_id );
ALTER TABLE Pago ADD CONSTRAINT Pago_Compra_BTC_FK FOREIGN KEY ( Compra_BTC_CBTC_id ) REFERENCES Compra_BTC ( CBTC_id );
ALTER TABLE Pago ADD CONSTRAINT Pago_Metodo_Pago_FK FOREIGN KEY ( Metodo_Pago_MP_id ) REFERENCES Metodo_Pago ( MP_id );
ALTER TABLE Pago_nomina ADD CONSTRAINT Pago_nomina_Empleado_FK FOREIGN KEY ( Empleado_Em_id ) REFERENCES Empleado ( Em_id );
ALTER TABLE Pago_nomina ADD CONSTRAINT Pago_nomina_Pre_Nomina_FK FOREIGN KEY ( Pre_Nomina_PN_id ) REFERENCES Pre_Nomina ( PN_id );
ALTER TABLE Pago ADD CONSTRAINT Pago_Orden_Compra_FK FOREIGN KEY ( Orden_Compra_OC_id ) REFERENCES Orden_Compra ( OC_id );
ALTER TABLE Paypal ADD CONSTRAINT Paypal_Metodo_Pago_FK FOREIGN KEY ( MP_id ) REFERENCES Metodo_Pago ( MP_id );
ALTER TABLE Pieza_Caracteristica ADD CONSTRAINT Pieza_Caracteristica_Caracteristica_FK FOREIGN KEY ( Caracteristica_Car_id, Caracteristica_Diseño_Producto_DP_id ) REFERENCES Caracteristica ( Car_id, Diseño_Producto_DP_id );
ALTER TABLE Pieza_Caracteristica ADD CONSTRAINT Pieza_Caracteristica_Pieza_FK FOREIGN KEY ( Pieza_Pie_id, Pieza_Categoria_Cat_id, Pieza_Diseño_Producto_DP_id ) REFERENCES Pieza ( Pie_id, Categoria_Cat_id, Diseño_Producto_DP_id );
ALTER TABLE Pieza ADD CONSTRAINT Pieza_Categoria_FK FOREIGN KEY ( Categoria_Cat_id ) REFERENCES Categoria ( Cat_id );
ALTER TABLE Pieza ADD CONSTRAINT Pieza_Diseño_Producto_FK FOREIGN KEY ( Diseño_Producto_DP_id ) REFERENCES Diseño_Producto ( DP_id );
ALTER TABLE Pre_Nomina ADD CONSTRAINT Pre_Nomina_Tabulador_Oficial_FK FOREIGN KEY ( Tabulador_Oficial_TO_id ) REFERENCES Tabulador_Oficial ( TO_id );
ALTER TABLE Producto_Final ADD CONSTRAINT Producto_Final_Compra_BTC_FK FOREIGN KEY ( Compra_BTC_CBTC_id ) REFERENCES Compra_BTC ( CBTC_id );
ALTER TABLE Producto_Final ADD CONSTRAINT Producto_Final_Exclusividad_Producto_FK FOREIGN KEY ( Exclusividad_Producto_EP_id ) REFERENCES Exclusividad_Producto ( EP_id );
ALTER TABLE Producto_Final ADD CONSTRAINT Producto_Final_Lote_Produccion_FK FOREIGN KEY ( Lote_Produccion_LP_id ) REFERENCES Lote_Produccion ( LP_id );
ALTER TABLE Producto_Final ADD CONSTRAINT Producto_Final_Mercado_Secundario_FK FOREIGN KEY ( Mercado_Secundario_MS_id ) REFERENCES Mercado_Secundario ( MS_id );
ALTER TABLE Producto_Final ADD CONSTRAINT Producto_Final_Orden_Compra_FK FOREIGN KEY ( Orden_Compra_OC_id ) REFERENCES Orden_Compra ( OC_id );
ALTER TABLE Proveedor_Material ADD CONSTRAINT Proveedor_Material_Material_FK FOREIGN KEY ( Material_M_id ) REFERENCES Material ( M_id );
ALTER TABLE Proveedor_Material ADD CONSTRAINT Proveedor_Material_Proveedor_FK FOREIGN KEY ( Proveedor_Prov_id ) REFERENCES Proveedor ( Prov_id );
ALTER TABLE Prueba_Calidad ADD CONSTRAINT Prueba_Calidad_Control_Calidad_FK FOREIGN KEY ( Control_Calidad_CC_id ) REFERENCES Control_Calidad ( CC_id );
ALTER TABLE Prueba_Calidad ADD CONSTRAINT Prueba_Calidad_Defecto_Calidad_FK FOREIGN KEY ( Defecto_Calidad_DC_id ) REFERENCES Defecto_Calidad ( DC_id );
ALTER TABLE Puja ADD CONSTRAINT Puja_Subasta_FK FOREIGN KEY ( Subasta_Su_id ) REFERENCES Subasta ( Su_id );
ALTER TABLE Puja ADD CONSTRAINT Puja_Usuario_FK FOREIGN KEY ( Usuario_U_id ) REFERENCES Usuario ( U_id );
ALTER TABLE Responsable ADD CONSTRAINT Responsable_Cargo_FK FOREIGN KEY ( Cargo_Car_id ) REFERENCES Cargo ( Car_id );
ALTER TABLE Responsable ADD CONSTRAINT Responsable_Empleado_FK FOREIGN KEY ( Empleado_Em_id ) REFERENCES Empleado ( Em_id );
ALTER TABLE Responsable ADD CONSTRAINT Responsable_Fase_Compra_FK FOREIGN KEY ( Fase_Compra_FC_id ) REFERENCES Fase_Compra ( FC_id );
ALTER TABLE Responsable ADD CONSTRAINT Responsable_Fase_Diseno_FK FOREIGN KEY ( Fase_Diseno_FD_id, Fase_Diseno_Fase_F_id, Fase_Diseno_DP_id ) REFERENCES Fase_Diseno ( FD_id, Fase_F_id, Diseño_Producto_DP_id );
ALTER TABLE Responsable ADD CONSTRAINT Responsable_Fase_Logistica_FK FOREIGN KEY ( Fase_Logistica_FL_id, Fase_Logistica_Fase_F_id, Fase_Logistica_DesBTB_id, Fase_Logistica_DesBTC_id ) REFERENCES Fase_Logistica ( FL_id, Fase_F_id, Despacho_BTB_DesBTB_id, Despacho_BTC_DesBTC_id );
ALTER TABLE Responsable ADD CONSTRAINT Responsable_Fase_Operativa_FK FOREIGN KEY ( Fase_Operativa_FO_id, Fase_Operativa_Lote_Produccion_LP_id, Fase_Operativa_Fase_F_id ) REFERENCES Fase_Operativa ( FO_id, Lote_Produccion_LP_id, Fase_F_id );
ALTER TABLE Responsable ADD CONSTRAINT Responsable_Fase_Post_Venta_FK FOREIGN KEY ( Fase_Post_Venta_FPV_id, Fase_Post_Venta_PF_id, Fase_Post_Venta_F_id, Fase_Post_Venta_FC_id ) REFERENCES Fase_Post_Venta ( FPV_id, Producto_Final_PF_id, Fase_F_id, Fase_Compra_FC_id );
ALTER TABLE Rol_Privilegio ADD CONSTRAINT Rol_Privilegio_Privilegio_FK FOREIGN KEY ( Privilegio_Pri_id ) REFERENCES Privilegio ( Pri_id );
ALTER TABLE Rol_Privilegio ADD CONSTRAINT Rol_Privilegio_Rol_FK FOREIGN KEY ( Rol_R_id ) REFERENCES Rol ( R_id );
ALTER TABLE Sede ADD CONSTRAINT Sede_Lugar_FK FOREIGN KEY ( Lugar_L_id ) REFERENCES Lugar ( L_id );
ALTER TABLE Subasta ADD CONSTRAINT Subasta_Producto_Final_FK FOREIGN KEY ( Producto_Final_PF_id ) REFERENCES Producto_Final ( PF_id );
ALTER TABLE Tarjeta_Credito ADD CONSTRAINT Tarjeta_Credito_Metodo_Pago_FK FOREIGN KEY ( MP_id ) REFERENCES Metodo_Pago ( MP_id );
ALTER TABLE Tarjeta_Debito ADD CONSTRAINT Tarjeta_Debito_Metodo_Pago_FK FOREIGN KEY ( MP_id ) REFERENCES Metodo_Pago ( MP_id );
ALTER TABLE Transferencia_Bancaria_Internacional ADD CONSTRAINT Transferencia_Bancaria_Internacional_Metodo_Pago_FK FOREIGN KEY ( MP_id ) REFERENCES Metodo_Pago ( MP_id );
ALTER TABLE Transportista ADD CONSTRAINT Transportista_Despacho_BTB_FK FOREIGN KEY ( Despacho_BTB_DesBTB_id ) REFERENCES Despacho_BTB ( DesBTB_id );
ALTER TABLE Usuario ADD CONSTRAINT Usuario_Cliente_FK FOREIGN KEY ( Cliente_Cl_id ) REFERENCES Cliente ( Cl_id );
ALTER TABLE Usuario ADD CONSTRAINT Usuario_Empleado_FK FOREIGN KEY ( Empleado_Em_id ) REFERENCES Empleado ( Em_id );
ALTER TABLE Usuario ADD CONSTRAINT Usuario_Rol_FK FOREIGN KEY ( Rol_R_id ) REFERENCES Rol ( R_id );
ALTER TABLE Vinculo ADD CONSTRAINT Vinculo_Producto_Final_FK FOREIGN KEY ( Producto_Final_PF_id ) REFERENCES Producto_Final ( PF_id );
ALTER TABLE Vinculo ADD CONSTRAINT Vinculo_Producto_Final_FKv2 FOREIGN KEY ( Producto_Final_PF_id2 ) REFERENCES Producto_Final ( PF_id );