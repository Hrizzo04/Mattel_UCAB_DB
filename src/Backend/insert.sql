INSERT INTO Cargo (Car_nombre, Car_descripcion) VALUES
('Director General', 'Responsable de la dirección estratégica de MattelUCAB.'),
('Gerente de Planta', 'Supervisa las operaciones de manufactura de juguetes y moldes.'),
('Ingeniero de Moldes', 'Diseña y mantiene los moldes para las ediciones limitadas.'),
('Analista de Calidad', 'Asegura que las piezas cumplan con los estándares de MattelUCAB.'),
('Especialista de Logística', 'Coordina despachos B2B y B2C a nivel nacional e internacional.'),
('Auditor Financiero', 'Verifica el estado de las compras y transacciones del mercado secundario.'),
('Desarrollador de Producto', 'Crea las especificaciones de nuevos accesorios y compatibilidades.'),
('Operador de Inyección', 'Opera las máquinas de inyección de plástico para las piezas.'),
('Atención al Coleccionista', 'Maneja incidencias y dudas del mercado de coleccionistas.'),
('Supervisor de Despacho', 'Controla los inventarios de salida y ruteos de courier.');

INSERT INTO Departamento (De_nombre) VALUES
('I+D'),
('Manufactura y Operaciones'),
('Ingeniería y Diseño'),
('Ventas y Marketing'),
('Logística'),
('Ventas'),
('Recursos Humanos');

INSERT INTO Material (M_nombre, M_descripcion) VALUES
('Plástico ABS', 'Plástico de alta resistencia usado en los bloques y cuerpos principales.'),
('PVC Flexible', 'Utilizado para partes moldeables como rostros y accesorios.'),
('Pintura Acrílica No Tóxica', 'Recubrimiento principal para los detalles de las piezas.'),
('Acero Inoxidable', 'Utilizado en los engranajes y uniones de las piezas articuladas.'),
('Nylon', 'Usado para el cabello sintético de las figuras de edición limitada.'),
('Cartón Corrugado', 'Material principal para los empaques de distribución B2B.'),
('Cartulina Premium', 'Usado en las cajas de exhibición de coleccionistas B2C.'),
('Goma Eva', 'Material de relleno para evitar impactos en el embalaje.'),
('Silicona Grado Médico', 'Utilizado para moldes de alta precisión y ediciones ultra raras.'),
('Policarbonato', 'Plástico transparente de alta resistencia para vitrinas de empaque.');

INSERT INTO Estado (Est_nombre, Est_descripcion) VALUES
('Emitida', 'La orden ha sido creada en el sistema por el cliente o vendedor.'),
('Validada', 'La orden ha sido revisada y aprobada para su procesamiento.'),
('anulada', 'La orden fue declinada por falta de stock.'),
('En Preparación', 'Los artículos están siendo recolectados y empaquetados en almacén.'),
('Despachada', 'La orden ha salido de las instalaciones de manufactura/almacén.'),
('Entregada', 'La orden ha sido recibida físicamente por el cliente B2B.'),
('Facturada', 'Se ha emitido el documento fiscal correspondiente a la orden.'),
('Cobrada', 'El pago ha sido conciliado en el sistema financiero.'),
('Cancelada', 'La orden fue anulada antes de su despacho a petición de las partes.'),
('Devuelta', 'La mercancía fue retornada a la sede tras haber sido entregada.');

INSERT INTO Empleado (Em_p_nombre, Em_s_nombre, Em_p_apellido, Em_s_apellido, Em_sueldo_actual) VALUES
('Roberto', NULL, 'Villanueva', 'Pérez', 1500.00),
('Carmen', NULL, 'Ortega', 'García', 1400.00),
('Luis', NULL, 'Giménez', 'Fernández', 1350.00),
('Andrea', NULL, 'Salazar', 'López', 1450.00),
('Jorge', NULL, 'Bustamante', 'Ramírez', 1420.00),
('Elena', NULL, 'Mendoza', 'Torres', 1380.00),
('David', NULL, 'Castillo', 'Rojas', 1320.00),
('Miguel', NULL, 'Rojas', 'Sánchez', 1300.00),
('Sofía', NULL, 'Pérez', 'Martínez', 1280.00),
('Carlos', NULL, 'Marín', 'Suárez', 1340.00);

INSERT INTO Tabulador_Oficial (TO_sueldo_base_rol, TO_rol) VALUES
(1200.00, 'Administrador'),
(950.00, 'Supervisor'),
(850.00, 'Contador'),
(780.00, 'Vendedor'),
(700.00, 'Auxiliar Administrativo'),
(650.00, 'Auxiliar de Bodega'),
(900.00, 'Analista de Datos'),
(1000.00, 'Coordinador de Proyectos'),
(820.00, 'Técnico de Soporte'),
(720.00, 'Recepcionista');

INSERT INTO Turno (Tu_dia, Tu_hora_inicio, Tu_hora_fin) VALUES
('diurno', '2026-01-01 06:00:00', '2026-01-01 14:00:00'),
('vespertino', '2026-01-01 14:00:00', '2026-01-01 22:00:00'),
('nocturno', '2026-01-01 22:00:00', '2026-01-02 06:00:00');

