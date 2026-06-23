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

INSERT INTO Diseño_Producto (DP_nombre_comercial, DP_descripcion, DP_fecha_lanzamiento, DP_precio_inicial, DP_manual_instrucciones, DP_ancho_cm, DP_largo_cm, DP_peso_volumetrico, Material_M_id) VALUES
('Barbie Lunar', 'Colección de muñeca Barbie espacial con accesorios brillantes y traje galáctico.', '2026-07-01', 49.99, 'Manual de montaje sencillo para niños mayores de 6 años.', 8.5, 3.2, 1.0, 1),
('Barbie Constructora', 'Colección de muñeca Barbie constructora con accesorios de construcción.', '2026-08-15', 89.50, 'Guía paso a paso con 3 niveles de complejidad.', 15.0, 10.0, 2.5, 1),
('Barbie Artista', 'Colección de muñeca Barbie artista con accesorios de arte y creatividad.', '2026-09-10', 29.90, 'Instrucciones de uso y cuidados para el set.', 25.0, 18.0, 0.9, 1),
('Barbie Piloto de carros', 'Colección de muñeca Barbie piloto de carros con accesorios de conducción.', '2026-07-20', 59.00, 'Manual técnico para ensamblaje y mantenimiento.', 12.0, 6.5, 1.2, 1),
('Barbie Iluminada', 'Figura de colección Barbie con luces LED y articulaciones móviles.', '2026-08-05', 39.75, 'Manual de seguridad y reemplazo de baterías.', 10.0, 4.0, 0.7, 1),
('Barbie Cabaña', 'Cabaña de ensueño de Barbie con cuarto principal, cocina y cuarto de juegos.', '2026-10-01', 79.99, 'Instrucciones de armado y decoración de la Dream House.', 22.0, 16.0, 2.3, 6),
('Barbie Yate', 'Yate de lujo de Barbie con salón, cubierta y accesorios marinos.', '2026-10-15', 54.90, 'Manual de montaje y seguridad para el paseo en yate.', 24.0, 10.0, 2.0, 9),
('Barbie Apartamento', 'Apartamento de lujo de Barbie con sala, cocina, dormitorio y baño moderno.', '2026-11-05', 44.80, 'Manual de montaje, limpieza y exposición segura.', 30.0, 20.0, 3.4, 10),
('Barbie Dream Studio', 'Estudio creativo de Barbie con espacio para diseñar ropa y decorar.', '2026-11-20', 39.95, 'Instrucciones detalladas para montaje y uso creativo.', 18.0, 14.0, 1.1, 8),
('Barbie Dream House Deluxe', 'Dream House Deluxe de Barbie con terraza, piscina y sala de fiestas.', '2026-12-01', 99.99, 'Manual de montaje completo para la casa de Barbie.', 35.0, 25.0, 4.5, 6);
('Ken Lunar', 'Colección de muñeca Ken espacial con un reloj del espacio y traje galáctico.', '2026-07-01', 49.99, 'Manual de montaje sencillo para niños mayores de 6 años.', 9.5, 15.2, 1.0, 1),
('Skipper Lunar', 'Colección de muñeca Skipper espacial con accesorios brillantes y traje galáctico.', '2026-07-01', 49.99, 'Manual de montaje sencillo para niños mayores de 6 años.', 7.5, 13.2, 1.0, 1),
('Stacie Lunar', 'Colección de muñeca Stacie espacial con bolso lunar y traje galactico.', '2026-07-01', 49.99, 'Manual de montaje sencillo para niños mayores de 6 años.', 8.5, 14, 1.0, 1),
('chelsea Lunar', 'Colección de muñeca Chelsea espacial con traje galáctico.', '2026-07-01', 49.99, 'Manual de montaje sencillo para niños mayores de 6 años.', 6.5, 10, 1.0, 1);

-- Insertar características de cuerpo, tonos de piel, moldes de rostro y colores de ojos
INSERT INTO Caracteristica (Car_nombre, Car_descripcion, Diseño_Producto_DP_id) VALUES
('Curvy', 'Tipo de cuerpo Curvy para muñecas con curvas suaves y proporciones modernas.', 11),
('Original', 'Tipo de cuerpo Original clásico de Barbie con proporciones icónicas.', 22),
('Petite', 'Tipo de cuerpo Petite para Barbie con estatura más pequeña y estilizada.', 13),
('Tall', 'Tipo de cuerpo Tall para Barbie con mayor altura y figura esbelta.', 24);

INSERT INTO Caracteristica (Car_nombre, Car_descripcion, Diseño_Producto_DP_id) VALUES
('Claro', 'Tono de piel claro con matices rosados y luminosos.', 11),
('Medio', 'Tono de piel medio con aspecto natural y cálido.', 21),
('Bronceado', 'Tono de piel bronceado con brillo dorado y acabado soleado.', 11),
('Oscuro', 'Tono de piel oscuro con profundidad y riqueza de color.', 22),
('Fantasía', 'Tono de piel fantasía con efecto brillante y divertido.', 23),
('Rubia', 'Tono de piel rubia con matices cálidos y suaves.', 11),
('Morena', 'Tono de piel morena con un tono rico y natural.', 15),
('Almendra', 'Tono de piel almendra con notas neutras y elegantes.', 13),
('Miel Caramelo', 'Tono de piel miel caramelo con brillo cálido y suave.', 24);

INSERT INTO Caracteristica (Car_nombre, Car_descripcion, Diseño_Producto_DP_id) VALUES
('Millie', 'Molde de rostro Millie con rasgos suaves y sonrisa delicada.', 11),
('Mackie', 'Molde de rostro Mackie con mirada vivaz y expresión natural.', 22),
('Superstar', 'Molde de rostro Superstar con estilo glam y labios definidos.', 13),
('Glamour', 'Molde de rostro Glamour con ojos grandes y maquillae llamativa.', 14),
('Radiant', 'Molde de rostro Radiant con tez brillante y mejillas sonrosadas.', 24),
('Bella', 'Molde de rostro Bella con rasgos simétricos y frescura juvenil.', 13),
('Luxe', 'Molde de rostro Luxe con contornos elegantes y mirada sofisticada.', 14),
('Satin', 'Molde de rostro Satin con piel suave y acabado sedoso.', 15),
('Dazzle', 'Molde de rostro Dazzle con ojos chispeantes y energía divertida.', 23),
('Dream', 'Molde de rostro Dream con expresiones soñadoras y delicadas.', 14),
('Twinkle', 'Molde de rostro Twinkle con brillo estelar y encanto juguetón.', 22),
('Sparkle', 'Molde de rostro Sparkle con detalles brillantes y mirada radiante.', 11),
('Bliss', 'Molde de rostro Bliss con sonrisa suave y rasgos armoniosos.', 14),
('Enchanted', 'Molde de rostro Enchanted con aura mágica y facciones delicadas.', 21),
('Mystique', 'Molde de rostro Mystique con mirada profunda y aspecto misterioso.', 12),
('Petite Glam', 'Molde de rostro Petite Glam con rasgos finos y estilo elegante.', 15),
('Pearl', 'Molde de rostro Pearl con piel luminosa y acabado perlado.', 12),
('Coral', 'Molde de rostro Coral con mejillas suaves y tonalidad juvenil.', 15),
('Rose', 'Molde de rostro Rose con tonos rosados y expresión tierna.', 14),
('Frost', 'Molde de rostro Frost con detalles glaseados y estilo moderno.', 23),
('Aurora', 'Molde de rostro Aurora con brillo suave y expresión serena.', 13),
('Velvet', 'Molde de rostro Velvet con piel aterciopelada y rasgos pulidos.', 15),
('Jewel', 'Molde de rostro Jewel con facciones preciosas y mirada intensa.', 24),
('Corazón', 'Molde de rostro Corazón con labios llenos y sonrisa cálida.', 15),
('Luna', 'Molde de rostro Luna con rasgos etéreos y aura delicada.', 12),
('Starlight', 'Molde de rostro Starlight con brillo sutil y expresión soñadora.', 12),
('Marina', 'Molde de rostro Marina con fresco toque marino y estilo sereno.', 22),
('Carly', 'Molde de rostro Carly con mirada dulce y detalle moderno.', 11),
('Mia', 'Molde de rostro Mia con rasgos clásicos y sensación contemporánea.', 21),
('Ariel', 'Molde de rostro Ariel con labios definidos y frescura náutica.', 15),
('Nova', 'Molde de rostro Nova con brillo futurista y acabado suave.', 13),
('Sierra', 'Molde de rostro Sierra con expresiones naturales y estilo relajado.', 13),
('Isla', 'Molde de rostro Isla con sensación tropical y rasgos suaves.', 14),
('Zephyra', 'Molde de rostro Zephyra con aire etéreo y detalles artísticos.', 14),
('Jade', 'Molde de rostro Jade con elegancia mineral y look refinado.', 15),
('Eden', 'Molde de rostro Eden con rasgos suaves y expresión natural.', 13);

INSERT INTO Caracteristica (Car_nombre, Car_descripcion, Diseño_Producto_DP_id) VALUES
('Azul Claro', 'Color de ojos azul claro con efecto transparente.', 15),
('Azul Oscuro', 'Color de ojos azul oscuro con profundidad marina.', 14),
('Verde', 'Color de ojos verde brillante con toque natural.', 11),
('Verde Esmeralda', 'Color de ojos verde esmeralda con brillo intenso.', 12),
('Gris', 'Color de ojos gris suave con estilo moderno.', 14),
('Marrón', 'Color de ojos marrón cálido con mirada acogedora.', 13),
('Avellana', 'Color de ojos avellana con mezcla de tonos tierra.', 15),
('Ámbar', 'Color de ojos ámbar dorado con aspecto cálido.', 11),
('Violeta', 'Color de ojos violeta mágico con un toque fantasía.', 11),
('Rosa', 'Color de ojos rosa pastel con tono encantador.', 12),
('Turquesa', 'Color de ojos turquesa brillante con chispa marina.', 13),
('Azul Petróleo', 'Color de ojos azul petróleo con matices profundos.', 14),
('Verde Oliva', 'Color de ojos verde oliva con tono natural.', 14),
('Gris Plomo', 'Color de ojos gris plomo con estilo sofisticado.', 15),
('Miel', 'Color de ojos miel dorado con calidez suave.', 13),
('Gris Claro', 'Color de ojos gris claro con aire cristalino.', 11),
('Jade', 'Color de ojos jade con tono verde mineral elegante.', 12),
('Lavanda', 'Color de ojos lavanda suave con sensación onírica.', 14),
('Topacio', 'Color de ojos topacio brillante con matices dorados.', 15),
('Esmeralda', 'Color de ojos esmeralda intenso con vibración lujosa.', 13),
('Azul Celeste', 'Color de ojos azul celeste con tono ligero y abierto.', 12),
('Bronce', 'Color de ojos bronce cálido con profundidad natural.', 13),
('Azul Espacial', 'Color de ojos azul profundo galáctico para la línea lunar.', 21);