INSERT INTO Bloqueo (B_fecha_hora_inicio, B_fecha_hora_fin, B_descripcion) VALUES
('2026-06-01 08:00:00', '2026-06-01 12:00:00', 'Bloqueo por verificación de datos fiscales.'),
('2026-06-02 09:00:00', '2026-06-02 11:00:00', 'Bloqueo preventivo por revisión de pagos.'),
('2026-06-03 10:30:00', '2026-06-03 13:00:00', 'Bloqueo por actualización de cuenta.'),
('2026-06-04 14:00:00', '2026-06-04 16:30:00', 'Bloqueo temporal por cambio de dirección.'),
('2026-06-05 08:15:00', '2026-06-05 10:45:00', 'Bloqueo por auditoría interna de la cuenta.'),
('2026-06-06 11:00:00', '2026-06-06 13:00:00', 'Bloqueo temporal por revisión de condiciones de envío.'),
('2026-06-07 09:30:00', '2026-06-07 12:30:00', 'Bloqueo por inconsistencias en la dirección.'),
('2026-06-08 15:00:00', '2026-06-08 18:00:00', 'Bloqueo por validación de identidad.'),
('2026-06-09 07:45:00', '2026-06-09 09:45:00', 'Bloqueo preventivo por crédito pendiente.'),
('2026-06-10 16:00:00', '2026-06-10 18:00:00', 'Bloqueo por mantenimiento del sistema de clientes.');

INSERT INTO Exclusividad_Producto (EP_nombre, EP_cantidad) VALUES
('Pink label', 10),
('Black label', 15),
('Gold label', 20),
('Platinum label', 25),
('Pink label', 12),
('Black label', 18),
('Gold label', 22),
('Platinum label', 30),
('Pink label', 14),
('Gold label', 28);

INSERT INTO Courier (Cou_direccion, Cou_nombre) VALUES
('Av. Libertador 1001, Caracas', 'Courier Express'),
('Calle del Comercio 23, Valencia', 'Envios Rápidos'),
('Av. Universidades 45, Barquisimeto', 'Translog S.A.'),
('Calle Bolívar 87, Maracay', 'Courier Central'),
('Av. Sucre 550, Caracas', 'Servicio 24/7'),
('Calle Principal 432, Valencia', 'Logística Nacional'),
('Av. Los Próceres 120, Maracaibo', 'Courier Plus'),
('Calle Táchira 99, Barquisimeto', 'Entregas Seguras'),
('Av. Miranda 215, Maracay', 'Transportes Globales'),
('Calle 7, Caracas', 'Express Internacional');

INSERT INTO Transportista (T_p_nombre, T_s_nombre, T_p_apellido, T_s_apellido) VALUES
('Juan', 'Carlos', 'Martínez', 'Gómez'),
('María', 'Fernanda', 'Rodríguez', 'López'),
('Luis', NULL, 'Pérez', 'Ramírez'),
('Ana', 'Lucía', 'González', 'Santos'),
('Carlos', NULL, 'Vargas', 'Díaz'),
('Elena', 'María', 'Castillo', 'Ortiz'),
('Miguel', NULL, 'Morales', 'Cruz'),
('Verónica', 'Patricia', 'Gómez', 'Rojas'),
('Rafael', NULL, 'Torres', 'Campos'),
('Paula', 'Andrea', 'Sánchez', 'Pérez');

INSERT INTO Proveedor (Prov_nombre, Prov_direccion) VALUES
('Proveedor Internacional A', 'Av. Libertador 1201, Caracas'),
('Distribuciones Norte S.A.', 'Calle Sucre 45, Valencia'),
('Logística Global C.A.', 'Av. Bolívar 250, Barquisimeto'),
('Suministros Industriales del Centro', 'Calle Real 78, Maracay'),
('Fabrica y Proveedor del Este', 'Av. El Rosario 333, Puerto La Cruz'),
('Almacenes Premium S.A.', 'Calle San Martín 190, Maracaibo'),
('Servicios Logísticos del Oeste', 'Av. Las Industrias 505, Valencia'),
('Cadena de Suministros Plus', 'Calle Comercio 215, Caracas'),
('Importadora y Exportadora Central', 'Av. 19 de Abril 102, Barquisimeto'),
('Proveedor de Componentes C.A.', 'Calle del Progreso 87, Maracay');


-- Inserciones para Pre_Nomina (10 registros) y Pago_nomina (10 registros)
INSERT INTO Pre_Nomina (PN_fecha_hora, PN_total, PN_subtotal, Tabulador_Oficial_TO_id) VALUES
('2026-06-01 09:00:00', 1200.00, 1100.00, 1),
('2026-06-02 09:00:00', 950.00, 850.00, 2),
('2026-06-03 09:00:00', 850.00, 780.00, 3),
('2026-06-04 09:00:00', 780.00, 700.00, 4),
('2026-06-05 09:00:00', 700.00, 650.00, 5),
('2026-06-06 09:00:00', 650.00, 600.00, 6),
('2026-06-07 09:00:00', 900.00, 820.00, 7),
('2026-06-08 09:00:00', 1000.00, 920.00, 8),
('2026-06-09 09:00:00', 820.00, 760.00, 9),
('2026-06-10 09:00:00', 720.00, 680.00, 10);

INSERT INTO Pago_nomina (PaN_monto, Empleado_Em_id, Pre_Nomina_PN_id) VALUES
(1200.00, 1, 1),
(950.00, 2, 2),
(850.00, 3, 3),
(780.00, 4, 4),
(700.00, 5, 5),
(650.00, 6, 6),
(900.00, 7, 7),
(1000.00, 8, 8),
(820.00, 9, 9),
(720.00, 10, 10);


INSERT INTO Fase (F_nombre, F_descripcion) VALUES
('fase operativa', 'Operaciones diarias de planta para manufactura y control de producción.'),
('fase diseno', 'Actividades de diseño, creación de prototipos y validación técnica.'),
('fase logistica', 'Planificación y ejecución de transporte, almacenamiento y despacho.'),
('fase compra', 'Adquisición de insumos y gestión de órdenes de compra de materiales.'),
('fase post venta', 'Atención postventa, garantías y soporte al cliente.');