INSERT INTO Caracteristica_Compatibilidad (
    CarCom_nombre, 
    CarCom_descripcion, 
    Caracteristica_Car_id, 
    Caracteristica_Diseño_Producto_DP_id, 
    Caracteristica_Car_id2, 
    Caracteristica_Diseño_Producto_DP_id2
) VALUES
(
    'Curvy + Claro', 
    'Compatibilidad entre cuerpo Curvy y tono de piel claro.', 
    74, 11, -- 'Curvy' (Muñeca 11: Barbie Lunar)
    78, 11  -- 'Claro' (Muñeca 11: Barbie Lunar) -> MISMO PRODUCTO
),
(
    'Original + Oscuro', 
    'Compatibilidad entre cuerpo Original y tono de piel oscuro.', 
    75, 22, -- 'Original' (Muñeca 22: Skipper Lunar)
    81, 22  -- 'Oscuro' (Muñeca 22: Skipper Lunar) -> MISMO PRODUCTO
),
(
    'Petite + Almendra', 
    'Compatibilidad entre cuerpo Petite y tono de piel almendra.', 
    76, 13, -- 'Petite' (Muñeca 13: Barbie Artista)
    85, 13  -- 'Almendra' (Muñeca 13: Barbie Artista) -> MISMO PRODUCTO
),
(
    'Tall + Miel Caramelo', 
    'Compatibilidad entre cuerpo Tall y tono de piel miel caramelo.', 
    77, 24, -- 'Tall' (Muñeca 24: Chelsea Lunar)
    86, 24  -- 'Miel Caramelo' (Muñeca 24: Chelsea Lunar) -> MISMO PRODUCTO
),
(
    'Millie + Verde', 
    'Molde Millie con ojos verdes para Barbie Lunar.', 
    87, 11, -- 'Millie' (Muñeca 11: Barbie Lunar)
    125, 11 -- 'Verde' (Muñeca 11: Barbie Lunar) -> MISMO PRODUCTO
),
(
    'Superstar + Marrón', 
    'Molde Superstar combinado con ojos marrón.', 
    89, 13, -- 'Superstar' (Muñeca 13: Barbie Artista)
    128, 13 -- 'Marrón' (Muñeca 13: Barbie Artista) -> MISMO PRODUCTO
),
(
    'Glamour + Azul Oscuro', 
    'Molde Glamour con ojos azul oscuro.', 
    90, 14, -- 'Glamour' (Muñeca 14: Barbie Piloto)
    124, 14 -- 'Azul Oscuro' (Muñeca 14: Barbie Piloto) -> MISMO PRODUCTO
),
(
    'Dream + Lavanda', 
    'Molde Dream con ojos lavanda para un aire soñador.', 
    96, 14, -- 'Dream' (Muñeca 14: Barbie Piloto)
    140, 14 -- 'Lavanda' (Muñeca 14: Barbie Piloto) -> MISMO PRODUCTO
),
(
    'Pearl + Jade', 
    'Molde Pearl con ojos jade.', 
    103, 12, -- 'Pearl' (Muñeca 12: Barbie Constructora)
    139, 12  -- 'Jade' (Ojos) (Muñeca 12: Barbie Constructora) -> MISMO PRODUCTO
),
(
    'Mia + Azul Espacial', 
    'Compatibilidad entre el rostro Mia y ojos Azul Espacial.', 
    115, 21, -- 'Mia' (Rostro) (Ken Lunar: 21)
    145, 21  -- 'Azul Espacial' (Ojos) (Ken Lunar: 21) -> ¡MISMO PRODUCTO Y DISTINTA CATEGORÍA!
);

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

INSERT INTO Estado_Despacho_BTC (Despacho_BTC_DesBTC_id, Estado_Est_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Estado_Despacho_BTB (Despacho_BTB_DesBTB_id, Estado_Est_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

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

-- 10 registros para Historico_Empleado
INSERT INTO Historico_Empleado (HEm_fecha_hora_inicio, HEm_fecha_hora_fin, HEm_sueldo, Empleado_Em_id, Cargo_Car_id, Departamento_De_id) VALUES
('2023-01-01 08:00:00','2023-12-31 17:00:00',1500.00,1,1,1),
('2022-02-01 08:00:00','2022-12-31 17:00:00',1400.00,2,2,2),
('2021-03-01 08:00:00','2021-12-31 17:00:00',1350.00,3,3,3),
('2023-04-01 08:00:00','2023-12-31 17:00:00',1450.00,4,4,4),
('2022-05-01 08:00:00','2022-12-31 17:00:00',1420.00,5,5,5),
('2021-06-01 08:00:00','2021-12-31 17:00:00',1380.00,6,6,1),
('2020-07-01 08:00:00','2020-12-31 17:00:00',1320.00,7,7,2),
('2019-08-01 08:00:00','2019-12-31 17:00:00',1300.00,8,8,3),
('2018-09-01 08:00:00','2018-12-31 17:00:00',1280.00,9,9,4),
('2017-10-01 08:00:00','2017-12-31 17:00:00',1340.00,10,10,5);

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

INSERT INTO transportista ("t_id", "t_p_nombre", "t_s_nombre", "t_p_apellido", "t_s_apellido") VALUES 
(1, 'Juan', 'Carlos', 'Martínez', 'Gómez'), 
(2, 'María', 'Fernanda', 'Rodríguez', 'López'), 
(3, 'Luis', null, 'Pérez', 'Ramírez'), 
(4, 'Ana', 'Lucía', 'González', 'Santos'), 
(5, 'Carlos', null, 'Vargas', 'Díaz'), 
(6, 'Elena', 'María', 'Castillo', 'Ortiz'), 
(7, 'Miguel', null, 'Morales', 'Cruz'), 
(8, 'Verónica', 'Patricia', 'Gómez', 'Rojas'), 
(9, 'Rafael', null, 'Torres', 'Campos'), 
(10, 'Paula', 'Andrea', 'Sánchez', 'Pérez');

INSERT INTO Lugar (L_id, L_nombre, L_tipo, Lugar_L_id) VALUES
(1,'Distrito Capital','Estado',NULL),
(2,'Miranda','Estado',NULL),
(3,'Zulia','Estado',NULL),
(4,'Carabobo','Estado',NULL),
(5,'Aragua','Estado',NULL),
(6,'Lara','Estado',NULL),
(7,'Bolívar','Estado',NULL),
(8,'Anzoátegui','Estado',NULL),
(9,'Táchira','Estado',NULL),
(10,'Mérida','Estado',NULL),
(11,'Libertador','Municipio',1),
(12,'Chacao','Municipio',2),
(13,'Sucre','Municipio',2),
(14,'Baruta','Municipio',2),
(15,'Maracaibo','Municipio',3),
(16,'San Francisco','Municipio',3),
(17,'Cabimas','Municipio',3),
(18,'Valencia','Municipio',4),
(19,'Naguanagua','Municipio',4),
(20,'San Diego','Municipio',4),
(21,'Girardot','Municipio',5),
(22,'Santiago Mariño','Municipio',5),
(23,'Iribarren','Municipio',6),
(24,'Palavecino','Municipio',6),
(25,'Caroní','Municipio',7),
(26,'Angostura del Orinoco','Municipio',7),
(27,'Simón Bolívar','Municipio',8),
(28,'Juan Antonio Sotillo','Municipio',8),
(29,'San Cristóbal','Municipio',9),
(30,'Cárdenas','Municipio',9),
(31,'Libertador de Mérida','Municipio',10),
(32,'Alberto Adriani','Municipio',10),
(33,'Altagracia','Parroquia',11),
(34,'Candelaria','Parroquia',11),
(35,'El Valle','Parroquia',11),
(36,'Sucre (Catia)','Parroquia',11),
(37,'Chacao','Parroquia',12),
(38,'Petare','Parroquia',13),
(39,'Leoncio Martínez','Parroquia',13),
(40,'Olebary','Parroquia',15),
(41,'Juana de Ávila','Parroquia',15),
(42,'Chiquinquirá','Parroquia',15),
(43,'San Francisco','Parroquia',16),
(44,'Francisco Ochoa','Parroquia',16),
(45,'San José','Parroquia',18),
(46,'Rafael Urdaneta','Parroquia',18),
(47,'Las Delicias','Parroquia',21),
(48,'Madre María de San José','Parroquia',21),
(49,'Catedral','Parroquia',23),
(50,'Santa Rosa','Parroquia',23),
(51,'Cachamay','Parroquia',25),
(52,'Unare','Parroquia',25),
(53,'Universidad','Parroquia',25),
(54,'El Carmen','Parroquia',27),
(55,'San Cristóbal','Parroquia',27),
(56,'La Concordia','Parroquia',29),
(57,'San Juan Bautista','Parroquia',29),
(58,'Sagrario','Parroquia',31),
(59,'San Juan Bautista','Parroquia',31),
(60,'Gonzalo Picón Febres','Parroquia',31);

INSERT INTO Despacho_BTC (DesBTC_fecha_hora, DesBTC_cantidad_paletas, DesBTC_direccion, DesBTC_peso, DesBTC_costo, DesBTC_numero_tracking, Courier_Cou_id, Lugar_L_id) VALUES
('2026-06-01 08:00:00', 2, 'Av. Libertador 2101, Caracas', 220.5, 1380.00, 'TRK10001', 1, 11),
('2026-06-02 09:30:00', 1, 'Calle Comercio 45, Valencia', 120.0, 760.00, 'TRK10002', 2, 18),
('2026-06-03 11:00:00', 3, 'Av. Universidad 67, Barquisimeto', 320.0, 1750.00, 'TRK10003', 3, 15),
('2026-06-04 14:15:00', 4, 'Calle Bolívar 180, Maracay', 410.0, 2120.00, 'TRK10004', 4, 18),
('2026-06-05 16:45:00', 2, 'Av. Sucre 321, Caracas', 210.5, 1295.00, 'TRK10005', 5, 11),
('2026-06-06 10:20:00', 5, 'Calle San Martín 98, Maracaibo', 525.0, 2740.00, 'TRK10006', 6, 15),
('2026-06-07 12:00:00', 1, 'Av. Las Industrias 200, Valencia', 110.0, 690.00, 'TRK10007', 7, 19),
('2026-06-08 13:30:00', 3, 'Calle Comercio 10, Caracas', 310.0, 1675.00, 'TRK10008', 8, 11),
('2026-06-09 15:00:00', 4, 'Av. 19 de Abril 58, Barquisimeto', 420.0, 2180.00, 'TRK10009', 9, 29),
('2026-06-10 17:45:00', 2, 'Calle del Progreso 12, Maracay', 205.0, 1235.00, 'TRK10010', 10, 18);

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


INSERT INTO Despacho_BTB (DesBTB_fecha_hora, DesBTB_cantidad_paletas, DesBTB_direccion, Orden_Compra_OC_id, Lugar_L_id, Transportista_T_id) VALUES
('2026-06-01 09:00:00', 2, 'Av. Libertador 1201, Caracas', 1, 1, 1),
('2026-06-02 10:30:00', 1, 'Calle Sucre 45, Valencia', 2, 2, 2),
('2026-06-03 11:15:00', 3, 'Av. Bolívar 250, Barquisimeto', 3, 3, 3),
('2026-06-04 08:45:00', 4, 'Calle Real 78, Maracay', 4, 4, 4),
('2026-06-05 14:20:00', 2, 'Av. El Rosario 333, Puerto La Cruz', 5, 5, 5),
('2026-06-06 16:00:00', 5, 'Calle San Martín 190, Maracaibo', 6, 6, 6),
('2026-06-07 09:30:00', 2, 'Av. Las Industrias 505, Valencia', 7, 7, 7),
('2026-06-08 12:00:00', 1, 'Calle Comercio 215, Caracas', 8, 8, 8),
('2026-06-09 15:10:00', 3, 'Av. 19 de Abril 102, Barquisimeto', 9, 9, 9),
('2026-06-10 18:45:00', 4, 'Calle del Progreso 87, Maracay', 10, 10, 10);

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

INSERT INTO Asistencia (A_fecha_hora_llegada, A_fecha_hora_salida, Empleado_Em_id) VALUES
('2026-06-01 08:00:00','2026-06-01 16:00:00',1),
('2026-06-02 08:15:00','2026-06-02 16:15:00',2),
('2026-06-03 07:50:00','2026-06-03 15:50:00',3),
('2026-06-04 08:05:00','2026-06-04 16:05:00',4),
('2026-06-05 08:10:00','2026-06-05 16:10:00',5),
('2026-06-06 08:20:00','2026-06-06 16:20:00',6),
('2026-06-07 08:00:00','2026-06-07 16:00:00',7),
('2026-06-08 08:30:00','2026-06-08 16:30:00',8),
('2026-06-09 07:55:00','2026-06-09 15:55:00',9),
('2026-06-10 08:00:00','2026-06-10 16:00:00',10);

INSERT INTO Profesion (Prof_nombre, Prof_descripcion) VALUES
('Astronauta', 'Explora el espacio y pilota misiones interplanetarias.'),
('Doctora Pediatra', 'Cuida la salud de niños y niñas con cariño y profesionalismo.'),
('Piloto de Aerolínea', 'Vuela aviones comerciales alrededor del mundo.'),
('Ingeniera Aeroespacial', 'Diseña naves y sistemas para misiones espaciales.'),
('Chef Pastelera', 'Crea postres y pasteles artísticos para eventos especiales.'),
('Veterinaria', 'Atiende y cuida animales, desde mascotas hasta criaturas exóticas.'),
('Artista Plástica', 'Crea obras y esculturas para exhibiciones y galerías.'),
('Maestra de STEAM', 'Enseña ciencia, tecnología, ingeniería, arte y matemáticas.'),
('Diseñadora de Moda', 'Diseña ropa y colecciones para pasarelas y muñecas.'),
('Ingeniera en Robótica', 'Construye robots y prototipos para resolver problemas reales');

-- 10 registros de historial de profesión para diseños
INSERT INTO Historico_Profesion (HProf_fecha_inicio, HProf_fecha_fin, Diseño_Producto_DP_id, Profesion_Prof_id) VALUES
('2024-01-01','2024-12-31',1,1),
('2019-08-01','2023-06-01',2,2),
('2022-01-15','2023-01-14',3,3),
('2021-03-01','2022-02-28',4,4),
('2020-07-01','2021-06-30',5,5),
('2025-09-01','2025-10-31',1,6),
('2023-11-01','2024-10-31',3,7),
('2022-02-28','2023-02-28',4,8),
('2021-06-30','2023-12-31',5,9),
('2024-05-31','2020-07-31',2,10);

INSERT INTO Proveedor_Material (Proveedor_Prov_id, Material_M_id) VALUES
(1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(4,6),
(5,7),
(6,8),
(7,9),
(8,10);

INSERT INTO Sede (s_nombre, s_direccion, lugar_l_id) VALUES
('Fabrica Carabobo','Av. 1, Carabobo',4),
('Hub Aragua','Calle 2, Aragua',5),
('Fabrica Lara','Av. 3, Lara',6),
('Hub Zulia','Calle 4, Zulia',3),
('Fabrica Miranda','Av. 5, Miranda',2),
('Hub Distrito Capital','Calle 6,cLibertador',1),
('Fabrica Anzoategui','Av. 7, Simon Bolivar',8),
('Hub Merida','Calle 8, Merida',10),
('Fabrica Tachira','Av. 9, San Cristobal',9),
('Hub Bolivar','Calle 10, Caroni',7);

INSERT INTO Membresia (Mem_nombre, Mem_descripcion) VALUES
('Gold', 'Membresía Gold con beneficios especiales y acceso prioritario.'),
('Platinum', 'Membresía Platinum con descuentos exclusivos y acceso prioritario.');




INSERT INTO Envio (E_numero, E_fecha_hora, Courier_Cou_id, Transportista_T_id) VALUES
('ENV-001', '2026-06-01 10:00:00', 1, 1),
('ENV-002', '2026-06-02 11:30:00', 2, 2),
('ENV-003', '2026-06-03 09:15:00', 3, 3),
('ENV-004', '2026-06-04 14:00:00', 4, 4),
('ENV-005', '2026-06-05 16:45:00', 5, 5),
('ENV-006', '2026-06-06 08:30:00', 6, 6),
('ENV-007', '2026-06-07 12:00:00', 7, 7),
('ENV-008', '2026-06-08 15:20:00', 8, 8),
('ENV-009', '2026-06-09 11:10:00', 9, 9),
('ENV-010', '2026-06-10 17:00:00', 10, 10);

INSERT INTO Estado_Envio (EstEn_fecha_inicio, EstEn_fecha_fin, Envio_E_id, Estado_Est_id) VALUES
('2026-06-01', '2026-06-02', 1, 5),
('2026-06-02', '2026-06-03', 2, 5),
('2026-06-03', '2026-06-04', 3, 5),
('2026-06-04', '2026-06-05', 4, 5),
('2026-06-05', '2026-06-06', 5, 5),
('2026-06-06', '2026-06-07', 6, 5),
('2026-06-07', '2026-06-08', 7, 5),
('2026-06-08', '2026-06-09', 8, 5),
('2026-06-09', '2026-06-10', 9, 5),
('2026-06-10', '2026-06-11', 10, 5);

INSERT INTO Responsable (R_fecha_inicio, R_fecha_fin, Empleado_Em_id, Cargo_Car_id) VALUES
('2026-06-01', '2026-12-31', 1, 1),
('2026-06-02', '2026-12-31', 2, 2),
('2026-06-03', '2026-12-31', 3, 3),
('2026-06-04', '2026-12-31', 4, 4),
('2026-06-05', '2026-12-31', 5, 5),
('2026-06-06', '2026-12-31', 6, 6),
('2026-06-07', '2026-12-31', 7, 7),
('2026-06-08', '2026-12-31', 8, 8),
('2026-06-09', '2026-12-31', 9, 9),
('2026-06-10', '2026-12-31', 10, 10);

-- Insertar categorías principales (padres)
INSERT INTO Categoria (Cat_nombre, Cat_descripcion, Categoria_Cat_id) VALUES
('Propiedad', 'Categoría principal para inmuebles y edificaciones.', NULL),
('Vehículo', 'Categoría principal para medios de transporte.', NULL),
('Accesorio', 'Categoría principal para bolsos, tacones, zarcillos y otros complementos.', NULL),
('Ropa', 'Categoría principal para prendas de vestir.', NULL),
('Muñeca', 'Categoría principal para figuras, muñecas articuladas y personajes de Mattel.', NULL);

INSERT INTO Categoria (Cat_nombre, Cat_descripcion, Categoria_Cat_id) VALUES
-- Hijos de la nueva categoría padre 'Muñeca'
('Muñeca Femenina', 'Modelos y figuras de personajes femeninos.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeca' AND Categoria_Cat_id IS NULL)),
('Muñeco Masculino', 'Modelos y figuras de personajes masculinos.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeca' AND Categoria_Cat_id IS NULL)),

-- Hijos de 'Propiedad'
('Casa', 'Para casas de muñecas y residencias de escala coleccionista.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Propiedad' AND Categoria_Cat_id IS NULL)),
('Apartamento', 'Para apartamentos de Muñecas.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Propiedad' AND Categoria_Cat_id IS NULL)),

-- Hijos de 'Vehículo'
('Carro', 'Para automóviles y vehículos de cuatro ruedas.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Vehículo' AND Categoria_Cat_id IS NULL)),
('Moto', 'Para motocicletas y vehículos de dos ruedas.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Vehículo' AND Categoria_Cat_id IS NULL)),
('Yate', 'Para embarcaciones marítimas y yates de lujo.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Vehículo' AND Categoria_Cat_id IS NULL)),

-- Hijos de 'Ropa'
('Camisa', 'Para partes superiores de vestir, camisas y blusas.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Ropa' AND Categoria_Cat_id IS NULL)),

-- Hijos de 'Accesorio'
('Caña de pescar', 'Accesorio de pesca adaptado a las dinámicas de juego del yate.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Accesorio' AND Categoria_Cat_id IS NULL)),
('Bolso', 'Para bolsos, carteras, mochilas y morrales de colección.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Accesorio' AND Categoria_Cat_id IS NULL));

-- Insertar sub-subcategorías (habitaciones de la casa)
INSERT INTO Categoria (Cat_nombre, Cat_descripcion, Categoria_Cat_id) VALUES
-- Hijos de 'Muñeca Femenina' (Mapeado directo a tus productos del nivel 1)
('Línea Lunar', 'Ediciones espaciales con trajes galácticos y accesorios estelares.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeca Femenina' AND Categoria_Cat_id IS NOT NULL)),
('Línea Lunar', 'Ediciones espaciales masculinas con trajes galácticos y accesorios estelares.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeco Masculino' AND Categoria_Cat_id IS NOT NULL)),

-- Hijos de 'Casa' (Habitaciones y ambientes de las propiedades 16, 18 y 20)
('Línea Construtora', 'Ediciones espaciales con trajes de construcción y accesorios de construccion.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeca Femenina' AND Categoria_Cat_id IS NOT NULL)),
('Línea Constructor', 'Ediciones espaciales con trajes de construcción y accesorios de construccion.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeco Masculino' AND Categoria_Cat_id IS NOT NULL)),

('Línea Artista', 'Ediciones espaciales con accesorios de pintura.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeca Femenina' AND Categoria_Cat_id IS NOT NULL)),
('Línea Artista', 'Ediciones espaciales con accesorios de pintura.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeco Masculino' AND Categoria_Cat_id IS NOT NULL)),

('Línea Piloto de carros', 'Ediciones espaciales con trajes de carrera y accesorios de piloto.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeca Femenina' AND Categoria_Cat_id IS NOT NULL)),
('Línea Piloto de carros', 'Ediciones espaciales con trajes de carrera y accesorios de piloto.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeco Masculino' AND Categoria_Cat_id IS NOT NULL)),

('Línea Iluminada', 'Ediciones espaciales con luces led.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeca Femenina' AND Categoria_Cat_id IS NOT NULL)),
('Línea Iluminada', 'Ediciones espaciales con luces led.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Muñeco Masculino' AND Categoria_Cat_id IS NOT NULL)),

('Habitación', 'Dormitorio o cuarto principal de la casa de muñecas.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Casa' AND Categoria_Cat_id IS NOT NULL)),
('Cocina', 'Área de cocina con gabinetes y accesorios de la casa.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Casa' AND Categoria_Cat_id IS NOT NULL)),
('Baño', 'Cuarto de baño con ducha y lavamanos de la casa.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Casa' AND Categoria_Cat_id IS NOT NULL)),
('Sala', 'Sala de estar o salón de recreación de la casa.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Casa' AND Categoria_Cat_id IS NOT NULL)),

-- Hijos de 'Yate' (Partes específicas para el producto 17)
('Salon', 'Sala de estar o salón de recreación del yate.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Yate' AND Categoria_Cat_id IS NOT NULL)),
('Cubierta', 'Cubierta exterior del yate.', 
    (SELECT Cat_id FROM Categoria WHERE Cat_nombre = 'Yate' AND Categoria_Cat_id IS NOT NULL));


INSERT INTO compatibilidad (categoria_cat_id, categoria_cat_id2) VALUES
(12, 14), -- Yate (12) es compatible con Caña de pescar (14)
(6, 16),  -- Muñeca Femenina (6) es compatible con Línea Lunar Femenina (16)
(7, 17),  -- Muñeco Masculino (7) es compatible con Línea Lunar Masculina (17)
(8, 18),  -- Casa (8) es compatible con Habitación (18)
(8, 19),  -- Casa (8) es compatible con Cocina (19)
(8, 20),  -- Casa (8) es compatible con Baño (20)
(8, 21),  -- Casa (8) es compatible con Sala (21)
(12, 22), -- Yate (12) es compatible con Salon (22)
(12, 23), -- Yate (12) es compatible con Cubierta (23)
(4, 13);  -- Ropa (4) es compatible con Camisa (13)

-- Insertar registros en la entidad Pieza con IDs directos
INSERT INTO Pieza (Pie_fecha_inicio, Pie_fecha_fin, Categoria_Cat_id, Diseño_Producto_DP_id) VALUES
('2026-06-01', '2027-12-31', 5, 10), -- Casa (5), Barbie Dream House Deluxe (10)
('2026-06-01', '2027-12-31', 6, 8),  -- Apartamento (6), Barbie Apartamento (8)
('2026-06-01', '2027-12-31', 7, 4),  -- Carro (7), Barbie Piloto de carros (4)
('2026-06-01', '2027-12-31', 8, 4),  -- Moto (8), Barbie Piloto de carros (4)
('2026-06-01', '2027-12-31', 9, 3),  -- Camisa (9), Barbie Artista (3)
('2026-06-01', '2027-12-31', 10, 1), -- Bolso (10), Barbie Lunar (1)
('2026-06-01', '2027-12-31', 14, 6), -- Sala (14), Barbie Cabaña (6)
('2026-06-01', '2027-12-31', 12, 6), -- Cocina (12), Barbie Cabaña (6)
('2026-06-01', '2027-12-31', 13, 6), -- Baño (13), Barbie Cabaña (6)
('2026-06-01', '2027-12-31', 11, 10),-- Habitación (11), Barbie Dream House Deluxe (10)
('2026-08-15', '2029-08-15', 12, 24),  -- Barbie Constructora (12) en Línea Construtora (24)
('2026-09-10', '2028-12-31', 13, 26),  -- Barbie Artista (13) en Línea Artista (26)
('2026-07-20', '2028-07-20', 14, 28),  -- Barbie Piloto de carros (14) en Línea Piloto de carros (28)
('2026-08-05', '2030-01-01', 15, 30); -- Barbie Iluminada (15) en Línea Iluminada (30)

-- Insertar registros en la entidad Pieza_Caracteristica
INSERT INTO pieza_caracteristica (
    pc_valor, 
    caracteristica_car_id, 
    caracteristica_diseño_producto_dp_id, 
    pieza_pie_id, 
    pieza_categoria_cat_id, 
    pieza_diseño_producto_dp_id
) VALUES
('Tipo de cuerpo', 74, 11, 1, 16, 11),   -- Pieza 1 (dp 11) y Característica 74 (dp 11)
('Tono de piel', 78, 11, 1, 16, 11),     -- Pieza 1 (dp 11) y Característica 78 (dp 11)
('Color de ojos', 145, 21, 2, 17, 21),   -- Pieza 2 (dp 21) y Característica 145 (dp 21)
('Molde de rostro', 101, 12, 11, 24, 12),-- Pieza 11 (dp 12) y Característica 101 (dp 12)
('Tipo de cuerpo', 76, 13, 12, 26, 13),  -- Pieza 12 (dp 13) y Característica 76 (dp 13)
('Color de ojos', 124, 14, 13, 28, 14),  -- Pieza 13 (dp 14) y Característica 124 (dp 14)
('Tono de piel', 84, 15, 14, 30, 15),    -- Pieza 14 (dp 15) y Característica 84 (dp 15)
('Tipo de cuerpo', 75, 22, 15, 16, 22),  -- Pieza 15 (dp 22) y Característica 75 (dp 22)
('Tono de piel', 82, 23, 16, 16, 23),    -- Pieza 16 (dp 23) y Característica 82 (dp 23)
('Tipo de cuerpo', 77, 24, 17, 16, 24);  -- Pieza 17 (dp 24) y Característica 77 (dp 24)
-- Insertar registros en la entidad Lote_Produccion (se crean inicialmente con Control_Calidad_CC_id como NULL)
INSERT INTO lote_produccion (
    lp_fecha_hora, 
    lp_cantidad_producida, 
    material_m_id, 
    compatibilidad_comp_id, 
    compatibilidad_categoria_cat_id, 
    compatibilidad_categoria_cat_id2, 
    pieza_caracteristica_caracteristica_car_id, 
    pieza_caracteristica_caracteristica_diseño_producto_dp_id, 
    pieza_caracteristica_pieza_pie_id, 
    pieza_caracteristica_pieza_categoria_cat_id, 
    pieza_caracteristica_pieza_diseño_producto_dp_id
) VALUES 
('2026-07-02', 1500, 1, 2, 6, 16, 74, 11, 1, 16, 11),   -- Lote 1: Cuerpo Curvy (Plástico ABS)
('2026-07-03', 2500, 2, 2, 6, 16, 75, 22, 15, 16, 22),  -- Lote 2: Cuerpo Original (PVC Flexible)
('2026-09-12', 1800, 1, 13, 6, 26, 76, 13, 12, 26, 13), -- Lote 3: Cuerpo Petite (Plástico ABS)
('2026-07-05', 1200, 1, 2, 6, 16, 77, 24, 17, 16, 24),  -- Lote 4: Cuerpo Tall (Plástico ABS)
('2026-07-04', 3000, 3, 2, 6, 16, 78, 11, 1, 16, 11),   -- Lote 5: Tono de piel Claro (Pintura Acrílica)
('2026-07-06', 1000, 2, 2, 6, 16, 82, 23, 16, 16, 23),  -- Lote 6: Tono de piel Fantasía (PVC Flexible)
('2026-08-08', 2200, 2, 17, 6, 30, 84, 15, 14, 30, 15), -- Lote 7: Tono de piel Morena (PVC Flexible)
('2026-08-18', 1350, 5, 11, 6, 24, 101, 12, 11, 24, 12),-- Lote 8: Rostro Mystique (Nylon)
('2026-09-15', 1600, 3, 15, 6, 28, 124, 14, 13, 28, 14),-- Lote 9: Ojos Azul Oscuro (Pintura Acrílica)
('2026-07-03', 2000, 2, 3, 7, 17, 145, 21, 2, 17, 21);  -- Lote 10: Ojos Azul Espacial (PVC Flexible)

-- Insertar registros en la entidad Control_Calidad (inspecciones post-producción, cada una referencia su lote)
INSERT INTO control_calidad (
    cc_fecha, 
    cc_muestras_inspeccionadas, 
    cc_unidades_rechazadas, 
    cc_unidades_aprobadas, 
    cc_resultado, 
    cc_observaciones, 
    lote_produccion_lp_id
) VALUES 
('2026-07-03', 50, 2, 48, 'Aprobado', 'Defectos menores de rebaba plástica en 2 piezas.', 2),
('2026-07-04', 80, 0, 80, 'Excelente', 'Flexibilidad perfecta, sin burbujas de aire en el PVC.', 3),
('2026-09-13', 60, 5, 55, 'Aprobado', 'Variación leve en el encaje dimensional corregida en lote.', 4),
('2026-07-06', 40, 1, 39, 'Aprobado', 'Acabado superficial óptimo, 1 unidad con raya menor.', 5),
('2026-07-05', 100, 12, 88, 'Condicional', 'Pintura con ligeras manchas; requiere reproceso parcial.', 6),
('2026-07-07', 35, 0, 35, 'Excelente', 'Color perfectamente consistente con la paleta de diseño.', 7),
('2026-08-09', 75, 3, 72, 'Aprobado', 'Tono de piel uniforme en la gran mayoría del muestreo.', 8),
('2026-08-19', 45, 1, 44, 'Aprobado', 'Costuras e implantación de nylon firmes y bien alineadas.', 9),
('2026-09-16', 50, 4, 46, 'Aprobado', 'Centrado de la mirada correcto en la tampografía ocular.', 10),
('2026-07-04', 70, 2, 68, 'Aprobado', 'Pigmentación azul brillante cumple estándares estipulados.', 11);
-- Insertar registros en la entidad Defecto_Calidad
INSERT INTO Defecto_Calidad (DC_fecha_reporte, DC_estado, DC_gravedad, DC_tipo) VALUES
('2026-06-01', 'Reportado', 'Leve', 'Rebaba plástica en el borde del molde'),
('2026-06-02', 'En revisión', 'Moderado', 'Deformación por temperatura en el cuerpo de la pieza'),
('2026-06-03', 'Resuelto', 'Leve', 'Tonalidad de color fuera del rango aceptado'),
('2026-06-04', 'Reportado', 'Crítico', 'Fractura estructural en articulación de brazo'),
('2026-06-05', 'En revisión', 'Moderado', 'Falta de adhesión en la pintura decorativa'),
('2026-06-06', 'Resuelto', 'Leve', 'Pequeñas burbujas en la superficie del PVC'),
('2026-06-07', 'Reportado', 'Crítico', 'Rotura del engranaje de unión en la cabeza'),
('2026-06-08', 'En revisión', 'Moderado', 'Asimetría en el molde del rostro'),
('2026-06-09', 'Resuelto', 'Leve', 'Exceso de material en la zona de costura del accesorio'),
('2026-06-10', 'Reportado', 'Moderado', 'Desprendimiento de nylon del cabello sintético');

INSERT INTO producto_final(
    pf_nombre, 
    pf_era, 
    pf_estado, 
    exclusividad_producto_ep_id, 
    lote_produccion_lp_id, 
    pf_cantidad, 
    pf_precio_actual
    ) VALUES 
('Barbie Lunar', 'Modern', 'NRFB', 1, 2, 1500, 34), 
('Skipper Lunar', 'Modern', 'NRFB', 1, 3, 2500, 30), 
('Barbie Artista', 'Mod', 'NRFB', 2, 4, 1800, 50), 
('Chelsea Lunar', 'SuperStar', 'NRFB', 1, 5, 1200, 27), 
('Barbie Lunar', 'Modern', 'NRFB', 1, 6, 3000, 25), 
('Stacie Lunar', 'Modern', 'NRFB', 4, 7, 1000, 300), 
('Barbie Iluminada', 'Mod', 'NRFB', 3, 8, 2200, 150), 
('Barbie Constructora', 'Vintage', 'NRFB', 2, 9, 1350, 70), 
('Barbie Piloto de carros', 'Vintage', 'NRFB', 1, 10, 1600, 35), 
('Ken Lunar', 'Modern', 'NRFB', 1, 11, 2000, 30);