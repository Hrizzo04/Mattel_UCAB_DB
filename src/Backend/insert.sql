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
('Gold label', 28);-- Actualizar Pink Label (Sin límite -> NULL)

UPDATE exclusividad_producto 
SET ep_cantidad = 999999999 
WHERE ep_id = 1;

-- Actualizar Black Label (Sin límite/No especificado -> NULL)
UPDATE exclusividad_producto 
SET ep_cantidad = 999999999
WHERE ep_id = 2;

-- Actualizar Gold Label (Límite estricto < 25,000 -> ponemos el tope máximo de 24999 o 25000)
UPDATE exclusividad_producto 
SET ep_cantidad = 25000 
WHERE ep_id = 3;

-- Actualizar Platinum Label (Límite estricto < 1,000 -> ponemos el tope máximo de 999 o 1000)
UPDATE exclusividad_producto 
SET ep_cantidad = 1000 
WHERE ep_id = 4;

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

INSERT INTO responsable 
(
  r_fecha_inicio, 
  r_fecha_fin,
  empleado_em_id,
  cargo_car_id,
  fase_diseno_fd_id,
  fase_diseno_fase_f_id,
  fase_diseno_dp_id,
  fase_operativa_fo_id, 
  fase_operativa_lote_produccion_lp_id, 
  fase_operativa_fase_f_id,
  fase_logistica_fl_id, 
  fase_logistica_fase_f_id, 
  fase_logistica_desbtb_id, 
  fase_logistica_desbtc_id,
  fase_compra_fc_id,
  fase_post_venta_fpv_id, 
  fase_post_venta_pf_id, 
  fase_post_venta_f_id, 
  fase_post_venta_fc_id
) 
VALUES 
-- Registro 1
('2026-01-05', '2026-06-30', 1, 1,   1, 2, 11,   2, 2, 1,   1, 3, 1, NULL,   1,   1, 1, 5, 1),

-- Registro 2
('2026-02-10', '2026-06-30', 2, 2,   2, 2, 12,   3, 3, 1,   2, 3, 2, NULL,   2,   2, 2, 5, 2),

-- Registro 3
('2026-03-01', '2026-06-30', 3, 3,   3, 2, 13,   4, 4, 1,   3, 3, 3, NULL,   3,   3, 3, 5, 3),

-- Registro 4
('2026-01-15', '2026-06-30', 4, 4,   4, 2, 14,   5, 5, 1,   4, 3, 4, NULL,   4,   4, 4, 5, 4),

-- Registro 5
('2026-02-01', '2026-06-30', 5, 5,   5, 2, 15,   6, 6, 1,   5, 3, 5, NULL,   5,   5, 5, 5, 5),

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------
-- Filas del 6 al 10: Usan la segunda tanda de datos existentes reales (Logística B2C)
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------
-- Registro 6
('2026-04-01', '2026-06-30', 6, 6,   6, 2, 16,   7, 7, 1,   6, 3, NULL, 12,  6,   6, 11, 5, 6),

-- Registro 7
('2026-04-15', '2026-06-30', 7, 7,   7, 2, 17,   8, 8, 1,   7, 3, NULL, 13,  7,   7, 12, 5, 7),

-- Registro 8
('2026-05-02', '2026-06-30', 8, 8,   8, 2, 18,   9, 9, 1,   8, 3, NULL, 14,  8,   8, 13, 5, 8),

-- Registro 9
('2026-05-18', '2026-06-30', 9, 9,   9, 2, 19,  10, 10, 1,  9, 3, NULL, 15,  9,   9, 14, 5, 9),

-- Registro 10
('2026-06-01', '2026-06-30', 10, 10, 10, 2, 20,  11, 11, 1, 10, 3, NULL, 16, 10,  10, 15, 5, 10);

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
('Barbie Lunar', 'Modern', 'NRFB', 1, 2, 34), 
('Skipper Lunar', 'Modern', 'NRFB', 1, 3, 30), 
('Barbie Artista', 'Mod', 'NRFB', 2, 4, 50), 
('Chelsea Lunar', 'SuperStar', 'NRFB', 1, 5, 27), 
('Barbie Lunar', 'Modern', 'NRFB', 1, 6, 25), 
('Stacie Lunar', 'Modern', 'NRFB', 4, 7, 300), 
('Barbie Iluminada', 'Mod', 'NRFB', 3, 8, 150), 
('Barbie Constructora', 'Vintage', 'NRFB', 2, 9, 70), 
('Barbie Piloto de carros', 'Vintage', 'NRFB', 1, 10, 35), 
('Ken Lunar', 'Modern', 'NRFB', 1, 11, 30);

INSERT INTO vinculo (
    vi_nombre,
    vi_descripcion,
    producto_final_pf_id, 
    producto_final_pf_id2
) VALUES 
-- Vínculos de Hermana
('hermana','Barbie Lunar es hermana de Skipper Lunar',1, 2),
('hermana','Barbie Lunar es hermana de Chelsea Lunar',1, 4),
('hermana','Barbie Lunar es hermana de Stacie Lunar',1, 6),
('hermana','Skipper Lunar es hermana de Stacie Lunar',2, 4),
('hermana','Stacie Lunar es hermana de Chelsea Lunar',6, 4),

-- Vínculos de Pareja
('pareja','Barbie Lunar es pareja de Ken Lunar',1, 10), -- Corregido el nombre del vínculo según el comentario

-- Vínculos de Amiga
('amiga','Barbie Artista es Amiga de Barbie Constructora',3, 8),
('amiga','Barbie Iluminada es amiga de Barbie piloto de carreras',7, 9), -- Corregido el comentario inconsistente

-- Vínculos de Rival 
('rival', 'Barbie Piloto de carros es rival de Barbie Artista',9,3),  
('rival', 'Barbie Lunar es rival de Barbie Iluminada',5,7);

INSERT INTO historico_producto (
    hp_fecha_hora_lanzamiento,
    hp_precio,
    producto_final_pf_id
) VALUES 
-- Registro 1: Barbie Lunar (Precio: 34.00, ID: 1)
('2026-01-15 08:00:00', 34.00, 1),

-- Registro 2: Skipper Lunar (Precio: 30.00, ID: 2)
('2026-02-10 09:30:00', 30.00, 2),

-- Registro 3: Barbie Artista (Precio: 50.00, ID: 3)
('2026-01-20 14:00:00', 50.00, 3),

-- Registro 4: Chelsea Lunar (Precio: 27.00, ID: 4)
('2026-02-01 10:15:00', 27.00, 4),

-- Registro 5: Barbie Lunar Lote 6 (Precio: 25.00, ID: 5)
('2026-02-15 11:00:00', 25.00, 5),

-- Registro 6: Stacie Lunar (Precio: 300.00, ID: 6)
('2026-02-20 13:45:00', 300.00, 6),

-- Registro 7: Barbie Iluminada (Precio: 150.00, ID: 7)
('2026-03-01 18:30:00', 150.00, 7),

-- Registro 8: Barbie Constructora (Precio: 70.00, ID: 8)
('2026-03-08 07:00:00', 70.00, 8),

-- Registro 9: Barbie Piloto de carros (Precio: 35.00, ID: 9)
('2026-03-15 12:00:00', 35.00, 9),

-- Registro 10: Ken Lunar (Precio: 30.00, ID: 10)
('2026-03-22 15:20:00', 30.00, 10);

INSERT INTO mercado_secundario (
    ms_condicion_fisica,
    ms_precio_actual,
    producto_final_pf_id
) VALUES 
-- Registro 1: Barbie Lunar (Precio orig: 34 -> NRFB: 55.00)
('NRFB', 55.00, 1),

-- Registro 2: Skipper Lunar (Precio orig: 30 -> Mint: 42.00)
('Mint', 42.00, 2),

-- Registro 3: Barbie Artista (Precio orig: 50 -> Mint: 78.00)
('Mint', 78.00, 3),

-- Registro 4: Chelsea Lunar (Precio orig: 27 -> NRFB: 45.00)
('NRFB', 45.00, 4),

-- Registro 5: Barbie Lunar Lote 6 (Precio orig: 25 -> restoration needed por caja rota)
('restoration needed', 18.00, 5),

-- Registro 6: Stacie Lunar [Platinum Exclusivo] (Precio orig: 300 -> NRFB Coleccionista: 680.00)
('NRFB', 680.00, 6),

-- Registro 7: Barbie Iluminada [Gold Exclusivo] (Precio orig: 150 -> Mint Impecable: 290.00)
('Mint', 290.00, 7),

-- Registro 8: Barbie Constructora (Precio orig: 70 -> Mint: 115.00)
('Mint', 115.00, 8),

-- Registro 9: Barbie Piloto de carros (Precio orig: 35 -> NRFB: 60.00)
('NRFB', 60.00, 9),

-- Registro 10: Ken Lunar (Precio orig: 30 -> restoration needed por desgaste)
('restoration needed', 22.00, 10);

INSERT INTO fase_diseno (
    fd_fecha_hora_inicio,
    fd_fecha_hora_fin,
    fase_f_id,
    diseño_producto_dp_id,
    departamento_de_id
) VALUES 
-- Registro 1: Diseño de Barbie Lunar (Lanzamiento: 2026-07-01)
('2026-01-05 08:00:00', '2026-03-20 17:00:00', 2, 11, 1),

-- Registro 2: Diseño de Barbie Constructora (Lanzamiento: 2026-08-15)
('2026-02-10 08:00:00', '2026-05-15 16:30:00', 2, 12, 1),

-- Registro 3: Diseño de Barbie Artista (Lanzamiento: 2026-09-10)
('2026-03-01 09:00:00', '2026-06-12 15:00:00', 2, 13, 1),

-- Registro 4: Diseño de Barbie Piloto de carros (Lanzamiento: 2026-07-20)
('2026-01-15 08:00:00', '2026-04-10 17:00:00', 2, 14, 1),

-- Registro 5: Diseño de Barbie Iluminada (Lanzamiento: 2026-08-05)
('2026-02-01 08:30:00', '2026-05-02 16:00:00', 2, 15, 1),

-- Registro 6: Diseño de Barbie Cabaña (Lanzamiento: 2026-10-01)
('2026-04-01 07:30:00', '2026-07-25 17:00:00', 2, 16, 1),

-- Registro 7: Diseño de Barbie Yate (Lanzamiento: 2026-10-15)
('2026-04-15 08:00:00', '2026-08-10 16:30:00', 2, 17, 1),

-- Registro 8: Diseño de Barbie Apartamento (Lanzamiento: 2026-11-05)
('2026-05-02 08:00:00', '2026-09-05 15:45:00', 2, 18, 1),

-- Registro 9: Diseño de Barbie Dream Studio (Lanzamiento: 2026-11-20)
('2026-05-18 09:00:00', '2026-09-20 17:00:00', 2, 19, 1),

-- Registro 10: Diseño de Barbie Dream House Deluxe (Lanzamiento: 2026-12-01)
('2026-06-01 08:00:00', '2026-10-15 16:00:00', 2, 20, 1);


INSERT INTO fase_logistica (fl_fecha_hora_inicio, fl_fecha_hora_fin, fase_f_id, despacho_btb_desbtb_id, despacho_btc_desbtc_id) VALUES
-- 5 Casos exclusivos para Despachos BTB (BTC queda en NULL)
('2026-06-01 10:00:00', '2026-06-01 14:00:00', 3, 1, NULL),
('2026-06-02 11:00:00', '2026-06-02 15:30:00', 3, 2, NULL),
('2026-06-03 12:00:00', '2026-06-03 16:45:00', 3, 3, NULL),
('2026-06-04 09:00:00', '2026-06-04 13:15:00', 3, 4, NULL),
('2026-06-05 15:00:00', '2026-06-05 19:00:00', 3, 5, NULL),

-- 5 Casos exclusivos para Despachos BTC (BTB queda en NULL)
('2026-06-06 17:00:00', '2026-06-06 21:30:00', 3, NULL, 12),
('2026-06-07 10:00:00', '2026-06-07 14:00:00', 3, NULL, 13),
('2026-06-08 13:00:00', '2026-06-08 17:45:00', 3, NULL, 14),
('2026-06-09 16:00:00', '2026-06-09 20:00:00', 3, NULL, 15),
('2026-06-10 19:00:00', '2026-06-10 23:50:00', 3, NULL, 16);

INSERT INTO fase_operativa 
(
  fase_f_id, 
  departamento_de_id, 
  lote_produccion_lp_id, 
  fo_fecha_hora_inicio, 
  fo_fecha_hora_fin
) 
VALUES 
(1, 2, 2, '2026-07-02 06:00:00', '2026-07-02 14:30:00'),
(1, 2, 3, '2026-07-03 07:00:00', '2026-07-03 15:45:00'),
(1, 2, 4, '2026-09-12 08:00:00', '2026-09-12 17:00:00'),
(1, 2, 5, '2026-07-05 06:30:00', '2026-07-05 13:00:00'),
(1, 2, 6, '2026-07-04 06:00:00', '2026-07-04 18:00:00'),
(1, 2, 7, '2026-07-06 08:00:00', '2026-07-06 12:30:00'),
(1, 2, 8, '2026-08-08 07:00:00', '2026-08-08 16:15:00'),
(1, 2, 9, '2026-08-18 09:00:00', '2026-08-18 15:30:00'),
(1, 2, 10, '2026-09-15 08:30:00', '2026-09-15 16:00:00'),
(1, 2, 11, '2026-07-03 16:00:00', '2026-07-03 23:30:00');

INSERT INTO fase_compra 
(
  fase_f_id, 
  departamento_de_id, 
  orden_compra_oc_id, 
  compra_btc_cbtc_id, 
  fc_fecha_hora_inicio, 
  fc_fecha_hora_fin
) 
VALUES 
(4, 4, NULL, 1, '2026-06-01 10:30:00', '2026-06-01 12:00:00'),
(4, 4, NULL, 2, '2026-06-02 11:30:00', '2026-06-02 13:00:00'),
(4, 4, NULL, 3, '2026-06-03 12:15:00', '2026-06-03 13:00:00'),
(4, 4, NULL, 4, '2026-06-04 13:30:00', '2026-06-04 15:00:00'),
(4, 4, NULL, 5, '2026-06-05 14:30:00', '2026-06-05 16:00:00'),

(4, 4, 1, NULL, '2026-06-01 08:00:00', '2026-06-01 10:00:00'),

(4, 4, 2, NULL, '2026-06-02 08:30:00', '2026-06-02 10:30:00'),

(4, 4, 3, NULL, '2026-06-03 09:00:00', '2026-06-03 11:00:00'),

(4, 4, 4, NULL, '2026-06-04 09:30:00', '2026-06-04 11:30:00'),

(4, 4, 5, NULL, '2026-06-05 10:00:00', '2026-06-05 12:00:00');

INSERT INTO fase_post_venta 
(
  fase_f_id, 
  departamento_de_id, 
  producto_final_pf_id, 
  fase_compra_fc_id, 
  fpv_fecha_hora_inicio, 
  fpv_fecha_hora_fin
) 
VALUES 

(5, 6, 1, 1, '2026-06-10 09:00:00', '2026-06-10 10:30:00'),


(5, 6, 2, 2, '2026-06-11 14:15:00', '2026-06-11 15:00:00'),


(5, 6, 3, 3, '2026-06-12 11:00:00', '2026-06-12 12:45:00'),


(5, 6, 4, 4, '2026-06-15 16:30:00', '2026-06-15 17:15:00'),


(5, 6, 5, 5, '2026-06-16 09:45:00', '2026-06-16 11:15:00'),


(5, 6, 11, 6, '2026-06-18 08:30:00', '2026-06-18 10:00:00'),


(5, 6, 12, 7, '2026-06-19 13:00:00', '2026-06-19 15:30:00'),


(5, 6, 13, 8, '2026-06-22 10:15:00', '2026-06-22 11:30:00'),


(5, 6, 14, 9, '2026-06-23 15:00:00', '2026-06-23 16:00:00'),


(5, 6, 15, 10, '2026-06-24 11:00:00', '2026-06-24 12:15:00');

INSERT INTO responsable 
(
  r_fecha_inicio, 
  r_fecha_fin,
  empleado_em_id,
  cargo_car_id,
  fase_diseno_fd_id,
  fase_diseno_fase_f_id,
  fase_diseno_dp_id,
  fase_operativa_fo_id, 
  fase_operativa_lote_produccion_lp_id, 
  fase_operativa_fase_f_id,
  fase_logistica_fl_id, 
  fase_logistica_fase_f_id, 
  fase_logistica_desbtb_id, 
  fase_logistica_desbtc_id,
  fase_compra_fc_id,
  fase_post_venta_fpv_id, 
  fase_post_venta_pf_id, 
  fase_post_venta_f_id, 
  fase_post_venta_fc_id
) 
VALUES 
-- Registro 1
('2026-01-05', '2026-06-30', 1, 1,   1, 2, 11,   2, 2, 1,   1, 3, 1, NULL,   1,   1, 1, 5, 1),

-- Registro 2
('2026-02-10', '2026-06-30', 2, 2,   2, 2, 12,   3, 3, 1,   2, 3, 2, NULL,   2,   2, 2, 5, 2),

-- Registro 3
('2026-03-01', '2026-06-30', 3, 3,   3, 2, 13,   4, 4, 1,   3, 3, 3, NULL,   3,   3, 3, 5, 3),

-- Registro 4
('2026-01-15', '2026-06-30', 4, 4,   4, 2, 14,   5, 5, 1,   4, 3, 4, NULL,   4,   4, 4, 5, 4),

-- Registro 5
('2026-02-01', '2026-06-30', 5, 5,   5, 2, 15,   6, 6, 1,   5, 3, 5, NULL,   5,   5, 5, 5, 5),

-- Registro 6
('2026-04-01', '2026-06-30', 6, 6,   6, 2, 16,   7, 7, 1,   6, 3, NULL, 12,  6,   6, 11, 5, 6),

-- Registro 7
('2026-04-15', '2026-06-30', 7, 7,   7, 2, 17,   8, 8, 1,   7, 3, NULL, 13,  7,   7, 12, 5, 7),

-- Registro 8
('2026-05-02', '2026-06-30', 8, 8,   8, 2, 18,   9, 9, 1,   8, 3, NULL, 14,  8,   8, 13, 5, 8),

-- Registro 9
('2026-05-18', '2026-06-30', 9, 9,   9, 2, 19,  10, 10, 1,  9, 3, NULL, 15,  9,   9, 14, 5, 9),

-- Registro 10
('2026-06-01', '2026-06-30', 10, 10, 10, 2, 20,  11, 11, 1, 10, 3, NULL, 16, 10,  10, 15, 5, 10);

INSERT INTO asignacion_horario (responsable_r_id, turno_tu_id) VALUES 
(1, 1), --  Turno (Diurno)
(2, 2), --  Turno (Vespertino)
(3, 3), --  Turno (Nocturno)
(4, 1), --  Turno (Diurno)
(5, 2), --  Turno (Vespertino)
(6, 3), --  Turno (Nocturno)
(7, 1), --  Turno (Diurno)
(8, 2), --  Turno (Vespertino)
(9, 3), --  Turno (Nocturno)
(10, 1); -- Turno (Diurno)

INSERT INTO usuario (u_contraseña, u_nombre, rol_r_id, cliente_cl_id, empleado_em_id) VALUES 
  ('admin', 'admin', 'admin', 1, null, 1), 
  ('123', 'Ari', 'Ari', 3, 404, null), 
  ('1', 'e', 'e', 2, 408, null), 
  ('juan', 'juan', 'juan', 1, null, 18), 
  ('123', 'RRHH', 'RRHH', 8, null, 20), 
  ('12345', 'jmckerton0', 'jmckerton0', 2, 1, null), 
  ('12345', 'gcayle1', 'gcayle1', 2, 2, null), 
  ('12345', 'jtertre2', 'jtertre2', 2, 3, null), 
  ('12345', 'scostard3', 'scostard3', 2, 4, null), 
  ('12345', 'gcraigie4', 'gcraigie4', 2, 5, null),
  ('12345', 'rfosdike5', 'rfosdike5', 2, 6, null), 
  ('12345', 'wfaughey6', 'wfaughey6', 2, 7, null), 
  ('12345', 'damos7', 'damos7', 2, 8, null), 
  ('12345', 'agrishkov8', 'agrishkov8', 2, 9, null), 
  ('12345', 'thehir9', 'thehir9', 2, 10, null), 
  ('12345', 'tlearmontha', 'tlearmontha', 2, 11, null), 
  ('12345', 'sosemanb', 'sosemanb', 2, 12, null), 
  ('12345', 'hsuarezc', 'hsuarezc', 2, 13, null), 
  ('12345', 'emarconid', 'emarconid', 2, 14, null), 
  ('12345', 'ecolbrone', 'ecolbrone', 2, 15, null),
  ('12345', 'imegaheyf', 'imegaheyf', 2, 16, null), 
  ('12345', 'rhickissong', 'rhickissong', 2, 17, null), 
  ('12345', 'jhalversenh', 'jhalversenh', 2, 18, null), 
  ('12345', 'astansbyi', 'astansbyi', 2, 19, null), 
  ('12345', 'ddouberdayj', 'ddouberdayj', 2, 20, null), 
  ('12345', 'atompionk', 'atompionk', 2, 21, null), 
  ('12345', 'fguysl', 'fguysl', 2, 22, null), 
  ('12345', 'ncrennanm', 'ncrennanm', 2, 23, null), 
  ('12345', 'cguittetn', 'cguittetn', 2, 24, null), 
  ('12345', 'abunhillo', 'abunhillo', 2, 25, null),
  ('12345', 'erantoulp', 'erantoulp', 2, 26, null), 
  ('12345', 'agumeyq', 'agumeyq', 2, 27, null), 
  ('12345', 'kmcmeekanr', 'kmcmeekanr', 2, 28, null), 
  ('12345', 'amaugers', 'amaugers', 2, 29, null), 
  ('12345', 'erunacrest', 'erunacrest', 2, 30, null), 
  ('12345', 'kkinnieu', 'kkinnieu', 2, 31, null), 
  ('12345', 'jcaronv', 'jcaronv', 2, 32, null), 
  ('12345', 'vowttrimw', 'vowttrimw', 2, 33, null), 
  ('12345', 'spattenx', 'spattenx', 2, 34, null), 
  ('12345', 'mboyfordy', 'mboyfordy', 2, 35, null), 
  ('12345', 'bdonovanz', 'bdonovanz', 2, 36, null), 
  ('12345', 'kcheesworth10', 'kcheesworth10', 2, 37, null), 
  ('12345', 'dpauer11', 'dpauer11', 2, 38, null), 
  ('12345', 'jstanlike12', 'jstanlike12', 2, 39, null), 
  ('12345', 'mkinningley13', 'mkinningley13', 2, 40, null), 
  ('12345', 'traylton14', 'traylton14', 2, 41, null),
  ('12345', 'iizhak15', 2, 42, null), 
  ('12345', 'rcasero16', 2, 43, null), 
  ('12345', 'ptregunnah17', 2, 44, null), 
  ('12345', 'lbullcock18', 2, 45, null), 
  ('12345', 'mwaitland19', 2, 46, null), 
  ('12345', 'epockett1a', 2, 47, null), 
  ('12345', 'ckimm1b', 2, 48, null), 
  ('12345', 'rbennough1c', 2, 49, null), 
  ('12345', 'dberard1d', 2, 50, null), 
  ('12345', 'jsilveston1e', 2, 51, null), 
  ('12345', 'kpenswick1f', 2, 52, null), 
  ('12345', 'dodriscoll1g', 2, 53, null), 
  ('12345', 'afrensch1h', 2, 54, null), 
  ('12345', 'sscholler1i', 2, 55, null), 
  ('12345', 'fclampin1j', 2, 56, null), 
  ('12345', 'gtresler1k', 2, 57, null), 
  ('12345', 'nrate1l', 2, 58, null), 
  ('12345', 'bmogg1m', 2, 59, null), 
  ('12345', 'smatches1n', 2, 60, null), 
  ('12345', 'dcosgriff1o', 2, 61, null), 
  ('12345', 'dtolefree1p', 2, 62, null), 
  ('12345', 'glaurand1q', 2, 63, null), 
  ('12345', 'rganny1r', 2, 64, null), 
  ('12345', 'jdipietro1s', 2, 65, null), 
  ('12345', 'vtaleworth1t', 2, 66, null), 
  ('12345', 'kvakhlov1u', 2, 67, null), 
  ('12345', 'rkitter1v', 2, 68, null), 
  ('12345', 'vhumbatch1w', 2, 69, null), 
  ('12345', 'rrennison1x', 2, 70, null), 
  ('12345', 'dobrian1y', 2, 71, null), 
  ('12345', 'acolisbe1z', 2, 72, null), 
  ('12345', 'mmacuchadair20', 2, 73, null),
  ('12345', 'fdufty21', 2, 74, null), 
  ('12345', 'meland22', 2, 75, null), 
  ('12345', 'sdencs23', 2, 76, null), 
  ('12345', 'aburkman24', 2, 77, null), 
  ('12345', 'rkilshall25', 2, 78, null), 
  ('12345', 'cdullingham26', 2, 79, null), 
  ('12345', 'jnunns27', 2, 80, null), 
  ('12345', 'wscorrer28', 2, 81, null), 
  ('12345', 'kmarnes29', 2, 82, null), 
  ('12345', 'jjachimak2a', 2, 83, null), 
  ('12345', 'rmarte2b', 2, 84, null), 
  ('12345', 'mkiledal2c', 2, 85, null), 
  ('12345', 'fcorbert2d', 2, 86, null), 
  ('12345', 'knorkutt2e', 2, 87, null), 
  ('12345', 'jtassaker2f', 2, 88, null), 
  ('12345', 'wsidaway2g', 2, 89, null), 
  ('12345', 'msimko2h', 2, 90, null), 
  ('12345', 'kveschi2i', 2, 91, null), 
  ('12345', 'rkidd2j', 2, 92, null), 
  ('12345', 'brichmond2k', 2, 93, null), 
  ('12345', 'nberre2l', 2, 94, null), 
  ('12345', 'ceasum2m', 2, 95, null),
  ('12345', 'igorhardt2n', 2, 96, null),
  ('12345', 'agirsch2o', 2, 97, null),
  ('12345', 'hjiroudek2p', 2, 98, null),
  ('12345', 'dpenburton2q', 2, 99, null),
  ('12345', 'bkeetch2r', 2, 100, null),
  ('12345', 'mcarley2s', 2, 101, null),
  ('12345', 'sdimitrov2t', 2, 102, null),
  ('12345', 'bparres2u', 2, 103, null),
  ('12345', 'rtuerena2v', 2, 104, null),
  ('12345', 'saidler2w', 2, 105, null),
  ('12345', 'bpembery2x', 2, 106, null),
  ('12345', 'nabotson2y', 2, 107, null),
  ('12345', 'dierland2z', 2, 108, null),
  ('12345', 'jvannikov30', 2, 109, null),
  ('12345', 'fballard31', 2, 110, null),
  ('12345', 'ihandrick32', 2, 111, null),
  ('12345', 'iworsnip33', 2, 112, null),
  ('12345', 'agerren34', 2, 113, null),
  ('12345', 'aklee35', 2, 114, null),
  ('12345', 'cwittleton36', 2, 115, null),
  ('12345', 'charlock37', 2, 116, null),
  ('12345', 'aninotti38', 2, 117, null),
  ('12345', 'jkershow39', 2, 118, null),
  ('12345', 'omurrhardt3a', 2, 119, null),
  ('12345', 'kwahlberg3b', 2, 120, null),
  ('12345', 'pgrinyakin3c', 2, 121, null),
  ('12345', 'tstuttman3d', 2, 122, null),
  ('12345', 'nkilkenny3e', 2, 123, null),
  ('12345', 'fcoultas3f', 2, 124, null),
  ('12345', 'rmctrustrie3g', 2, 125, null),
  ('12345', 'rmcguffie3h', 2, 126, null),
  ('12345', 'eguyonneau3i', 2, 127, null),
  ('12345', 'lduckerin3j', 2, 128, null),
  ('12345', 'pjeary3k', 2, 129, null),
  ('12345', 'along3l', 2, 130, null),
  ('12345', 'rgraver3m', 2, 131, null),
  ('12345', 'rfroome3n', 2, 132, null),
  ('12345', 'wgerin3o', 2, 133, null),
  ('12345', 'cmidgley3p', 2, 134, null),
  ('12345', 'croth3q', 2, 135, null),
  ('12345', 'gaxleby3r', 2, 136, null),
  ('12345', 'epinchen3s', 2, 137, null),
  ('12345', 'emccutheon3t', 2, 138, null),
  ('12345', 'ipeschmann3u', 2, 139, null),
  ('12345', 'rwhitechurch3v', 2, 140, null),
  ('12345', 'dduckwith3w', 2, 141, null),
  ('12345', 'gblissitt3x', 2, 142, null),
  ('12345', 'rgraysmark3y', 2, 143, null),
  ('12345', 'nhofton3z', 2, 144, null),
  ('12345', 'corder40', 2, 145, null),
  ('12345', 'asoldi41', 2, 146, null),
  ('12345', 'afackney42', 2, 147, null),
  ('12345', 'cmacchaell43', 2, 148, null),
  ('12345', 'hmorl44', 2, 149, null),
  ('12345', 'klismore45', 2, 150, null),
  ('12345', 'dcallendar46', 2, 151, null),
  ('12345', 'rmullaney47', 2, 152, null),
  ('12345', 'mtollow48', 2, 153, null),
  ('12345', 'rvasishchev49', 2, 154, null),
  ('12345', 'eperin4a', 2, 155, null),
  ('12345', 'pgivens4b', 2, 156, null),
  ('12345', 'inoury4c', 2, 157, null),
  ('12345', 'lsiverns4d', 2, 158, null),
  ('12345', 'ecobbled4e', 2, 159, null),
  ('12345', 'asweed4f', 2, 160, null),
  ('12345', 'dlabrum4g', 2, 161, null),
  ('12345', 'hfrantz4h', 2, 162, null),
  ('12345', 'hdominique4i', 2, 163, null),
  ('12345', 'fjovic4j', 2, 164, null),
  ('12345', 'bhember4k', 2, 165, null),
  ('12345', 'ggroveham4l', 2, 166, null),
  ('12345', 'yeltun4m', 2, 167, null),
  ('12345', 'igherardi4n', 2, 168, null),
  ('12345', 'dlugton4o', 2, 169, null),
  ('12345', 'gclaeskens4p', 2, 170, null),
  ('12345', 'dvanbrug4q', 2, 171, null),
  ('12345', 'kthickin4r', 2, 172, null),
  ('12345', 'bthurbon4s', 2, 173, null),
  ('12345', 'rtheaker4t', 2, 174, null),
  ('12345', 'zfalconar4u', 2, 175, null),
  ('12345', 'mbruck4v', 2, 176, null),
  ('12345', 'hdome4w', 2, 177, null),
  ('12345', 'ptipling4x', 2, 178, null),
  ('12345', 'cmacmeeking4y', 2, 179, null),
  ('12345', 'nwashington4z', 2, 180, null),
  ('12345', 'hmoyes50', 2, 181, null),
  ('12345', 'trhoddie51', 2, 182, null),
  ('12345', 'fjuorio52', 2, 183, null),
  ('12345', 'sgandey53', 2, 184, null),
  ('12345', 'jeshelby54', 2, 185, null),
  ('12345', 'dchallens55', 2, 186, null),
  ('12345', 'acortnay56', 2, 187, null),
  ('12345', 'nhorsburgh57', 2, 188, null),
  ('12345', 'ichampagne58', 2, 189, null),
  ('12345', 'mpfaffe59', 2, 190, null),
  ('12345', 'ksibyllina5a', 2, 191, null),
  ('12345', 'jsandeland5b', 2, 192, null),
  ('12345', 'bbanford5c', 2, 193, null),
  ('12345', 'ehallet5d', 2, 194, null),
  ('12345', 'sboncore5e', 2, 195, null),
  ('12345', 'clippiatt5f', 2, 196, null),
  ('12345', 'vmcffaden5g', 2, 197, null),
  ('12345', 'tdermot5h', 2, 198, null),
  ('12345', 'jfantin5i', 2, 199, null),
  ('12345', 'tvalentin5j', 2, 200, null);

  INSERT INTO subasta 
(
  su_precio_base, 
  su_fecha_hora_inicio, 
  su_fecha_hora_cierre, 
  producto_final_pf_id
) 
VALUES 
(30.00, '2026-06-01 10:00:00', '2026-06-08 10:00:00', 1),
(25.00, '2026-06-01 11:00:00', '2026-06-06 11:00:00', 2),
(45.00, '2026-06-01 12:00:00', '2026-06-05 12:00:00', 3),
(20.00, '2026-06-02 09:00:00', '2026-06-09 09:00:00', 4),
(20.00, '2026-06-02 15:30:00', '2026-06-07 15:30:00', 5),
(280.00, '2026-06-03 18:00:00', '2026-06-10 18:00:00', 6),
(140.00, '2026-06-03 20:00:00', '2026-06-08 20:00:00', 7),
(60.00, '2026-06-04 08:00:00', '2026-06-11 08:00:00', 8),
(30.00, '2026-06-04 10:15:00', '2026-06-07 10:15:00', 9),
(25.00, '2026-06-04 14:00:00', '2026-06-11 14:00:00', 10),
(250.00, '2026-06-05 09:00:00', '2026-06-12 09:00:00', 11),
(260.00, '2026-06-05 12:00:00', '2026-06-10 12:00:00', 12),
(150.00, '2026-06-05 17:00:00', '2026-06-12 17:00:00', 13),
(250.00, '2026-06-06 11:30:00', '2026-06-11 11:30:00', 14),
(30.00, '2026-06-06 15:00:00', '2026-06-13 15:00:00', 15),
(160.00, '2026-06-07 10:00:00', '2026-06-14 10:00:00', 16),
(45.00, '2026-06-07 13:00:00', '2026-06-12 13:00:00', 17),
(250.00, '2026-06-07 19:00:00', '2026-06-14 19:00:00', 18),
(30.00, '2026-06-08 08:45:00', '2026-06-13 08:45:00', 19),
(110.00, '2026-06-08 14:00:00', '2026-06-15 14:00:00', 20),
(250.00, '2026-06-09 11:00:00', '2026-06-16 11:00:00', 21),
(200.00, '2026-06-09 16:30:00', '2026-06-14 16:30:00', 22),
(220.00, '2026-06-10 09:00:00', '2026-06-17 09:00:00', 23),
(240.00, '2026-06-10 13:15:00', '2026-06-15 13:15:00', 24),
(220.00, '2026-06-10 18:00:00', '2026-06-17 18:00:00', 25),
(120.00, '2026-06-11 10:00:00', '2026-06-16 10:00:00', 26),
(70.00, '2026-06-11 12:00:00', '2026-06-18 12:00:00', 27),
(110.00, '2026-06-11 15:30:00', '2026-06-16 15:30:00', 28),
(170.00, '2026-06-12 08:00:00', '2026-06-19 08:00:00', 29),
(35.00, '2026-06-12 11:00:00', '2026-06-17 11:00:00', 30),
(160.00, '2026-06-12 16:00:00', '2026-06-19 16:00:00', 31),
(150.00, '2026-06-13 09:30:00', '2026-06-18 09:30:00', 32),
(250.00, '2026-06-13 14:00:00', '2026-06-20 14:00:00', 33),
(60.00, '2026-06-13 17:45:00', '2026-06-18 17:45:00', 34),
(180.00, '2026-06-14 10:00:00', '2026-06-21 10:00:00', 35),
(40.00, '2026-06-14 13:00:00', '2026-06-19 13:00:00', 36),
(230.00, '2026-06-14 19:00:00', '2026-06-21 19:00:00', 37),
(130.00, '2026-06-15 08:15:00', '2026-06-20 08:15:00', 38),
(50.00, '2026-06-15 12:00:00', '2026-06-22 12:00:00', 39),
(170.00, '2026-06-15 16:30:00', '2026-06-20 16:30:00', 40),
(250.00, '2026-06-16 09:00:00', '2026-06-23 09:00:00', 41),
(85.00, '2026-06-16 11:00:00', '2026-06-21 11:00:00', 42),
(270.00, '2026-06-16 15:00:00', '2026-06-23 15:00:00', 43),
(120.00, '2026-06-17 10:30:00', '2026-06-22 10:30:00', 44),
(140.00, '2026-06-17 14:00:00', '2026-06-24 14:00:00', 45),
(200.00, '2026-06-17 18:15:00', '2026-06-22 18:15:00', 46),
(230.00, '2026-06-18 09:00:00', '2026-06-25 09:00:00', 47),
(75.00, '2026-06-18 13:00:00', '2026-06-23 13:00:00', 48),
(100.00, '2026-06-18 17:00:00', '2026-06-25 17:00:00', 49),
(100.00, '2026-06-19 08:45:00', '2026-06-24 08:45:00', 50),
(150.00, '2026-06-19 12:00:00', '2026-06-26 12:00:00', 51),
(20.00, '2026-06-19 15:30:00', '2026-06-24 15:30:00', 52),
(120.00, '2026-06-20 10:00:00', '2026-06-27 10:00:00', 53),
(200.00, '2026-06-20 14:00:00', '2026-06-25 14:00:00', 54),
(200.00, '2026-06-20 19:00:00', '2026-06-27 19:00:00', 55),
(240.00, '2026-06-21 09:15:00', '2026-06-26 09:15:00', 56),
(80.00, '2026-06-21 13:00:00', '2026-06-28 13:00:00', 57),
(90.00, '2026-06-21 16:45:00', '2026-06-26 16:45:00', 58),
(200.00, '2026-06-22 08:00:00', '2026-06-29 08:00:00', 59),
(160.00, '2026-06-22 11:30:00', '2026-06-27 11:30:00', 60),
(250.00, '2026-06-22 15:00:00', '2026-06-29 15:00:00', 61),
(130.00, '2026-06-23 10:00:00', '2026-06-28 10:00:00', 62),
(35.00, '2026-06-23 13:15:00', '2026-06-30 13:15:00', 63),
(100.00, '2026-06-23 17:30:00', '2026-06-28 17:30:00', 64),
(240.00, '2026-06-24 09:00:00', '2026-07-01 09:00:00', 65),
(100.00, '2026-06-24 12:00:00', '2026-06-29 12:00:00', 66),
(270.00, '2026-06-24 16:00:00', '2026-07-01 16:00:00', 67),
(220.00, '2026-06-25 08:30:00', '2026-06-30 08:30:00', 68),
(210.00, '2026-06-25 11:00:00', '2026-07-02 11:00:00', 69),
(180.00, '2026-06-25 14:45:00', '2026-06-30 14:45:00', 70),
(100.00, '2026-06-26 10:00:00', '2026-07-03 10:00:00', 71),
(160.00, '2026-06-26 13:00:00', '2026-07-01 13:00:00', 72),
(190.00, '2026-06-26 18:00:00', '2026-07-03 18:00:00', 73),
(110.00, '2026-06-27 09:15:00', '2026-07-02 09:15:00', 74),
(230.00, '2026-06-27 12:00:00', '2026-07-04 12:00:00', 75),
(240.00, '2026-06-27 16:30:00', '2026-07-02 16:30:00', 76),
(80.00, '2026-06-28 08:00:00', '2026-07-05 08:00:00', 77),
(110.00, '2026-06-28 11:00:00', '2026-07-03 11:00:00', 78),
(50.00, '2026-06-28 15:00:00', '2026-07-05 15:00:00', 79),
(180.00, '2026-06-29 10:15:00', '2026-07-04 10:15:00', 80),
(150.00, '2026-06-29 14:00:00', '2026-07-06 14:00:00', 81),
(260.00, '2026-06-29 18:30:00', '2026-07-04 18:30:00', 82),
(50.00, '2026-06-30 09:00:00', '2026-07-07 09:00:00', 83),
(170.00, '2026-06-30 12:00:00', '2026-07-05 12:00:00', 84),
(270.00, '2026-06-30 16:00:00', '2026-07-07 16:00:00', 85),
(190.00, '2026-07-01 10:00:00', '2026-07-06 10:00:00', 86),
(85.00, '2026-07-01 13:30:00', '2026-07-08 13:30:00', 87),
(110.00, '2026-07-01 17:00:00', '2026-07-06 17:00:00', 88),
(150.00, '2026-07-02 08:45:00', '2026-07-09 08:45:00', 89),
(40.00, '2026-07-02 11:00:00', '2026-07-07 11:00:00', 90),
(160.00, '2026-07-02 15:15:00', '2026-07-09 15:15:00', 91),
(70.00, '2026-07-03 09:00:00', '2026-07-08 09:00:00', 92),
(190.00, '2026-07-03 13:00:00', '2026-07-10 13:00:00', 93),
(65.00, '2026-07-03 17:45:00', '2026-07-08 17:45:00', 94),
(180.00, '2026-07-04 10:00:00', '2026-07-11 10:00:00', 95),
(190.00, '2026-07-04 14:00:00', '2026-07-09 14:00:00', 96),
(75.00, '2026-07-04 19:00:00', '2026-07-11 19:00:00', 97),
(65.00, '2026-07-05 08:30:00', '2026-07-10 08:30:00', 98),
(45.00, '2026-07-05 12:00:00', '2026-07-12 12:00:00', 99),
(55.00, '2026-07-05 16:00:00', '2026-07-10 16:00:00', 100);

INSERT INTO puja (pu_monto, pu_fecha_hora_milisegundo, subasta_su_id, usuario_u_id) VALUES 
-- ==========================================
-- SUBASTA 1 (Base: 30.00 | Inicio: 2026-06-01 10:00:00 | Cierre: 2026-06-08 10:00:00)
-- ==========================================
-- Ronda 1 
(31.50, '2026-06-01 12:00:00', 1, 10), 
(33.00, '2026-06-01 16:00:00', 1, 11), 
(34.50, '2026-06-01 20:00:00', 1, 12), 
(36.00, '2026-06-02 08:00:00', 1, 13),
(37.50, '2026-06-02 12:00:00', 1, 14), 
(39.00, '2026-06-02 16:00:00', 1, 15), 
(40.50, '2026-06-02 20:00:00', 1, 16), 
(42.00, '2026-06-03 08:00:00', 1, 17),
(43.50, '2026-06-03 12:00:00', 1, 18), 
(45.00, '2026-06-03 16:00:00', 1, 19), 
(46.50, '2026-06-03 20:00:00', 1, 20), 
(48.00, '2026-06-04 08:00:00', 1, 21),
(49.50, '2026-06-04 10:00:00', 1, 22), 
(51.00, '2026-06-04 12:00:00', 1, 23), 
(52.50, '2026-06-04 14:00:00', 1, 24), 
(54.00, '2026-06-04 16:00:00', 1, 25),
(55.50, '2026-06-04 17:00:00', 1, 26), 
(57.00, '2026-06-04 18:00:00', 1, 27), 
(58.50, '2026-06-04 19:00:00', 1, 28), 
(60.00, '2026-06-04 20:00:00', 1, 29),
(61.50, '2026-06-05 08:00:00', 1, 30),

-- Ronda 2 
(63.00, '2026-06-05 10:00:00', 1, 10), 
(64.50, '2026-06-05 14:00:00', 1, 11), 
(66.00, '2026-06-05 18:00:00', 1, 12), 
(67.50, '2026-06-06 08:00:00', 1, 13),
(69.00, '2026-06-06 10:00:00', 1, 14), 
(70.50, '2026-06-06 12:00:00', 1, 15), 
(72.00, '2026-06-06 14:00:00', 1, 16), 
(73.50, '2026-06-06 16:00:00', 1, 17),
(75.00, '2026-06-06 18:00:00', 1, 18), 
(76.50, '2026-06-07 08:00:00', 1, 19), 
(78.00, '2026-06-07 09:00:00', 1, 20), 
(79.50, '2026-06-07 10:00:00', 1, 21),
(81.00, '2026-06-07 11:00:00', 1, 22), 
(82.50, '2026-06-07 12:00:00', 1, 23), 
(84.00, '2026-06-07 13:00:00', 1, 24), 
(85.50, '2026-06-07 14:00:00', 1, 25),
(87.00, '2026-06-07 15:00:00', 1, 26), 
(88.50, '2026-06-07 16:00:00', 1, 27), 
(90.00, '2026-06-07 17:00:00', 1, 28), 
(91.50, '2026-06-07 18:00:00', 1, 29),
(93.00, '2026-06-07 19:00:00', 1, 30),

-- Ronda 3 
(94.50, '2026-06-08 09:00:00', 1, 10), 
(96.00, '2026-06-08 09:10:00', 1, 11), 
(97.50, '2026-06-08 09:20:00', 1, 12), 
(99.00, '2026-06-08 09:30:00', 1, 13),
(100.50, '2026-06-08 09:35:00', 1, 14), 
(102.00, '2026-06-08 09:40:00', 1, 15), 
(103.50, '2026-06-08 09:45:00', 1, 16), 
(105.00, '2026-06-08 09:48:00', 1, 17),
(106.50, '2026-06-08 09:50:00', 1, 18), 
(108.00, '2026-06-08 09:52:00', 1, 19), 
(109.50, '2026-06-08 09:54:00', 1, 20), 
(111.00, '2026-06-08 09:55:00', 1, 21),
(112.50, '2026-06-08 09:56:00', 1, 22), 
(114.00, '2026-06-08 09:57:00', 1, 23), 
(115.50, '2026-06-08 09:57:30', 1, 24), 
(117.00, '2026-06-08 09:58:00', 1, 25),
(118.50, '2026-06-08 09:58:30', 1, 26), 
(120.00, '2026-06-08 09:59:00', 1, 27), 
(121.50, '2026-06-08 09:59:30', 1, 28), 
(123.00, '2026-06-08 09:59:45', 1, 29),
(124.50, '2026-06-08 09:59:59', 1, 30),

-- ==========================================
-- SUBASTA 2 (Base: 25.00 | Inicio: 2026-06-01 11:00:00 | Cierre: 2026-06-06 11:00:00)

-- ==========================================

-- Ronda 1 
(26.50, '2026-06-01 12:30:00', 2, 31),
(28.00, '2026-06-01 15:45:00', 2, 32),
(29.50, '2026-06-01 18:20:00', 2, 33),
(31.00, '2026-06-01 21:00:00', 2, 34),
(32.50, '2026-06-02 08:15:00', 2, 35),
(34.00, '2026-06-02 11:00:00', 2, 36),
(35.50, '2026-06-02 14:30:00', 2, 37),
(37.00, '2026-06-02 17:15:00', 2, 38),
(38.50, '2026-06-02 20:00:00', 2, 39),
(40.00, '2026-06-03 08:30:00', 2, 40),
(41.50, '2026-06-03 10:45:00', 2, 41),
(43.00, '2026-06-03 13:10:00', 2, 42),
(44.50, '2026-06-03 15:30:00', 2, 43),
(46.00, '2026-06-03 18:00:00', 2, 44),
(47.50, '2026-06-03 20:45:00', 2, 45),
(49.00, '2026-06-04 07:45:00', 2, 46),
(50.50, '2026-06-04 09:15:00', 2, 47),
(52.00, '2026-06-04 11:30:00', 2, 48),
(53.50, '2026-06-04 13:45:00', 2, 49),
(55.00, '2026-06-04 16:00:00', 2, 50),

-- Ronda 2 
(57.00, '2026-06-04 18:30:00', 2, 31),
(59.00, '2026-06-04 21:00:00', 2, 32),
(61.00, '2026-06-05 08:00:00', 2, 33),
(63.00, '2026-06-05 09:30:00', 2, 34),
(65.00, '2026-06-05 11:00:00', 2, 35),
(67.00, '2026-06-05 12:20:00', 2, 36),
(69.00, '2026-06-05 14:15:00', 2, 37),
(71.00, '2026-06-05 15:45:00', 2, 38),
(73.00, '2026-06-05 17:10:00', 2, 39),
(75.00, '2026-06-05 18:30:00', 2, 40),
(77.00, '2026-06-05 20:00:00', 2, 41),
(79.00, '2026-06-05 21:30:00', 2, 42),
(81.00, '2026-06-06 07:00:00', 2, 43),
(83.00, '2026-06-06 07:30:00', 2, 44),
(85.00, '2026-06-06 08:00:00', 2, 45),
(87.00, '2026-06-06 08:20:00', 2, 46),
(89.00, '2026-06-06 08:40:00', 2, 47),
(91.00, '2026-06-06 09:00:00', 2, 48),
(93.00, '2026-06-06 09:15:00', 2, 49),
(95.00, '2026-06-06 09:30:00', 2, 50),

-- Ronda 3
(97.50, '2026-06-06 09:45:00', 2, 31),
(100.00, '2026-06-06 09:55:00', 2, 32),
(102.50, '2026-06-06 10:05:00', 2, 33),
(105.00, '2026-06-06 10:12:00', 2, 34),
(107.50, '2026-06-06 10:18:00', 2, 35),
(110.00, '2026-06-06 10:25:00', 2, 36),
(112.50, '2026-06-06 10:30:00', 2, 37),
(115.00, '2026-06-06 10:35:00', 2, 38),
(117.50, '2026-06-06 10:39:00', 2, 39),
(120.00, '2026-06-06 10:43:00', 2, 40),
(122.50, '2026-06-06 10:47:00', 2, 41),
(125.00, '2026-06-06 10:50:00', 2, 42),
(127.50, '2026-06-06 10:52:00', 2, 43),
(130.00, '2026-06-06 10:54:30', 2, 44),
(132.50, '2026-06-06 10:56:00', 2, 45),
(135.00, '2026-06-06 10:57:15', 2, 46),
(137.50, '2026-06-06 10:58:30', 2, 47),
(140.00, '2026-06-06 10:59:15', 2, 48),
(143.00, '2026-06-06 10:59:45', 2, 49),
(146.50, '2026-06-06 10:59:59', 2, 50),

-- ==========================================
-- SUBASTA 3 (Base: 45.00 | Inicio: 2026-06-01 12:00:00 | Cierre: 2026-06-05 12:00:00)

-- ==========================================

-- Ronda 1 (
(46.50, '2026-06-01 13:00:00', 3, 52),
(48.00, '2026-06-01 15:30:00', 3, 53),
(49.50, '2026-06-01 18:00:00', 3, 54),
(51.00, '2026-06-01 20:45:00', 3, 55),
(52.50, '2026-06-02 08:15:00', 3, 56),
(54.00, '2026-06-02 10:30:00', 3, 57),
(55.50, '2026-06-02 12:45:00', 3, 58),
(57.00, '2026-06-02 14:15:00', 3, 59),
(58.50, '2026-06-02 16:30:00', 3, 60),
(60.00, '2026-06-02 18:45:00', 3, 61),
(61.50, '2026-06-02 21:00:00', 3, 62),
(63.00, '2026-06-03 07:30:00', 3, 63),
(64.50, '2026-06-03 09:15:00', 3, 64),
(66.00, '2026-06-03 11:00:00', 3, 65),
(67.50, '2026-06-03 12:30:00', 3, 66),
(69.00, '2026-06-03 14:45:00', 3, 67),
(70.50, '2026-06-03 16:20:00', 3, 68),
(72.00, '2026-06-03 18:00:00', 3, 69),
(73.50, '2026-06-03 19:30:00', 3, 70),
(75.00, '2026-06-03 21:15:00', 3, 71),
(76.50, '2026-06-04 07:00:00', 3, 72),

-- Ronda 2 
(78.50, '2026-06-04 08:30:00', 3, 52),
(80.00, '2026-06-04 10:00:00', 3, 53),
(81.50, '2026-06-04 11:20:00', 3, 54),
(83.00, '2026-06-04 12:45:00', 3, 55),
(84.50, '2026-06-04 14:10:00', 3, 56),
(86.00, '2026-06-04 15:30:00', 3, 57),
(87.50, '2026-06-04 16:50:00', 3, 58),
(89.00, '2026-06-04 18:15:00', 3, 59),
(90.50, '2026-06-04 19:30:00', 3, 60),
(92.00, '2026-06-04 20:45:00', 3, 61),
(93.50, '2026-06-05 07:15:00', 3, 62),
(95.00, '2026-06-05 08:00:00', 3, 63),
(96.50, '2026-06-05 08:30:00', 3, 64),
(98.00, '2026-06-05 09:00:00', 3, 65),
(99.50, '2026-06-05 09:25:00', 3, 66),
(101.00, '2026-06-05 09:50:00', 3, 67),
(102.50, '2026-06-05 10:15:00', 3, 68),
(104.00, '2026-06-05 10:35:00', 3, 69),
(105.50, '2026-06-05 10:55:00', 3, 70),
(107.00, '2026-06-05 11:10:00', 3, 71),
(108.50, '2026-06-05 11:25:00', 3, 72),

-- Ronda 3 
(110.00, '2026-06-05 11:30:00', 3, 52),
(111.50, '2026-06-05 11:35:00', 3, 53),
(113.00, '2026-06-05 11:39:00', 3, 54),
(114.50, '2026-06-05 11:43:00', 3, 55),
(116.00, '2026-06-05 11:46:00', 3, 56),
(117.50, '2026-06-05 11:48:30', 3, 57),
(119.00, '2026-06-05 11:50:45', 3, 58),
(120.50, '2026-06-05 11:52:15', 3, 59),
(122.00, '2026-06-05 11:53:30', 3, 60),
(123.50, '2026-06-05 11:54:45', 3, 61),
(125.00, '2026-06-05 11:55:50', 3, 62),
(126.50, '2026-06-05 11:56:40', 3, 63),
(128.00, '2026-06-05 11:57:20', 3, 64),
(129.50, '2026-06-05 11:57:55', 3, 65),
(131.00, '2026-06-05 11:58:25', 3, 66),
(132.50, '2026-06-05 11:58:50', 3, 67),
(134.00, '2026-06-05 11:59:15', 3, 68),
(135.50, '2026-06-05 11:59:35', 3, 69),
(137.00, '2026-06-05 11:59:48', 3, 70),
(138.50, '2026-06-05 11:59:55', 3, 71),
(140.00, '2026-06-05 11:59:59', 3, 72),

-- ==========================================
-- SUBASTA 4 (Base: 20.00 | Inicio: 2026-06-02 09:00:00 | Cierre: 2026-06-09 09:00:00)

-- ==========================================

-- Ronda 1 
(22.00, '2026-06-02 10:30:00', 4, 73),
(24.50, '2026-06-02 14:15:00', 4, 74),
(26.00, '2026-06-02 18:45:00', 4, 75),
(28.50, '2026-06-03 08:20:00', 4, 76),
(31.00, '2026-06-03 11:10:00', 4, 77),
(33.50, '2026-06-03 15:30:00', 4, 78),
(36.00, '2026-06-03 19:45:00', 4, 79),
(38.50, '2026-06-04 07:15:00', 4, 80),
(41.00, '2026-06-04 10:00:00', 4, 81),
(43.50, '2026-06-04 13:20:00', 4, 82),
(45.00, '2026-06-04 16:45:00', 4, 83),
(47.50, '2026-06-04 20:10:00', 4, 84),
(50.00, '2026-06-05 08:30:00', 4, 85),
(52.50, '2026-06-05 12:15:00', 4, 86),
(55.00, '2026-06-05 15:45:00', 4, 87),
(57.50, '2026-06-05 19:20:00', 4, 88),
(60.00, '2026-06-06 09:00:00', 4, 89),
(62.50, '2026-06-06 13:30:00', 4, 90),
(65.00, '2026-06-06 17:15:00', 4, 91),
(67.50, '2026-06-06 20:45:00', 4, 92),

-- Ronda 2 
(70.00, '2026-06-07 08:00:00', 4, 73),
(72.50, '2026-06-07 10:30:00', 4, 74),
(75.00, '2026-06-07 12:45:00', 4, 75),
(77.50, '2026-06-07 14:15:00', 4, 76),
(80.00, '2026-06-07 16:30:00', 4, 77),
(82.50, '2026-06-07 18:20:00', 4, 78),
(85.00, '2026-06-07 20:45:00', 4, 79),
(87.50, '2026-06-08 07:30:00', 4, 80),
(90.00, '2026-06-08 09:15:00', 4, 81),
(92.50, '2026-06-08 10:45:00', 4, 82),
(95.00, '2026-06-08 12:20:00', 4, 83),
(97.50, '2026-06-08 14:00:00', 4, 84),
(100.00, '2026-06-08 15:30:00', 4, 85),
(102.50, '2026-06-08 17:15:00', 4, 86),
(105.00, '2026-06-08 18:45:00', 4, 87),
(107.50, '2026-06-08 20:10:00', 4, 88),
(110.00, '2026-06-08 21:30:00', 4, 89),
(112.50, '2026-06-09 06:45:00', 4, 90),
(115.00, '2026-06-09 07:30:00', 4, 91),
(117.50, '2026-06-09 08:00:00', 4, 92),

-- Ronda 3 
(120.00, '2026-06-09 08:15:00', 4, 73),
(122.50, '2026-06-09 08:25:00', 4, 74),
(125.00, '2026-06-09 08:32:00', 4, 75),
(127.50, '2026-06-09 08:38:00', 4, 76),
(130.00, '2026-06-09 08:42:00', 4, 77),
(132.50, '2026-06-09 08:46:00', 4, 78),
(135.00, '2026-06-09 08:49:00', 4, 79),
(137.50, '2026-06-09 08:51:00', 4, 80),
(140.00, '2026-06-09 08:53:00', 4, 81),
(142.50, '2026-06-09 08:54:30', 4, 82),
(145.00, '2026-06-09 08:55:45', 4, 83),
(147.50, '2026-06-09 08:56:50', 4, 84),
(150.00, '2026-06-09 08:57:30', 4, 85),
(152.50, '2026-06-09 08:58:10', 4, 86),
(155.00, '2026-06-09 08:58:40', 4, 87),
(157.50, '2026-06-09 08:59:05', 4, 88),
(160.00, '2026-06-09 08:59:25', 4, 89),
(162.50, '2026-06-09 08:59:40', 4, 90),
(165.00, '2026-06-09 08:59:52', 4, 91),
(170.00, '2026-06-09 08:59:59', 4, 92),

-- ==========================================
-- SUBASTA 5 (Base: 20.00 | Inicio: 2026-06-02 15:30:00 | Cierre: 2026-06-07 15:30:00)
-- ==========================================

-- Ronda 1 
(21.50, '2026-06-02 16:45:00', 5, 85),
(23.00, '2026-06-02 19:30:00', 5, 86),
(25.50, '2026-06-03 08:15:00', 5, 87),
(28.00, '2026-06-03 11:45:00', 5, 88),
(30.50, '2026-06-03 14:20:00', 5, 89),
(32.00, '2026-06-03 17:00:00', 5, 90),
(34.50, '2026-06-03 20:30:00', 5, 91),
(37.00, '2026-06-04 07:45:00', 5, 92),
(39.50, '2026-06-04 10:15:00', 5, 93),
(42.00, '2026-06-04 12:50:00', 5, 94),
(44.50, '2026-06-04 15:30:00', 5, 95),
(47.00, '2026-06-04 18:10:00', 5, 96),
(49.50, '2026-06-04 21:00:00', 5, 97),
(52.00, '2026-06-05 08:30:00', 5, 98),
(54.50, '2026-06-05 11:15:00', 5, 99),
(57.00, '2026-06-05 14:00:00', 5, 100),
(59.50, '2026-06-05 16:45:00', 5, 101),
(62.00, '2026-06-05 19:30:00', 5, 102),
(64.50, '2026-06-06 08:15:00', 5, 103),
(67.00, '2026-06-06 10:45:00', 5, 104),

-- Ronda 2 
(69.50, '2026-06-06 12:30:00', 5, 85),
(72.00, '2026-06-06 14:15:00', 5, 86),
(74.50, '2026-06-06 15:45:00', 5, 87),
(77.00, '2026-06-06 17:20:00', 5, 88),
(79.50, '2026-06-06 18:50:00', 5, 89),
(82.00, '2026-06-06 20:30:00', 5, 90),
(84.50, '2026-06-07 07:15:00', 5, 91),
(87.00, '2026-06-07 08:30:00', 5, 92),
(89.50, '2026-06-07 09:45:00', 5, 93),
(92.00, '2026-06-07 10:50:00', 5, 94),
(94.50, '2026-06-07 11:30:00', 5, 95),
(97.00, '2026-06-07 12:15:00', 5, 96),
(99.50, '2026-06-07 13:00:00', 5, 97),
(102.00, '2026-06-07 13:40:00', 5, 98),
(104.50, '2026-06-07 14:10:00', 5, 99),
(107.00, '2026-06-07 14:35:00', 5, 100),
(109.50, '2026-06-07 14:50:00', 5, 101),
(112.00, '2026-06-07 15:00:00', 5, 102),
(114.50, '2026-06-07 15:05:00', 5, 103),
(117.00, '2026-06-07 15:10:00', 5, 104),

-- Ronda 3 
(119.50, '2026-06-07 15:12:00', 5, 85),
(122.00, '2026-06-07 15:14:00', 5, 86),
(124.50, '2026-06-07 15:16:30', 5, 87),
(127.00, '2026-06-07 15:18:45', 5, 88),
(129.50, '2026-06-07 15:20:15', 5, 89),
(132.00, '2026-06-07 15:22:00', 5, 90),
(134.50, '2026-06-07 15:23:30', 5, 91),
(137.00, '2026-06-07 15:24:45', 5, 92),
(139.50, '2026-06-07 15:25:50', 5, 93),
(142.00, '2026-06-07 15:26:40', 5, 94),
(144.50, '2026-06-07 15:27:15', 5, 95),
(147.00, '2026-06-07 15:27:45', 5, 96),
(149.50, '2026-06-07 15:28:10', 5, 97),
(152.00, '2026-06-07 15:28:35', 5, 98),
(154.50, '2026-06-07 15:29:00', 5, 99),
(157.00, '2026-06-07 15:29:20', 5, 100),
(159.50, '2026-06-07 15:29:35', 5, 101),
(162.00, '2026-06-07 15:29:48', 5, 102),
(164.50, '2026-06-07 15:29:55', 5, 103),
(170.00, '2026-06-07 15:29:59', 5, 104);

-- ==========================================
-- SUBASTA 6 (Base: 280.00 | Inicio: 03-06-2026 18:00 | Cierre: 10-06-2026 18:00)

-- ==========================================
-- Ronda 1
(285.00, '2026-06-04 09:00:00', 6, 10), (290.00, '2026-06-04 11:30:00', 6, 11),
(295.00, '2026-06-04 14:15:00', 6, 12), (300.00, '2026-06-04 16:45:00', 6, 13),
(305.00, '2026-06-04 19:20:00', 6, 14), (310.00, '2026-06-05 08:30:00', 6, 15),
(315.00, '2026-06-05 11:00:00', 6, 16), (320.00, '2026-06-05 14:10:00', 6, 17),
(325.00, '2026-06-05 17:30:00', 6, 18), (330.00, '2026-06-05 20:00:00', 6, 19),
(335.00, '2026-06-06 09:15:00', 6, 20), (340.00, '2026-06-06 12:45:00', 6, 21),
(345.00, '2026-06-06 15:20:00', 6, 22), (350.00, '2026-06-06 18:00:00', 6, 23),
(355.00, '2026-06-07 08:10:00', 6, 24), (360.00, '2026-06-07 11:30:00', 6, 25),
(365.00, '2026-06-07 14:45:00', 6, 26), (370.00, '2026-06-07 17:15:00', 6, 27),
(375.00, '2026-06-07 19:50:00', 6, 28), (380.00, '2026-06-08 07:30:00', 6, 29),
-- Ronda 2 
(385.00, '2026-06-08 10:15:00', 6, 10), (390.00, '2026-06-08 12:40:00', 6, 11),
(395.00, '2026-06-08 15:20:00', 6, 12), (400.00, '2026-06-08 18:10:00', 6, 13),
(405.00, '2026-06-08 20:30:00', 6, 14), (410.00, '2026-06-09 08:00:00', 6, 15),
(415.00, '2026-06-09 10:20:00', 6, 16), (420.00, '2026-06-09 12:35:00', 6, 17),
(425.00, '2026-06-09 14:50:00', 6, 18), (430.00, '2026-06-09 17:10:00', 6, 19),
(435.00, '2026-06-09 19:25:00', 6, 20), (440.00, '2026-06-10 07:15:00', 6, 21),
(445.00, '2026-06-10 09:30:00', 6, 22), (450.00, '2026-06-10 11:45:00', 6, 23),
(455.00, '2026-06-10 13:00:00', 6, 24), (460.00, '2026-06-10 14:15:00', 6, 25),
(465.00, '2026-06-10 15:30:00', 6, 26), (470.00, '2026-06-10 16:40:00', 6, 27),
(475.00, '2026-06-10 17:00:00', 6, 28), (480.00, '2026-06-10 17:15:00', 6, 29),
-- Ronda 3
(485.00, '2026-06-10 17:20:00', 6, 10), (490.00, '2026-06-10 17:25:00', 6, 11),
(495.00, '2026-06-10 17:30:00', 6, 12), (500.00, '2026-06-10 17:35:00', 6, 13),
(505.00, '2026-06-10 17:38:00', 6, 14), (510.00, '2026-06-10 17:41:00', 6, 15),
(515.00, '2026-06-10 17:44:00', 6, 16), (520.00, '2026-06-10 17:47:00', 6, 17),
(525.00, '2026-06-10 17:49:00', 6, 18), (530.00, '2026-06-10 17:51:00', 6, 19),
(535.00, '2026-06-10 17:53:00', 6, 20), (540.00, '2026-06-10 17:54:30', 6, 21),
(545.00, '2026-06-10 17:55:45', 6, 22), (550.00, '2026-06-10 17:56:50', 6, 23),
(555.00, '2026-06-10 17:57:30', 6, 24), (560.00, '2026-06-10 17:58:15', 6, 25),
(565.00, '2026-06-10 17:58:45', 6, 26), (570.00, '2026-06-10 17:59:15', 6, 27),
(575.00, '2026-06-10 17:59:45', 6, 28), (580.00, '2026-06-10 17:59:59', 6, 29),

-- ==========================================
-- SUBASTA 7 (Base: 140.00 | Inicio: 03-06-2026 20:00 | Cierre: 08-06-2026 20:00)

-- ==========================================
-- Ronda 1
(142.00, '2026-06-04 08:00:00', 7, 30), (145.00, '2026-06-04 11:15:00', 7, 31),
(148.00, '2026-06-04 14:30:00', 7, 32), (151.00, '2026-06-04 17:45:00', 7, 33),
(154.00, '2026-06-04 20:10:00', 7, 34), (157.00, '2026-06-05 07:45:00', 7, 35),
(160.00, '2026-06-05 10:20:00', 7, 36), (163.00, '2026-06-05 13:00:00', 7, 37),
(166.00, '2026-06-05 15:40:00', 7, 38), (169.00, '2026-06-05 18:15:00', 7, 39),
(172.00, '2026-06-05 20:50:00', 7, 40), (175.00, '2026-06-06 08:30:00', 7, 41),
(178.00, '2026-06-06 11:10:00', 7, 42), (181.00, '2026-06-06 13:45:00', 7, 43),
(184.00, '2026-06-06 16:20:00', 7, 44), (187.00, '2026-06-06 19:00:00', 7, 45),
(190.00, '2026-06-07 08:15:00', 7, 46), (193.00, '2026-06-07 10:50:00', 7, 47),
(196.00, '2026-06-07 13:30:00', 7, 48), (199.00, '2026-06-07 16:15:00', 7, 49),
-- Ronda 2
(202.00, '2026-06-07 18:40:00', 7, 30), (205.00, '2026-06-07 21:00:00', 7, 31),
(208.00, '2026-06-08 07:20:00', 7, 32), (211.00, '2026-06-08 08:45:00', 7, 33),
(214.00, '2026-06-08 10:10:00', 7, 34), (217.00, '2026-06-08 11:30:00', 7, 35),
(220.00, '2026-06-08 12:45:00', 7, 36), (223.00, '2026-06-08 14:00:00', 7, 37),
(226.00, '2026-06-08 15:15:00', 7, 38), (229.00, '2026-06-08 16:30:00', 7, 39),
(232.00, '2026-06-08 17:15:00', 7, 40), (235.00, '2026-06-08 17:50:00', 7, 41),
(238.00, '2026-06-08 18:20:00', 7, 42), (241.00, '2026-06-08 18:45:00', 7, 43),
(244.00, '2026-06-08 19:05:00', 7, 44), (247.00, '2026-06-08 19:20:00', 7, 45),
(250.00, '2026-06-08 19:35:00', 7, 46), (253.00, '2026-06-08 19:45:00', 7, 47),
(256.00, '2026-06-08 19:50:00', 7, 48), (259.00, '2026-06-08 19:52:00', 7, 49),
-- Ronda 3 
(262.00, '2026-06-08 19:53:00', 7, 30), (265.00, '2026-06-08 19:54:00', 7, 31),
(268.00, '2026-06-08 19:54:45', 7, 32), (271.00, '2026-06-08 19:55:30', 7, 33),
(274.00, '2026-06-08 19:56:00', 7, 34), (277.00, '2026-06-08 19:56:30', 7, 35),
(280.00, '2026-06-08 19:57:00', 7, 36), (283.00, '2026-06-08 19:57:20', 7, 37),
(286.00, '2026-06-08 19:57:40', 7, 38), (289.00, '2026-06-08 19:58:00', 7, 39),
(292.00, '2026-06-08 19:58:15', 7, 40), (295.00, '2026-06-08 19:58:30', 7, 41),
(298.00, '2026-06-08 19:58:45', 7, 42), (301.00, '2026-06-08 19:59:00', 7, 43),
(304.00, '2026-06-08 19:59:15', 7, 44), (307.00, '2026-06-08 19:59:30', 7, 45),
(310.00, '2026-06-08 19:59:40', 7, 46), (313.00, '2026-06-08 19:59:50', 7, 47),
(316.00, '2026-06-08 19:59:55', 7, 48), (320.00, '2026-06-08 19:59:59', 7, 49),

-- ==========================================
-- SUBASTA 8 (Base: 60.00 | Inicio: 04-06-2026 08:00 | Cierre: 11-06-2026 08:00)

-- ==========================================
-- Ronda 1
(62.00, '2026-06-04 10:30:00', 8, 50), (64.00, '2026-06-04 14:15:00', 8, 51),
(66.00, '2026-06-04 18:00:00', 8, 52), (68.00, '2026-06-05 08:20:00', 8, 53),
(70.00, '2026-06-05 12:45:00', 8, 54), (72.00, '2026-06-05 17:10:00', 8, 55),
(74.00, '2026-06-06 09:30:00', 8, 56), (76.00, '2026-06-06 14:00:00', 8, 57),
(78.00, '2026-06-06 18:25:00', 8, 58), (80.00, '2026-06-07 08:45:00', 8, 59),
(82.00, '2026-06-07 13:15:00', 8, 60), (84.00, '2026-06-07 17:50:00', 8, 61),
(86.00, '2026-06-08 08:10:00', 8, 62), (88.00, '2026-06-08 12:30:00', 8, 63),
(90.00, '2026-06-08 16:45:00', 8, 64), (92.00, '2026-06-09 09:00:00', 8, 65),
(94.00, '2026-06-09 13:20:00', 8, 66), (96.00, '2026-06-09 17:40:00', 8, 67),
(98.00, '2026-06-10 08:15:00', 8, 68), (100.00, '2026-06-10 11:30:00', 8, 69),
-- Ronda 2
(102.00, '2026-06-10 14:45:00', 8, 50), (104.00, '2026-06-10 17:00:00', 8, 51),
(106.00, '2026-06-10 19:15:00', 8, 52), (108.00, '2026-06-11 06:10:00', 8, 53),
(110.00, '2026-06-11 06:25:00', 8, 54), (112.00, '2026-06-11 06:40:00', 8, 55),
(114.00, '2026-06-11 06:55:00', 8, 56), (116.00, '2026-06-11 07:10:00', 8, 57),
(118.00, '2026-06-11 07:20:00', 8, 58), (120.00, '2026-06-11 07:28:00', 8, 59),
(122.00, '2026-06-11 07:35:00', 8, 60), (124.00, '2026-06-11 07:42:00', 8, 61),
(126.00, '2026-06-11 07:48:00', 8, 62), (128.00, '2026-06-11 07:52:00', 8, 63),
(130.00, '2026-06-11 07:55:00', 8, 64), (132.00, '2026-06-11 07:56:00', 8, 65),
(134.00, '2026-06-11 07:57:00', 8, 66), (136.00, '2026-06-11 07:57:30', 8, 67),
(138.00, '2026-06-11 07:58:00', 8, 68), (140.00, '2026-06-11 07:58:20', 8, 69),
-- Ronda 3 
(142.00, '2026-06-11 07:58:40', 8, 50), (144.00, '2026-06-11 07:58:55', 8, 51),
(146.00, '2026-06-11 07:59:10', 8, 52), (148.00, '2026-06-11 07:59:20', 8, 53),
(150.00, '2026-06-11 07:59:28', 8, 54), (152.00, '2026-06-11 07:59:35', 8, 55),
(154.00, '2026-06-11 07:59:40', 8, 56), (156.00, '2026-06-11 07:59:44', 8, 57),
(158.00, '2026-06-11 07:59:47', 8, 58), (160.00, '2026-06-11 07:59:49', 8, 59),
(162.00, '2026-06-11 07:59:51', 8, 60), (164.00, '2026-06-11 07:59:52', 8, 61),
(166.00, '2026-06-11 07:59:53', 8, 62), (168.00, '2026-06-11 07:59:54', 8, 63),
(170.00, '2026-06-11 07:59:55', 8, 64), (172.00, '2026-06-11 07:59:56', 8, 65),
(174.00, '2026-06-11 07:59:57', 8, 66), (176.00, '2026-06-11 07:59:58', 8, 67),
(178.00, '2026-06-11 07:59:59', 8, 68), (180.00, '2026-06-11 07:59:59', 8, 69),

-- ==========================================
-- SUBASTA 9 (Base: 30.00 | Inicio: 04-06-2026 10:15 | Cierre: 07-06-2026 10:15)

-- ==========================================
-- Ronda 1
(32.00, '2026-06-04 11:00:00', 9, 70), (34.00, '2026-06-04 12:30:00', 9, 71),
(36.00, '2026-06-04 14:15:00', 9, 72), (38.00, '2026-06-04 16:00:00', 9, 73),
(40.00, '2026-06-04 17:45:00', 9, 74), (42.00, '2026-06-04 19:20:00', 9, 75),
(44.00, '2026-06-05 08:10:00', 9, 76), (46.00, '2026-06-05 09:45:00', 9, 77),
(48.00, '2026-06-05 11:30:00', 9, 78), (50.00, '2026-06-05 13:15:00', 9, 79),
(52.00, '2026-06-05 15:00:00', 9, 80), (54.00, '2026-06-05 16:40:00', 9, 81),
(56.00, '2026-06-05 18:20:00', 9, 82), (58.00, '2026-06-05 20:00:00', 9, 83),
(60.00, '2026-06-06 08:30:00', 9, 84), (62.00, '2026-06-06 10:15:00', 9, 85),
(64.00, '2026-06-06 12:00:00', 9, 86), (66.00, '2026-06-06 13:45:00', 9, 87),
(68.00, '2026-06-06 15:30:00', 9, 88), (70.00, '2026-06-06 17:15:00', 9, 89),
-- Ronda 2
(72.00, '2026-06-06 18:45:00', 9, 70), (74.00, '2026-06-06 20:10:00', 9, 71),
(76.00, '2026-06-07 07:15:00', 9, 72), (78.00, '2026-06-07 07:45:00', 9, 73),
(80.00, '2026-06-07 08:10:00', 9, 74), (82.00, '2026-06-07 08:30:00', 9, 75),
(84.00, '2026-06-07 08:50:00', 9, 76), (86.00, '2026-06-07 09:10:00', 9, 77),
(88.00, '2026-06-07 09:25:00', 9, 78), (90.00, '2026-06-07 09:40:00', 9, 79),
(92.00, '2026-06-07 09:50:00', 9, 80), (94.00, '2026-06-07 09:58:00', 9, 81),
(96.00, '2026-06-07 10:02:00', 9, 82), (98.00, '2026-06-07 10:05:00', 9, 83),
(100.00, '2026-06-07 10:07:00', 9, 84), (102.00, '2026-06-07 10:09:00', 9, 85),
(104.00, '2026-06-07 10:10:30', 9, 86), (106.00, '2026-06-07 10:11:45', 9, 87),
(108.00, '2026-06-07 10:12:30', 9, 88), (110.00, '2026-06-07 10:13:00', 9, 89),
-- Ronda 3 
(112.00, '2026-06-07 10:13:20', 9, 70), (114.00, '2026-06-07 10:13:40', 9, 71),
(116.00, '2026-06-07 10:13:55', 9, 72), (118.00, '2026-06-07 10:14:10', 9, 73),
(120.00, '2026-06-07 10:14:20', 9, 74), (122.00, '2026-06-07 10:14:28', 9, 75),
(124.00, '2026-06-07 10:14:35', 9, 76), (126.00, '2026-06-07 10:14:42', 9, 77),
(128.00, '2026-06-07 10:14:47', 9, 78), (130.00, '2026-06-07 10:14:52', 9, 79),
(132.00, '2026-06-07 10:14:55', 9, 80), (134.00, '2026-06-07 10:14:57', 9, 81),
(136.00, '2026-06-07 10:14:59', 9, 82), (138.00, '2026-06-07 10:15:01', 9, 83),
(140.00, '2026-06-07 10:15:03', 9, 84), (142.00, '2026-06-07 10:15:05', 9, 85),
(144.00, '2026-06-07 10:15:07', 9, 86), (146.00, '2026-06-07 10:15:09', 9, 87),
(148.00, '2026-06-07 10:15:11', 9, 88), (150.00, '2026-06-07 10:15:14', 9, 89),

-- ==========================================
-- SUBASTA 10 (Base: 25.00 | Inicio: 04-06-2026 14:00 | Cierre: 11-06-2026 14:00)

-- ==========================================
-- Ronda 1
(27.00, '2026-06-04 15:30:00', 10, 85), (29.00, '2026-06-04 18:45:00', 10, 86),
(31.00, '2026-06-05 08:20:00', 10, 87), (33.00, '2026-06-05 11:40:00', 10, 88),
(35.00, '2026-06-05 15:10:00', 10, 89), (37.00, '2026-06-05 18:30:00', 10, 90),
(39.00, '2026-06-06 09:15:00', 10, 91), (41.00, '2026-06-06 12:45:00', 10, 92),
(43.00, '2026-06-06 16:20:00', 10, 93), (45.00, '2026-06-06 19:50:00', 10, 94),
(47.00, '2026-06-07 08:30:00', 10, 95), (49.00, '2026-06-07 12:10:00', 10, 96),
(51.00, '2026-06-07 15:45:00', 10, 97), (53.00, '2026-06-07 19:20:00', 10, 98),
(55.00, '2026-06-08 09:00:00', 10, 99), (57.00, '2026-06-08 13:15:00', 10, 100),
(59.00, '2026-06-08 17:30:00', 10, 101), (61.00, '2026-06-09 08:45:00', 10, 102),
(63.00, '2026-06-09 13:20:00', 10, 103), (65.00, '2026-06-09 18:10:00', 10, 104),
-- Ronda 2
(67.00, '2026-06-10 08:30:00', 10, 85), (69.00, '2026-06-10 10:45:00', 10, 86),
(71.00, '2026-06-10 13:10:00', 10, 87), (73.00, '2026-06-10 15:30:00', 10, 88),
(75.00, '2026-06-10 17:50:00', 10, 89), (77.00, '2026-06-10 20:15:00', 10, 90),
(79.00, '2026-06-11 08:00:00', 10, 91), (81.00, '2026-06-11 09:15:00', 10, 92),
(83.00, '2026-06-11 10:30:00', 10, 93), (85.00, '2026-06-11 11:45:00', 10, 94),
(87.00, '2026-06-11 12:20:00', 10, 95), (89.00, '2026-06-11 12:50:00', 10, 96),
(91.00, '2026-06-11 13:10:00', 10, 97), (93.00, '2026-06-11 13:25:00', 10, 98),
(95.00, '2026-06-11 13:35:00', 10, 99), (97.00, '2026-06-11 13:42:00', 10, 100),
(99.00, '2026-06-11 13:48:00', 10, 101), (101.00, '2026-06-11 13:52:00', 10, 102),
(103.00, '2026-06-11 13:55:00', 10, 103), (105.00, '2026-06-11 13:57:00', 10, 104),
-- Ronda 3 
(107.00, '2026-06-11 13:57:30', 10, 85), (109.00, '2026-06-11 13:58:00', 10, 86),
(111.00, '2026-06-11 13:58:20', 10, 87), (113.00, '2026-06-11 13:58:35', 10, 88),
(115.00, '2026-06-11 13:58:45', 10, 89), (117.00, '2026-06-11 13:58:55', 10, 90),
(119.00, '2026-06-11 13:59:05', 10, 91), (121.00, '2026-06-11 13:59:15', 10, 92),
(123.00, '2026-06-11 13:59:22', 10, 93), (125.00, '2026-06-11 13:59:28', 10, 94),
(127.00, '2026-06-11 13:59:34', 10, 95), (129.00, '2026-06-11 13:59:39', 10, 96),
(131.00, '2026-06-11 13:59:43', 10, 97), (133.00, '2026-06-11 13:59:47', 10, 98),
(135.00, '2026-06-11 13:59:50', 10, 99), (137.00, '2026-06-11 13:59:53', 10, 100),
(139.00, '2026-06-11 13:59:55', 10, 101), (141.00, '2026-06-11 13:59:57', 10, 102),
(143.00, '2026-06-11 13:59:58', 10, 103), (145.00, '2026-06-11 13:59:59', 10, 104),

-- ==========================================
-- SUBASTA 11 (Base: 250.00 | Inicio: 2026-06-05 09:00:00 | Cierre: 2026-06-12 09:00:00)
-- ==========================================
(255.00, '2026-06-05 10:30:00', 11, 10), (260.00, '2026-06-05 14:15:00', 11, 11), (265.00, '2026-06-05 18:00:00', 11, 12), (270.00, '2026-06-06 08:20:00', 11, 13), (275.00, '2026-06-06 12:45:00', 11, 14),
(280.00, '2026-06-06 17:10:00', 11, 15), (285.00, '2026-06-07 09:30:00', 11, 16), (290.00, '2026-06-07 14:00:00', 11, 17), (295.00, '2026-06-07 18:25:00', 11, 18), (300.00, '2026-06-08 08:45:00', 11, 19),
(305.00, '2026-06-08 13:15:00', 11, 20), (310.00, '2026-06-08 17:50:00', 11, 21), (315.00, '2026-06-09 08:10:00', 11, 22), (320.00, '2026-06-09 12:30:00', 11, 23), (325.00, '2026-06-09 16:45:00', 11, 24),
(330.00, '2026-06-10 09:00:00', 11, 25), (335.00, '2026-06-10 13:20:00', 11, 26), (340.00, '2026-06-10 17:40:00', 11, 27), (345.00, '2026-06-11 08:15:00', 11, 28), (350.00, '2026-06-11 10:30:00', 11, 29),
(355.00, '2026-06-11 11:45:00', 11, 10), (360.00, '2026-06-11 13:00:00', 11, 11), (365.00, '2026-06-11 14:15:00', 11, 12), (370.00, '2026-06-11 15:30:00', 11, 13), (375.00, '2026-06-11 16:45:00', 11, 14),
(380.00, '2026-06-11 18:00:00', 11, 15), (385.00, '2026-06-11 19:15:00', 11, 16), (390.00, '2026-06-11 20:30:00', 11, 17), (395.00, '2026-06-12 06:15:00', 11, 18), (400.00, '2026-06-12 06:45:00', 11, 19),
(405.00, '2026-06-12 07:10:00', 11, 20), (410.00, '2026-06-12 07:30:00', 11, 21), (415.00, '2026-06-12 07:45:00', 11, 22), (420.00, '2026-06-12 08:00:00', 11, 23), (425.00, '2026-06-12 08:10:00', 11, 24),
(430.00, '2026-06-12 08:20:00', 11, 25), (435.00, '2026-06-12 08:30:00', 11, 26), (440.00, '2026-06-12 08:35:00', 11, 27), (445.00, '2026-06-12 08:40:00', 11, 28), (450.00, '2026-06-12 08:43:00', 11, 29),
(455.00, '2026-06-12 08:45:00', 11, 10), (460.00, '2026-06-12 08:47:00', 11, 11), (465.00, '2026-06-12 08:49:00', 11, 12), (470.00, '2026-06-12 08:50:30', 11, 13), (475.00, '2026-06-12 08:52:00', 11, 14),
(480.00, '2026-06-12 08:53:15', 11, 15), (485.00, '2026-06-12 08:54:30', 11, 16), (490.00, '2026-06-12 08:55:40', 11, 17), (495.00, '2026-06-12 08:56:45', 11, 18), (500.00, '2026-06-12 08:57:30', 11, 19),
(505.00, '2026-06-12 08:58:00', 11, 20), (510.00, '2026-06-12 08:58:20', 11, 21), (515.00, '2026-06-12 08:58:40', 11, 22), (520.00, '2026-06-12 08:59:00', 11, 23), (525.00, '2026-06-12 08:59:15', 11, 24),
(530.00, '2026-06-12 08:59:30', 11, 25), (535.00, '2026-06-12 08:59:45', 11, 26), (540.00, '2026-06-12 08:59:52', 11, 27), (545.00, '2026-06-12 08:59:56', 11, 28), (550.00, '2026-06-12 08:59:59', 11, 29),

-- ==========================================
-- SUBASTA 12 (Base: 260.00 | Inicio: 2026-06-05 12:00:00 | Cierre: 2026-06-10 12:00:00)
-- ==========================================
(265.00, '2026-06-05 13:00:00', 12, 30), (270.00, '2026-06-05 15:30:00', 12, 31), (275.00, '2026-06-05 18:45:00', 12, 32), (280.00, '2026-06-06 08:10:00', 12, 33), (285.00, '2026-06-06 11:20:00', 12, 34),
(290.00, '2026-06-06 14:40:00', 12, 35), (295.00, '2026-06-06 17:50:00', 12, 36), (300.00, '2026-06-07 09:00:00', 12, 37), (305.00, '2026-06-07 12:15:00', 12, 38), (310.00, '2026-06-07 15:30:00', 12, 39),
(315.00, '2026-06-07 18:45:00', 12, 40), (320.00, '2026-06-08 08:20:00', 12, 41), (325.00, '2026-06-08 11:30:00', 12, 42), (330.00, '2026-06-08 14:50:00', 12, 43), (335.00, '2026-06-08 18:10:00', 12, 44),
(340.00, '2026-06-09 08:30:00', 12, 45), (345.00, '2026-06-09 10:45:00', 12, 46), (350.00, '2026-06-09 13:00:00', 12, 47), (355.00, '2026-06-09 15:15:00', 12, 48), (360.00, '2026-06-09 17:30:00', 12, 49),
(365.00, '2026-06-09 19:45:00', 12, 30), (370.00, '2026-06-10 07:15:00', 12, 31), (375.00, '2026-06-10 08:30:00', 12, 32), (380.00, '2026-06-10 09:10:00', 12, 33), (385.00, '2026-06-10 09:45:00', 12, 34),
(390.00, '2026-06-10 10:15:00', 12, 35), (395.00, '2026-06-10 10:40:00', 12, 36), (400.00, '2026-06-10 11:00:00', 12, 37), (405.00, '2026-06-10 11:15:00', 12, 38), (410.00, '2026-06-10 11:25:00', 12, 39),
(415.00, '2026-06-10 11:35:00', 12, 40), (420.00, '2026-06-10 11:42:00', 12, 41), (425.00, '2026-06-10 11:48:00', 12, 42), (430.00, '2026-06-10 11:52:00', 12, 43), (435.00, '2026-06-10 11:55:00', 12, 44),
(440.00, '2026-06-10 11:56:00', 12, 45), (445.00, '2026-06-10 11:57:00', 12, 46), (450.00, '2026-06-10 11:57:30', 12, 47), (455.00, '2026-06-10 11:58:00', 12, 48), (460.00, '2026-06-10 11:58:20', 12, 49),
(465.00, '2026-06-10 11:58:35', 12, 30), (470.00, '2026-06-10 11:58:45', 12, 31), (475.00, '2026-06-10 11:58:55', 12, 32), (480.00, '2026-06-10 11:59:05', 12, 33), (485.00, '2026-06-10 11:59:12', 12, 34),
(490.00, '2026-06-10 11:59:18', 12, 35), (495.00, '2026-06-10 11:59:24', 12, 36), (500.00, '2026-06-10 11:59:30', 12, 37), (505.00, '2026-06-10 11:59:35', 12, 38), (510.00, '2026-06-10 11:59:40', 12, 39),
(515.00, '2026-06-10 11:59:44', 12, 40), (520.00, '2026-06-10 11:59:48', 12, 41), (525.00, '2026-06-10 11:59:51', 12, 42), (530.00, '2026-06-10 11:59:54', 12, 43), (535.00, '2026-06-10 11:59:56', 12, 44),
(540.00, '2026-06-10 11:59:57', 12, 45), (545.00, '2026-06-10 11:59:58', 12, 46), (550.00, '2026-06-10 11:59:58', 12, 47), (555.00, '2026-06-10 11:59:59', 12, 48), (560.00, '2026-06-10 11:59:59', 12, 49),

-- ==========================================
-- SUBASTA 13 (Base: 150.00 | Inicio: 2026-06-05 17:00:00 | Cierre: 2026-06-12 17:00:00)

-- ==========================================
(155.00, '2026-06-05 18:30:00', 13, 50), (160.00, '2026-06-06 08:15:00', 13, 51), (165.00, '2026-06-06 12:40:00', 13, 52), (170.00, '2026-06-06 16:50:00', 13, 53), (175.00, '2026-06-07 09:20:00', 13, 54),
(180.00, '2026-06-07 13:45:00', 13, 55), (185.00, '2026-06-07 18:10:00', 13, 56), (190.00, '2026-06-08 08:30:00', 13, 57), (195.00, '2026-06-08 12:55:00', 13, 58), (200.00, '2026-06-08 17:20:00', 13, 59),
(205.00, '2026-06-09 09:10:00', 13, 60), (210.00, '2026-06-09 13:30:00', 13, 61), (215.00, '2026-06-09 17:45:00', 13, 62), (220.00, '2026-06-10 08:40:00', 13, 63), (225.00, '2026-06-10 12:50:00', 13, 64),
(230.00, '2026-06-10 17:15:00', 13, 65), (235.00, '2026-06-11 09:00:00', 13, 66), (240.00, '2026-06-11 13:20:00', 13, 67), (245.00, '2026-06-11 17:35:00', 13, 68), (250.00, '2026-06-12 08:15:00', 13, 69),
(255.00, '2026-06-12 10:30:00', 13, 50), (260.00, '2026-06-12 11:45:00', 13, 51), (265.00, '2026-06-12 13:00:00', 13, 52), (270.00, '2026-06-12 14:15:00', 13, 53), (275.00, '2026-06-12 15:00:00', 13, 54),
(280.00, '2026-06-12 15:30:00', 13, 55), (285.00, '2026-06-12 15:50:00', 13, 56), (290.00, '2026-06-12 16:10:00', 13, 57), (295.00, '2026-06-12 16:25:00', 13, 58), (300.00, '2026-06-12 16:35:00', 13, 59),
(305.00, '2026-06-12 16:42:00', 13, 60), (310.00, '2026-06-12 16:48:00', 13, 61), (315.00, '2026-06-12 16:52:00', 13, 62), (320.00, '2026-06-12 16:55:00', 13, 63), (325.00, '2026-06-12 16:56:30', 13, 64),
(330.00, '2026-06-12 16:57:20', 13, 65), (335.00, '2026-06-12 16:58:00', 13, 66), (340.00, '2026-06-12 16:58:30', 13, 67), (345.00, '2026-06-12 16:58:50', 13, 68), (350.00, '2026-06-12 16:59:05', 13, 69),
(355.00, '2026-06-12 16:59:15', 13, 50), (360.00, '2026-06-12 16:59:25', 13, 51), (365.00, '2026-06-12 16:59:32', 13, 52), (370.00, '2026-06-12 16:59:38', 13, 53), (375.00, '2026-06-12 16:59:42', 13, 54),
(380.00, '2026-06-12 16:59:46', 13, 55), (385.00, '2026-06-12 16:59:49', 13, 56), (390.00, '2026-06-12 16:59:51', 13, 57), (395.00, '2026-06-12 16:59:53', 13, 58), (400.00, '2026-06-12 16:59:54', 13, 59),
(405.00, '2026-06-12 16:59:55', 13, 60), (410.00, '2026-06-12 16:59:56', 13, 61), (415.00, '2026-06-12 16:59:57', 13, 62), (420.00, '2026-06-12 16:59:57', 13, 63), (425.00, '2026-06-12 16:59:58', 13, 64),
(430.00, '2026-06-12 16:59:58', 13, 65), (435.00, '2026-06-12 16:59:58', 13, 66), (440.00, '2026-06-12 16:59:59', 13, 67), (445.00, '2026-06-12 16:59:59', 13, 68), (450.00, '2026-06-12 16:59:59', 13, 69),

-- ==========================================
-- SUBASTA 14 (Base: 250.00 | Inicio: 2026-06-06 11:30:00 | Cierre: 2026-06-11 11:30:00)
-- ==========================================
(255.00, '2026-06-06 13:00:00', 14, 70), (260.00, '2026-06-06 16:15:00', 14, 71), (265.00, '2026-06-06 19:30:00', 14, 72), (270.00, '2026-06-07 08:45:00', 14, 73), (275.00, '2026-06-07 12:10:00', 14, 74),
(280.00, '2026-06-07 15:25:00', 14, 75), (285.00, '2026-06-07 18:40:00', 14, 76), (290.00, '2026-06-08 09:00:00', 14, 77), (295.00, '2026-06-08 12:15:00', 14, 78), (300.00, '2026-06-08 15:30:00', 14, 79),
(305.00, '2026-06-08 18:45:00', 14, 80), (310.00, '2026-06-09 08:20:00', 14, 81), (315.00, '2026-06-09 11:35:00', 14, 82), (320.00, '2026-06-09 14:50:00', 14, 83), (325.00, '2026-06-09 18:05:00', 14, 84),
(330.00, '2026-06-10 08:30:00', 14, 85), (335.00, '2026-06-10 11:45:00', 14, 86), (340.00, '2026-06-10 15:00:00', 14, 87), (345.00, '2026-06-10 18:15:00', 14, 88), (350.00, '2026-06-10 20:30:00', 14, 89),
(355.00, '2026-06-11 07:15:00', 14, 70), (360.00, '2026-06-11 08:00:00', 14, 71), (365.00, '2026-06-11 08:45:00', 14, 72), (370.00, '2026-06-11 09:30:00', 14, 73), (375.00, '2026-06-11 10:00:00', 14, 74),
(380.00, '2026-06-11 10:20:00', 14, 75), (385.00, '2026-06-11 10:40:00', 14, 76), (390.00, '2026-06-11 10:55:00', 14, 77), (395.00, '2026-06-11 11:05:00', 14, 78), (400.00, '2026-06-11 11:12:00', 14, 79),
(405.00, '2026-06-11 11:18:00', 14, 80), (410.00, '2026-06-11 11:22:00', 14, 81), (415.00, '2026-06-11 11:25:00', 14, 82), (420.00, '2026-06-11 11:27:00', 14, 83), (425.00, '2026-06-11 11:28:30', 14, 84),
(430.00, '2026-06-11 11:29:15', 14, 85), (435.00, '2026-06-11 11:29:30', 14, 86), (440.00, '2026-06-11 11:29:40', 14, 87), (445.00, '2026-06-11 11:29:45', 14, 88), (450.00, '2026-06-11 11:29:48', 14, 89),
(455.00, '2026-06-11 11:29:50', 14, 70), (460.00, '2026-06-11 11:29:51', 14, 71), (465.00, '2026-06-11 11:29:52', 14, 72), (470.00, '2026-06-11 11:29:53', 14, 73), (475.00, '2026-06-11 11:29:54', 14, 74),
(480.00, '2026-06-11 11:29:55', 14, 75), (485.00, '2026-06-11 11:29:55', 14, 76), (490.00, '2026-06-11 11:29:56', 14, 77), (495.00, '2026-06-11 11:29:56', 14, 78), (500.00, '2026-06-11 11:29:57', 14, 79),
(505.00, '2026-06-11 11:29:57', 14, 80), (510.00, '2026-06-11 11:29:58', 14, 81), (515.00, '2026-06-11 11:29:58', 14, 82), (520.00, '2026-06-11 11:29:58', 14, 83), (525.00, '2026-06-11 11:29:59', 14, 84),
(530.00, '2026-06-11 11:29:59', 14, 85), (535.00, '2026-06-11 11:29:59', 14, 86), (540.00, '2026-06-11 11:29:59', 14, 87), (545.00, '2026-06-11 11:29:59', 14, 88), (550.00, '2026-06-11 11:29:59', 14, 89),

-- ==========================================
-- SUBASTA 15 (Base: 30.00 | Inicio: 2026-06-06 15:00:00 | Cierre: 2026-06-13 15:00:00)
-- ==========================================
(32.00, '2026-06-06 16:30:00', 15, 85), (34.00, '2026-06-06 19:45:00', 15, 86), (36.00, '2026-06-07 08:20:00', 15, 87), (38.00, '2026-06-07 11:35:00', 15, 88), (40.00, '2026-06-07 14:50:00', 15, 89),
(42.00, '2026-06-07 18:05:00', 15, 90), (44.00, '2026-06-08 09:15:00', 15, 91), (46.00, '2026-06-08 12:40:00', 15, 92), (48.00, '2026-06-08 16:00:00', 15, 93), (50.00, '2026-06-08 19:25:00', 15, 94),
(52.00, '2026-06-09 08:45:00', 15, 95), (54.00, '2026-06-09 12:10:00', 15, 96), (56.00, '2026-06-09 15:35:00', 15, 97), (58.00, '2026-06-09 18:50:00', 15, 98), (60.00, '2026-06-10 09:20:00', 15, 99),
(62.00, '2026-06-10 12:45:00', 15, 100), (64.00, '2026-06-10 16:10:00', 15, 101), (66.00, '2026-06-10 19:30:00', 15, 102), (68.00, '2026-06-11 08:50:00', 15, 103), (70.00, '2026-06-11 12:15:00', 15, 104),
(72.00, '2026-06-11 15:40:00', 15, 85), (74.00, '2026-06-11 19:00:00', 15, 86), (76.00, '2026-06-12 08:30:00', 15, 87), (78.00, '2026-06-12 11:45:00', 15, 88), (80.00, '2026-06-12 14:00:00', 15, 89),
(82.00, '2026-06-12 16:20:00', 15, 90), (84.00, '2026-06-12 18:35:00', 15, 91), (86.00, '2026-06-13 08:15:00', 15, 92), (88.00, '2026-06-13 09:30:00', 15, 93), (90.00, '2026-06-13 10:45:00', 15, 94),
(92.00, '2026-06-13 12:00:00', 15, 95), (94.00, '2026-06-13 13:15:00', 15, 96), (96.00, '2026-06-13 14:00:00', 15, 97), (98.00, '2026-06-13 14:30:00', 15, 98), (100.00, '2026-06-13 14:45:00', 15, 99),
(102.00, '2026-06-13 14:50:00', 15, 100), (104.00, '2026-06-13 14:52:00', 15, 101), (106.00, '2026-06-13 14:54:00', 15, 102), (108.00, '2026-06-13 14:55:00', 15, 103), (110.00, '2026-06-13 14:56:00', 15, 104),
(112.00, '2026-06-13 14:56:30', 15, 85), (114.00, '2026-06-13 14:57:00', 15, 86), (116.00, '2026-06-13 14:57:20', 15, 87), (118.00, '2026-06-13 14:57:40', 15, 88), (120.00, '2026-06-13 14:58:00', 15, 89),
(122.00, '2026-06-13 14:58:15', 15, 90), (124.00, '2026-06-13 14:58:30', 15, 91), (126.00, '2026-06-13 14:58:45', 15, 92), (128.00, '2026-06-13 14:58:55', 15, 93), (130.00, '2026-06-13 14:59:05', 15, 94),
(132.00, '2026-06-13 14:59:15', 15, 95), (134.00, '2026-06-13 14:59:25', 15, 96), (136.00, '2026-06-13 14:59:35', 15, 97), (138.00, '2026-06-13 14:59:42', 15, 98), (140.00, '2026-06-13 14:59:48', 15, 99),
(142.00, '2026-06-13 14:59:52', 15, 100), (144.00, '2026-06-13 14:59:55', 15, 101), (146.00, '2026-06-13 14:59:57', 15, 102), (148.00, '2026-06-13 14:59:58', 15, 103), (150.00, '2026-06-13 14:59:59', 15, 104),

-- ==========================================
-- SUBASTA 16 (Base: 160.00 | Inicio: 2026-06-07 10:00:00 | Cierre: 2026-06-14 10:00:00)
-- ==========================================
(165.00, '2026-06-07 11:30:00', 16, 10), (170.00, '2026-06-07 15:15:00', 16, 11), (175.00, '2026-06-07 19:00:00', 16, 12), (180.00, '2026-06-08 08:45:00', 16, 13), (185.00, '2026-06-08 12:30:00', 16, 14),
(190.00, '2026-06-08 16:15:00', 16, 15), (195.00, '2026-06-08 20:00:00', 16, 16), (200.00, '2026-06-09 09:20:00', 16, 17), (205.00, '2026-06-09 13:05:00', 16, 18), (210.00, '2026-06-09 16:50:00', 16, 19),
(215.00, '2026-06-10 08:30:00', 16, 20), (220.00, '2026-06-10 12:15:00', 16, 21), (225.00, '2026-06-10 16:00:00', 16, 22), (230.00, '2026-06-10 19:45:00', 16, 23), (235.00, '2026-06-11 09:10:00', 16, 24),
(240.00, '2026-06-11 12:55:00', 16, 25), (245.00, '2026-06-11 16:40:00', 16, 26), (250.00, '2026-06-12 08:20:00', 16, 27), (255.00, '2026-06-12 12:05:00', 16, 28), (260.00, '2026-06-12 15:50:00', 16, 29),
(265.00, '2026-06-13 08:30:00', 16, 10), (270.00, '2026-06-13 11:15:00', 16, 11), (275.00, '2026-06-13 14:00:00', 16, 12), (280.00, '2026-06-13 16:45:00', 16, 13), (285.00, '2026-06-13 19:30:00', 16, 14),
(290.00, '2026-06-14 07:15:00', 16, 15), (295.00, '2026-06-14 08:00:00', 16, 16), (300.00, '2026-06-14 08:30:00', 16, 17), (305.00, '2026-06-14 09:00:00', 16, 18), (310.00, '2026-06-14 09:15:00', 16, 19),
(315.00, '2026-06-14 09:30:00', 16, 20), (320.00, '2026-06-14 09:40:00', 16, 21), (325.00, '2026-06-14 09:45:00', 16, 22), (330.00, '2026-06-14 09:50:00', 16, 23), (335.00, '2026-06-14 09:53:00', 16, 24),
(340.00, '2026-06-14 09:55:00', 16, 25), (345.00, '2026-06-14 09:56:00', 16, 26), (350.00, '2026-06-14 09:57:00', 16, 27), (355.00, '2026-06-14 09:57:45', 16, 28), (360.00, '2026-06-14 09:58:15', 16, 29),
(365.00, '2026-06-14 09:58:30', 16, 10), (370.00, '2026-06-14 09:58:45', 16, 11), (375.00, '2026-06-14 09:58:55', 16, 12), (380.00, '2026-06-14 09:59:05', 16, 13), (385.00, '2026-06-14 09:59:15', 16, 14),
(390.00, '2026-06-14 09:59:25', 16, 15), (395.00, '2026-06-14 09:59:32', 16, 16), (400.00, '2026-06-14 09:59:38', 16, 17), (405.00, '2026-06-14 09:59:43', 16, 18), (410.00, '2026-06-14 09:59:48', 16, 19),
(415.00, '2026-06-14 09:59:52', 16, 20), (420.00, '2026-06-14 09:59:54', 16, 21), (425.00, '2026-06-14 09:59:56', 16, 22), (430.00, '2026-06-14 09:59:57', 16, 23), (435.00, '2026-06-14 09:59:57', 16, 24),
(440.00, '2026-06-14 09:59:58', 16, 25), (445.00, '2026-06-14 09:59:58', 16, 26), (450.00, '2026-06-14 09:59:59', 16, 27), (455.00, '2026-06-14 09:59:59', 16, 28), (460.00, '2026-06-14 09:59:59', 16, 29),

-- ==========================================
-- SUBASTA 17 (Base: 45.00 | Inicio: 2026-06-07 13:00:00 | Cierre: 2026-06-12 13:00:00)
-- ==========================================
(47.00, '2026-06-07 14:15:00', 17, 30), (49.00, '2026-06-07 17:30:00', 17, 31), (51.00, '2026-06-08 08:45:00', 17, 32), (53.00, '2026-06-08 11:20:00', 17, 33), (55.00, '2026-06-08 14:35:00', 17, 34),
(57.00, '2026-06-08 17:50:00', 17, 35), (59.00, '2026-06-09 09:05:00', 17, 36), (61.00, '2026-06-09 12:20:00', 17, 37), (63.00, '2026-06-09 15:35:00', 17, 38), (65.00, '2026-06-09 18:50:00', 17, 39),
(67.00, '2026-06-10 08:15:00', 17, 40), (69.00, '2026-06-10 11:30:00', 17, 41), (71.00, '2026-06-10 14:45:00', 17, 42), (73.00, '2026-06-10 18:00:00', 17, 43), (75.00, '2026-06-11 08:25:00', 17, 44),
(77.00, '2026-06-11 11:40:00', 17, 45), (79.00, '2026-06-11 14:55:00', 17, 46), (81.00, '2026-06-11 18:10:00', 17, 47), (83.00, '2026-06-12 07:30:00', 17, 48), (85.00, '2026-06-12 09:45:00', 17, 49),
(87.00, '2026-06-12 10:15:00', 17, 30), (89.00, '2026-06-12 10:45:00', 17, 31), (91.00, '2026-06-12 11:10:00', 17, 32), (93.00, '2026-06-12 11:30:00', 17, 33), (95.00, '2026-06-12 11:45:00', 17, 34),
(97.00, '2026-06-12 12:00:00', 17, 35), (99.00, '2026-06-12 12:10:00', 17, 36), (101.00, '2026-06-12 12:20:00', 17, 37), (103.00, '2026-06-12 12:30:00', 17, 38), (105.00, '2026-06-12 12:38:00', 17, 39),
(107.00, '2026-06-12 12:44:00', 17, 40), (109.00, '2026-06-12 12:49:00', 17, 41), (111.00, '2026-06-12 12:52:00', 17, 42), (113.00, '2026-06-12 12:54:00', 17, 43), (115.00, '2026-06-12 12:55:30', 17, 44),
(117.00, '2026-06-12 12:56:30', 17, 45), (119.00, '2026-06-12 12:57:15', 17, 46), (121.00, '2026-06-12 12:57:45', 17, 47), (123.00, '2026-06-12 12:58:10', 17, 48), (125.00, '2026-06-12 12:58:30', 17, 49),
(127.00, '2026-06-12 12:58:45', 17, 30), (129.00, '2026-06-12 12:59:00', 17, 31), (131.00, '2026-06-12 12:59:10', 17, 32), (133.00, '2026-06-12 12:59:20', 17, 33), (135.00, '2026-06-12 12:59:28', 17, 34),
(137.00, '2026-06-12 12:59:35', 17, 35), (139.00, '2026-06-12 12:59:41', 17, 36), (141.00, '2026-06-12 12:59:46', 17, 37), (143.00, '2026-06-12 12:59:50', 17, 38), (145.00, '2026-06-12 12:59:53', 17, 39),
(147.00, '2026-06-12 12:59:55', 17, 40), (149.00, '2026-06-12 12:59:56', 17, 41), (151.00, '2026-06-12 12:59:57', 17, 42), (153.00, '2026-06-12 12:59:57', 17, 43), (155.00, '2026-06-12 12:59:58', 17, 44),
(157.00, '2026-06-12 12:59:58', 17, 45), (159.00, '2026-06-12 12:59:58', 17, 46), (161.00, '2026-06-12 12:59:59', 17, 47), (163.00, '2026-06-12 12:59:59', 17, 48), (165.00, '2026-06-12 12:59:59', 17, 49),

-- ==========================================
-- SUBASTA 18 (Base: 250.00 | Inicio: 2026-06-07 19:00:00 | Cierre: 2026-06-14 19:00:00)
-- ==========================================
(255.00, '2026-06-08 08:30:00', 18, 50), (260.00, '2026-06-08 12:15:00', 18, 51), (265.00, '2026-06-08 16:00:00', 18, 52), (270.00, '2026-06-08 19:45:00', 18, 53), (275.00, '2026-06-09 09:20:00', 18, 54),
(280.00, '2026-06-09 13:05:00', 18, 55), (285.00, '2026-06-09 16:50:00', 18, 56), (290.00, '2026-06-10 08:10:00', 18, 57), (295.00, '2026-06-10 11:55:00', 18, 58), (300.00, '2026-06-10 15:40:00', 18, 59),
(305.00, '2026-06-10 19:25:00', 18, 60), (310.00, '2026-06-11 09:30:00', 18, 61), (315.00, '2026-06-11 13:15:00', 18, 62), (320.00, '2026-06-11 17:00:00', 18, 63), (325.00, '2026-06-12 08:45:00', 18, 64),
(330.00, '2026-06-12 12:30:00', 18, 65), (335.00, '2026-06-12 16:15:00', 18, 66), (340.00, '2026-06-13 08:50:00', 18, 67), (345.00, '2026-06-13 12:35:00', 18, 68), (350.00, '2026-06-13 16:20:00', 18, 69),
(355.00, '2026-06-13 19:10:00', 18, 50), (360.00, '2026-06-14 08:15:00', 18, 51), (365.00, '2026-06-14 10:30:00', 18, 52), (370.00, '2026-06-14 12:45:00', 18, 53), (375.00, '2026-06-14 14:00:00', 18, 54),
(380.00, '2026-06-14 15:15:00', 18, 55), (385.00, '2026-06-14 16:30:00', 18, 56), (390.00, '2026-06-14 17:15:00', 18, 57), (395.00, '2026-06-14 17:45:00', 18, 58), (400.00, '2026-06-14 18:00:00', 18, 59),
(405.00, '2026-06-14 18:15:00', 18, 60), (410.00, '2026-06-14 18:25:00', 18, 61), (415.00, '2026-06-14 18:35:00', 18, 62), (420.00, '2026-06-14 18:42:00', 18, 63), (425.00, '2026-06-14 18:48:00', 18, 64),
(430.00, '2026-06-14 18:52:00', 18, 65), (435.00, '2026-06-14 18:55:00', 18, 66), (440.00, '2026-06-14 18:56:30', 18, 67), (445.00, '2026-06-14 18:57:45', 18, 68), (450.00, '2026-06-14 18:58:20', 18, 69),
(455.00, '2026-06-14 18:58:45', 18, 50), (460.00, '2026-06-14 18:59:00', 18, 51), (465.00, '2026-06-14 18:59:12', 18, 52), (470.00, '2026-06-14 18:59:22', 18, 53), (475.00, '2026-06-14 18:59:30', 18, 54),
(480.00, '2026-06-14 18:59:38', 18, 55), (485.00, '2026-06-14 18:59:44', 18, 56), (490.00, '2026-06-14 18:59:49', 18, 57), (495.00, '2026-06-14 18:59:52', 18, 58), (500.00, '2026-06-14 18:59:54', 18, 59),
(505.00, '2026-06-14 18:59:56', 18, 60), (510.00, '2026-06-14 18:59:57', 18, 61), (515.00, '2026-06-14 18:59:57', 18, 62), (520.00, '2026-06-14 18:59:58', 18, 63), (525.00, '2026-06-14 18:59:58', 18, 64),
(530.00, '2026-06-14 18:59:58', 18, 65), (535.00, '2026-06-14 18:59:59', 18, 66), (540.00, '2026-06-14 18:59:59', 18, 67), (545.00, '2026-06-14 18:59:59', 18, 68), (550.00, '2026-06-14 18:59:59', 18, 69),

-- ==========================================
-- SUBASTA 19 (Base: 30.00 | Inicio: 2026-06-08 08:45:00 | Cierre: 2026-06-13 08:45:00)
-- ==========================================
(32.00, '2026-06-08 10:15:00', 19, 70), (34.00, '2026-06-08 13:40:00', 19, 71), (36.00, '2026-06-08 17:05:00', 19, 72), (38.00, '2026-06-09 08:20:00', 19, 73), (40.00, '2026-06-09 11:45:00', 19, 74),
(42.00, '2026-06-09 15:10:00', 19, 75), (44.00, '2026-06-09 18:35:00', 19, 76), (46.00, '2026-06-10 09:00:00', 19, 77), (48.00, '2026-06-10 12:25:00', 19, 78), (50.00, '2026-06-10 15:50:00', 19, 79),
(52.00, '2026-06-11 08:15:00', 19, 80), (54.00, '2026-06-11 11:40:00', 19, 81), (56.00, '2026-06-11 15:05:00', 19, 82), (58.00, '2026-06-11 18:30:00', 19, 83), (60.00, '2026-06-12 07:45:00', 19, 84),
(62.00, '2026-06-12 09:10:00', 19, 85), (64.00, '2026-06-12 11:35:00', 19, 86), (66.00, '2026-06-12 14:00:00', 19, 87), (68.00, '2026-06-12 16:25:00', 19, 88), (70.00, '2026-06-12 18:50:00', 19, 89),
(72.00, '2026-06-13 07:15:00', 19, 70), (74.00, '2026-06-13 07:30:00', 19, 71), (76.00, '2026-06-13 07:45:00', 19, 72), (78.00, '2026-06-13 08:00:00', 19, 73), (80.00, '2026-06-13 08:10:00', 19, 74),
(82.00, '2026-06-13 08:18:00', 19, 75), (84.00, '2026-06-13 08:24:00', 19, 76), (86.00, '2026-06-13 08:28:00', 19, 77), (88.00, '2026-06-13 08:32:00', 19, 78), (90.00, '2026-06-13 08:35:00', 19, 79),
(92.00, '2026-06-13 08:37:30', 19, 80), (94.00, '2026-06-13 08:39:00', 19, 81), (96.00, '2026-06-13 08:40:15', 19, 82), (98.00, '2026-06-13 08:41:00', 19, 83), (100.00, '2026-06-13 08:41:40', 19, 84),
(102.00, '2026-06-13 08:42:15', 19, 85), (104.00, '2026-06-13 08:42:45', 19, 86), (106.00, '2026-06-13 08:43:10', 19, 87), (108.00, '2026-06-13 08:43:30', 19, 88), (110.00, '2026-06-13 08:43:45', 19, 89),
(112.00, '2026-06-13 08:44:00', 19, 70), (114.00, '2026-06-13 08:44:12', 19, 71), (116.00, '2026-06-13 08:44:22', 19, 72), (118.00, '2026-06-13 08:44:30', 19, 73), (120.00, '2026-06-13 08:44:37', 19, 74),
(122.00, '2026-06-13 08:44:43', 19, 75), (124.00, '2026-06-13 08:44:48', 19, 76), (126.00, '2026-06-13 08:44:51', 19, 77), (128.00, '2026-06-13 08:44:54', 19, 78), (130.00, '2026-06-13 08:44:56', 19, 79),
(132.00, '2026-06-13 08:44:57', 19, 80), (134.00, '2026-06-13 08:44:57', 19, 81), (136.00, '2026-06-13 08:44:58', 19, 82), (138.00, '2026-06-13 08:44:58', 19, 83), (140.00, '2026-06-13 08:44:58', 19, 84),
(142.00, '2026-06-13 08:44:59', 19, 85), (144.00, '2026-06-13 08:44:59', 19, 86), (146.00, '2026-06-13 08:44:59', 19, 87), (148.00, '2026-06-13 08:44:59', 19, 88), (150.00, '2026-06-13 08:44:59', 19, 89),

-- ==========================================
-- SUBASTA 20 (Base: 110.00 | Inicio: 2026-06-08 14:00:00 | Cierre: 2026-06-15 14:00:00)
-- ==========================================
(112.00, '2026-06-08 15:30:00', 20, 85), (114.00, '2026-06-08 18:45:00', 20, 86), (116.00, '2026-06-09 08:20:00', 20, 87), (118.00, '2026-06-09 11:35:00', 20, 88), (120.00, '2026-06-09 14:50:00', 20, 89),
(122.00, '2026-06-09 18:05:00', 20, 90), (124.00, '2026-06-10 09:15:00', 20, 91), (126.00, '2026-06-10 12:30:00', 20, 92), (128.00, '2026-06-10 15:45:00', 20, 93), (130.00, '2026-06-10 19:00:00', 20, 94),
(132.00, '2026-06-11 08:45:00', 20, 95), (134.00, '2026-06-11 12:00:00', 20, 96), (136.00, '2026-06-11 15:15:00', 20, 97), (138.00, '2026-06-11 18:30:00', 20, 98), (140.00, '2026-06-12 09:10:00', 20, 99),
(142.00, '2026-06-12 12:25:00', 20, 100), (144.00, '2026-06-12 15:40:00', 20, 101), (146.00, '2026-06-12 18:55:00', 20, 102), (148.00, '2026-06-13 08:30:00', 20, 103), (150.00, '2026-06-13 11:45:00', 20, 104),
(152.00, '2026-06-13 15:00:00', 20, 85), (154.00, '2026-06-13 18:15:00', 20, 86), (156.00, '2026-06-14 08:20:00', 20, 87), (158.00, '2026-06-14 11:35:00', 20, 88), (160.00, '2026-06-14 14:50:00', 20, 89),
(162.00, '2026-06-14 18:05:00', 20, 90), (164.00, '2026-06-15 08:15:00', 20, 91), (166.00, '2026-06-15 09:30:00', 20, 92), (168.00, '2026-06-15 10:45:00', 20, 93), (170.00, '2026-06-15 11:50:00', 20, 94),
(172.00, '2026-06-15 12:30:00', 20, 95), (174.00, '2026-06-15 13:00:00', 20, 96), (176.00, '2026-06-15 13:20:00', 20, 97), (178.00, '2026-06-15 13:35:00', 20, 98), (180.00, '2026-06-15 13:45:00', 20, 99),
(182.00, '2026-06-15 13:50:00', 20, 100), (184.00, '2026-06-15 13:53:00', 20, 101), (186.00, '2026-06-15 13:55:00', 20, 102), (188.00, '2026-06-15 13:56:30', 20, 103), (190.00, '2026-06-15 13:57:45', 20, 104),
(192.00, '2026-06-15 13:58:15', 20, 85), (194.00, '2026-06-15 13:58:35', 20, 86), (196.00, '2026-06-15 13:58:50', 20, 87), (198.00, '2026-06-15 13:59:02', 20, 88), (200.00, '2026-06-15 13:59:12', 20, 89),
(202.00, '2026-06-15 13:59:20', 20, 90), (204.00, '2026-06-15 13:59:27', 20, 91), (206.00, '2026-06-15 13:59:33', 20, 92), (208.00, '2026-06-15 13:59:38', 20, 93), (210.00, '2026-06-15 13:59:42', 20, 94),
(212.00, '2026-06-15 13:59:45', 20, 95), (214.00, '2026-06-15 13:59:48', 20, 96), (216.00, '2026-06-15 13:59:50', 20, 97), (218.00, '2026-06-15 13:59:52', 20, 98), (220.00, '2026-06-15 13:59:54', 20, 99),
(222.00, '2026-06-15 13:59:55', 20, 100), (224.00, '2026-06-15 13:59:56', 20, 101), (226.00, '2026-06-15 13:59:57', 20, 102), (228.00, '2026-06-15 13:59:58', 20, 103), (230.00, '2026-06-15 13:59:59', 20, 104),

-- ==========================================
-- SUBASTA 21 (Base: 250.00 | 2026-06-09 a 2026-06-16) | Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(255.00, '2026-06-10 10:00:00', 21, 10), (260.00, '2026-06-10 10:15:00', 21, 11), (265.00, '2026-06-10 10:30:00', 21, 12), (270.00, '2026-06-10 10:45:00', 21, 13), (275.00, '2026-06-10 11:00:00', 21, 14),
(280.00, '2026-06-10 11:15:00', 21, 15), (285.00, '2026-06-10 11:30:00', 21, 16), (290.00, '2026-06-10 11:45:00', 21, 17), (295.00, '2026-06-10 12:00:00', 21, 18), (300.00, '2026-06-10 12:15:00', 21, 19),
(305.00, '2026-06-10 12:30:00', 21, 20), (310.00, '2026-06-10 12:45:00', 21, 21), (315.00, '2026-06-10 13:00:00', 21, 22), (320.00, '2026-06-10 13:15:00', 21, 23), (325.00, '2026-06-10 13:30:00', 21, 24),
(330.00, '2026-06-10 13:45:00', 21, 25), (335.00, '2026-06-10 14:00:00', 21, 26), (340.00, '2026-06-10 14:15:00', 21, 27), (345.00, '2026-06-10 14:30:00', 21, 28), (350.00, '2026-06-10 14:45:00', 21, 29),
-- Ronda 2
(355.00, '2026-06-12 10:00:00', 21, 10), (360.00, '2026-06-12 10:15:00', 21, 11), (365.00, '2026-06-12 10:30:00', 21, 12), (370.00, '2026-06-12 10:45:00', 21, 13), (375.00, '2026-06-12 11:00:00', 21, 14),
(380.00, '2026-06-12 11:15:00', 21, 15), (385.00, '2026-06-12 11:30:00', 21, 16), (390.00, '2026-06-12 11:45:00', 21, 17), (395.00, '2026-06-12 12:00:00', 21, 18), (400.00, '2026-06-12 12:15:00', 21, 19),
(405.00, '2026-06-12 12:30:00', 21, 20), (410.00, '2026-06-12 12:45:00', 21, 21), (415.00, '2026-06-12 13:00:00', 21, 22), (420.00, '2026-06-12 13:15:00', 21, 23), (425.00, '2026-06-12 13:30:00', 21, 24),
(430.00, '2026-06-12 13:45:00', 21, 25), (435.00, '2026-06-12 14:00:00', 21, 26), (440.00, '2026-06-12 14:15:00', 21, 27), (445.00, '2026-06-12 14:30:00', 21, 28), (450.00, '2026-06-12 14:45:00', 21, 29),
-- Ronda 3
(455.00, '2026-06-14 10:00:00', 21, 10), (460.00, '2026-06-14 10:15:00', 21, 11), (465.00, '2026-06-14 10:30:00', 21, 12), (470.00, '2026-06-14 10:45:00', 21, 13), (475.00, '2026-06-14 11:00:00', 21, 14),
(480.00, '2026-06-14 11:15:00', 21, 15), (485.00, '2026-06-14 11:30:00', 21, 16), (490.00, '2026-06-14 11:45:00', 21, 17), (495.00, '2026-06-14 12:00:00', 21, 18), (500.00, '2026-06-14 12:15:00', 21, 19),
(505.00, '2026-06-14 12:30:00', 21, 20), (510.00, '2026-06-14 12:45:00', 21, 21), (515.00, '2026-06-14 13:00:00', 21, 22), (520.00, '2026-06-14 13:15:00', 21, 23), (525.00, '2026-06-14 13:30:00', 21, 24),
(530.00, '2026-06-14 13:45:00', 21, 25), (535.00, '2026-06-14 14:00:00', 21, 26), (540.00, '2026-06-14 14:15:00', 21, 27), (545.00, '2026-06-14 14:30:00', 21, 28), (550.00, '2026-06-14 14:45:00', 21, 29),

-- ==========================================
-- SUBASTA 22 (Base: 200.00 | 2026-06-09 a 2026-06-14) | Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(205.00, '2026-06-10 09:00:00', 22, 30), (210.00, '2026-06-10 09:15:00', 22, 31), (215.00, '2026-06-10 09:30:00', 22, 32), (220.00, '2026-06-10 09:45:00', 22, 33), (225.00, '2026-06-10 10:00:00', 22, 34),
(230.00, '2026-06-10 10:15:00', 22, 35), (235.00, '2026-06-10 10:30:00', 22, 36), (240.00, '2026-06-10 10:45:00', 22, 37), (245.00, '2026-06-10 11:00:00', 22, 38), (250.00, '2026-06-10 11:15:00', 22, 39),
(255.00, '2026-06-10 11:30:00', 22, 40), (260.00, '2026-06-10 11:45:00', 22, 41), (265.00, '2026-06-10 12:00:00', 22, 42), (270.00, '2026-06-10 12:15:00', 22, 43), (275.00, '2026-06-10 12:30:00', 22, 44),
(280.00, '2026-06-10 12:45:00', 22, 45), (285.00, '2026-06-10 13:00:00', 22, 46), (290.00, '2026-06-10 13:15:00', 22, 47), (295.00, '2026-06-10 13:30:00', 22, 48), (300.00, '2026-06-10 13:45:00', 22, 49),
-- Ronda 2
(305.00, '2026-06-11 09:00:00', 22, 30), (310.00, '2026-06-11 09:15:00', 22, 31), (315.00, '2026-06-11 09:30:00', 22, 32), (320.00, '2026-06-11 09:45:00', 22, 33), (325.00, '2026-06-11 10:00:00', 22, 34),
(330.00, '2026-06-11 10:15:00', 22, 35), (335.00, '2026-06-11 10:30:00', 22, 36), (340.00, '2026-06-11 10:45:00', 22, 37), (345.00, '2026-06-11 11:00:00', 22, 38), (350.00, '2026-06-11 11:15:00', 22, 39),
(355.00, '2026-06-11 11:30:00', 22, 40), (360.00, '2026-06-11 11:45:00', 22, 41), (365.00, '2026-06-11 12:00:00', 22, 42), (370.00, '2026-06-11 12:15:00', 22, 43), (375.00, '2026-06-11 12:30:00', 22, 44),
(380.00, '2026-06-11 12:45:00', 22, 45), (385.00, '2026-06-11 13:00:00', 22, 46), (390.00, '2026-06-11 13:15:00', 22, 47), (395.00, '2026-06-11 13:30:00', 22, 48), (400.00, '2026-06-11 13:45:00', 22, 49),
-- Ronda 3
(405.00, '2026-06-12 09:00:00', 22, 30), (410.00, '2026-06-12 09:15:00', 22, 31), (415.00, '2026-06-12 09:30:00', 22, 32), (420.00, '2026-06-12 09:45:00', 22, 33), (425.00, '2026-06-12 10:00:00', 22, 34),
(430.00, '2026-06-12 10:15:00', 22, 35), (435.00, '2026-06-12 10:30:00', 22, 36), (440.00, '2026-06-12 10:45:00', 22, 37), (445.00, '2026-06-12 11:00:00', 22, 38), (450.00, '2026-06-12 11:15:00', 22, 39),
(455.00, '2026-06-12 11:30:00', 22, 40), (460.00, '2026-06-12 11:45:00', 22, 41), (465.00, '2026-06-12 12:00:00', 22, 42), (470.00, '2026-06-12 12:15:00', 22, 43), (475.00, '2026-06-12 12:30:00', 22, 44),
(480.00, '2026-06-12 12:45:00', 22, 45), (485.00, '2026-06-12 13:00:00', 22, 46), (490.00, '2026-06-12 13:15:00', 22, 47), (495.00, '2026-06-12 13:30:00', 22, 48), (500.00, '2026-06-12 13:45:00', 22, 49),

-- ==========================================
-- SUBASTA 23 (Base: 220.00 | 2026-06-10 a 2026-06-17) | Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(225.00, '2026-06-11 10:00:00', 23, 50), (230.00, '2026-06-11 10:15:00', 23, 51), (235.00, '2026-06-11 10:30:00', 23, 52), (240.00, '2026-06-11 10:45:00', 23, 53), (245.00, '2026-06-11 11:00:00', 23, 54),
(250.00, '2026-06-11 11:15:00', 23, 55), (255.00, '2026-06-11 11:30:00', 23, 56), (260.00, '2026-06-11 11:45:00', 23, 57), (265.00, '2026-06-11 12:00:00', 23, 58), (270.00, '2026-06-11 12:15:00', 23, 59),
(275.00, '2026-06-11 12:30:00', 23, 60), (280.00, '2026-06-11 12:45:00', 23, 61), (285.00, '2026-06-11 13:00:00', 23, 62), (290.00, '2026-06-11 13:15:00', 23, 63), (295.00, '2026-06-11 13:30:00', 23, 64),
(300.00, '2026-06-11 13:45:00', 23, 65), (305.00, '2026-06-11 14:00:00', 23, 66), (310.00, '2026-06-11 14:15:00', 23, 67), (315.00, '2026-06-11 14:30:00', 23, 68), (320.00, '2026-06-11 14:45:00', 23, 69),
-- Ronda 2
(325.00, '2026-06-13 10:00:00', 23, 50), (330.00, '2026-06-13 10:15:00', 23, 51), (335.00, '2026-06-13 10:30:00', 23, 52), (340.00, '2026-06-13 10:45:00', 23, 53), (345.00, '2026-06-13 11:00:00', 23, 54),
(350.00, '2026-06-13 11:15:00', 23, 55), (355.00, '2026-06-13 11:30:00', 23, 56), (360.00, '2026-06-13 11:45:00', 23, 57), (365.00, '2026-06-13 12:00:00', 23, 58), (370.00, '2026-06-13 12:15:00', 23, 59),
(375.00, '2026-06-13 12:30:00', 23, 60), (380.00, '2026-06-13 12:45:00', 23, 61), (385.00, '2026-06-13 13:00:00', 23, 62), (390.00, '2026-06-13 13:15:00', 23, 63), (395.00, '2026-06-13 13:30:00', 23, 64),
(400.00, '2026-06-13 13:45:00', 23, 65), (405.00, '2026-06-13 14:00:00', 23, 66), (410.00, '2026-06-13 14:15:00', 23, 67), (415.00, '2026-06-13 14:30:00', 23, 68), (420.00, '2026-06-13 14:45:00', 23, 69),
-- Ronda 3
(425.00, '2026-06-15 10:00:00', 23, 50), (430.00, '2026-06-15 10:15:00', 23, 51), (435.00, '2026-06-15 10:30:00', 23, 52), (440.00, '2026-06-15 10:45:00', 23, 53), (445.00, '2026-06-15 11:00:00', 23, 54),
(450.00, '2026-06-15 11:15:00', 23, 55), (455.00, '2026-06-15 11:30:00', 23, 56), (460.00, '2026-06-15 11:45:00', 23, 57), (465.00, '2026-06-15 12:00:00', 23, 58), (470.00, '2026-06-15 12:15:00', 23, 59),
(475.00, '2026-06-15 12:30:00', 23, 60), (480.00, '2026-06-15 12:45:00', 23, 61), (485.00, '2026-06-15 13:00:00', 23, 62), (490.00, '2026-06-15 13:15:00', 23, 63), (495.00, '2026-06-15 13:30:00', 23, 64),
(500.00, '2026-06-15 13:45:00', 23, 65), (505.00, '2026-06-15 14:00:00', 23, 66), (510.00, '2026-06-15 14:15:00', 23, 67), (515.00, '2026-06-15 14:30:00', 23, 68), (520.00, '2026-06-15 14:45:00', 23, 69),

-- ==========================================
-- SUBASTA 24 (Base: 240.00 | 2026-06-10 a 2026-06-15) | Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(245.00, '2026-06-11 08:00:00', 24, 70), (250.00, '2026-06-11 08:15:00', 24, 71), (255.00, '2026-06-11 08:30:00', 24, 72), (260.00, '2026-06-11 08:45:00', 24, 73), (265.00, '2026-06-11 09:00:00', 24, 74),
(270.00, '2026-06-11 09:15:00', 24, 75), (275.00, '2026-06-11 09:30:00', 24, 76), (280.00, '2026-06-11 09:45:00', 24, 77), (285.00, '2026-06-11 10:00:00', 24, 78), (290.00, '2026-06-11 10:15:00', 24, 79),
(295.00, '2026-06-11 10:30:00', 24, 80), (300.00, '2026-06-11 10:45:00', 24, 81), (305.00, '2026-06-11 11:00:00', 24, 82), (310.00, '2026-06-11 11:15:00', 24, 83), (315.00, '2026-06-11 11:30:00', 24, 84),
(320.00, '2026-06-11 11:45:00', 24, 85), (325.00, '2026-06-11 12:00:00', 24, 86), (330.00, '2026-06-11 12:15:00', 24, 87), (335.00, '2026-06-11 12:30:00', 24, 88), (340.00, '2026-06-11 12:45:00', 24, 89),
-- Ronda 2
(345.00, '2026-06-12 08:00:00', 24, 70), (350.00, '2026-06-12 08:15:00', 24, 71), (355.00, '2026-06-12 08:30:00', 24, 72), (360.00, '2026-06-12 08:45:00', 24, 73), (365.00, '2026-06-12 09:00:00', 24, 74),
(370.00, '2026-06-12 09:15:00', 24, 75), (375.00, '2026-06-12 09:30:00', 24, 76), (380.00, '2026-06-12 09:45:00', 24, 77), (385.00, '2026-06-12 10:00:00', 24, 78), (390.00, '2026-06-12 10:15:00', 24, 79),
(395.00, '2026-06-12 10:30:00', 24, 80), (400.00, '2026-06-12 10:45:00', 24, 81), (405.00, '2026-06-12 11:00:00', 24, 82), (410.00, '2026-06-12 11:15:00', 24, 83), (415.00, '2026-06-12 11:30:00', 24, 84),
(420.00, '2026-06-12 11:45:00', 24, 85), (425.00, '2026-06-12 12:00:00', 24, 86), (430.00, '2026-06-12 12:15:00', 24, 87), (435.00, '2026-06-12 12:30:00', 24, 88), (440.00, '2026-06-12 12:45:00', 24, 89),
-- Ronda 3
(445.00, '2026-06-14 08:00:00', 24, 70), (450.00, '2026-06-14 08:15:00', 24, 71), (455.00, '2026-06-14 08:30:00', 24, 72), (460.00, '2026-06-14 08:45:00', 24, 73), (465.00, '2026-06-14 09:00:00', 24, 74),
(470.00, '2026-06-14 09:15:00', 24, 75), (475.00, '2026-06-14 09:30:00', 24, 76), (480.00, '2026-06-14 09:45:00', 24, 77), (485.00, '2026-06-14 10:00:00', 24, 78), (490.00, '2026-06-14 10:15:00', 24, 79),
(495.00, '2026-06-14 10:30:00', 24, 80), (500.00, '2026-06-14 10:45:00', 24, 81), (505.00, '2026-06-14 11:00:00', 24, 82), (510.00, '2026-06-14 11:15:00', 24, 83), (515.00, '2026-06-14 11:30:00', 24, 84),
(520.00, '2026-06-14 11:45:00', 24, 85), (525.00, '2026-06-14 12:00:00', 24, 86), (530.00, '2026-06-14 12:15:00', 24, 87), (535.00, '2026-06-14 12:30:00', 24, 88), (540.00, '2026-06-14 12:45:00', 24, 89),

-- ==========================================
-- SUBASTA 25 (Base: 220.00 | 2026-06-10 a 2026-06-17) | Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(225.00, '2026-06-11 10:00:00', 25, 85), (230.00, '2026-06-11 10:15:00', 25, 86), (235.00, '2026-06-11 10:30:00', 25, 87), (240.00, '2026-06-11 10:45:00', 25, 88), (245.00, '2026-06-11 11:00:00', 25, 89),
(250.00, '2026-06-11 11:15:00', 25, 90), (255.00, '2026-06-11 11:30:00', 25, 91), (260.00, '2026-06-11 11:45:00', 25, 92), (265.00, '2026-06-11 12:00:00', 25, 93), (270.00, '2026-06-11 12:15:00', 25, 94),
(275.00, '2026-06-11 12:30:00', 25, 95), (280.00, '2026-06-11 12:45:00', 25, 96), (285.00, '2026-06-11 13:00:00', 25, 97), (290.00, '2026-06-11 13:15:00', 25, 98), (295.00, '2026-06-11 13:30:00', 25, 99),
(300.00, '2026-06-11 13:45:00', 25, 100), (305.00, '2026-06-11 14:00:00', 25, 101), (310.00, '2026-06-11 14:15:00', 25, 102), (315.00, '2026-06-11 14:30:00', 25, 103), (320.00, '2026-06-11 14:45:00', 25, 104),
-- Ronda 2
(325.00, '2026-06-13 10:00:00', 25, 85), (330.00, '2026-06-13 10:15:00', 25, 86), (335.00, '2026-06-13 10:30:00', 25, 87), (340.00, '2026-06-13 10:45:00', 25, 88), (345.00, '2026-06-13 11:00:00', 25, 89),
(350.00, '2026-06-13 11:15:00', 25, 90), (355.00, '2026-06-13 11:30:00', 25, 91), (360.00, '2026-06-13 11:45:00', 25, 92), (365.00, '2026-06-13 12:00:00', 25, 93), (370.00, '2026-06-13 12:15:00', 25, 94),
(375.00, '2026-06-13 12:30:00', 25, 95), (380.00, '2026-06-13 12:45:00', 25, 96), (385.00, '2026-06-13 13:00:00', 25, 97), (390.00, '2026-06-13 13:15:00', 25, 98), (395.00, '2026-06-13 13:30:00', 25, 99),
(400.00, '2026-06-13 13:45:00', 25, 100), (405.00, '2026-06-13 14:00:00', 25, 101), (410.00, '2026-06-13 14:15:00', 25, 102), (415.00, '2026-06-13 14:30:00', 25, 103), (420.00, '2026-06-13 14:45:00', 25, 104),
-- Ronda 3
(425.00, '2026-06-15 10:00:00', 25, 85), (430.00, '2026-06-15 10:15:00', 25, 86), (435.00, '2026-06-15 10:30:00', 25, 87), (440.00, '2026-06-15 10:45:00', 25, 88), (445.00, '2026-06-15 11:00:00', 25, 89),
(450.00, '2026-06-15 11:15:00', 25, 90), (455.00, '2026-06-15 11:30:00', 25, 91), (460.00, '2026-06-15 11:45:00', 25, 92), (465.00, '2026-06-15 12:00:00', 25, 93), (470.00, '2026-06-15 12:15:00', 25, 94),
(475.00, '2026-06-15 12:30:00', 25, 95), (480.00, '2026-06-15 12:45:00', 25, 96), (485.00, '2026-06-15 13:00:00', 25, 97), (490.00, '2026-06-15 13:15:00', 25, 98), (495.00, '2026-06-15 13:30:00', 25, 99),
(500.00, '2026-06-15 13:45:00', 25, 100), (505.00, '2026-06-15 14:00:00', 25, 101), (510.00, '2026-06-15 14:15:00', 25, 102), (515.00, '2026-06-15 14:30:00', 25, 103), (520.00, '2026-06-15 14:45:00', 25, 104),

-- ==========================================
-- SUBASTA 26 (Base: 120.00 | 2026-06-11 a 2026-06-16) | Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(125.00, '2026-06-11 13:00:00', 26, 10), (130.00, '2026-06-11 13:15:00', 26, 11), (135.00, '2026-06-11 13:30:00', 26, 12), (140.00, '2026-06-11 13:45:00', 26, 13), (145.00, '2026-06-11 14:00:00', 26, 14),
(150.00, '2026-06-11 14:15:00', 26, 15), (155.00, '2026-06-11 14:30:00', 26, 16), (160.00, '2026-06-11 14:45:00', 26, 17), (165.00, '2026-06-11 15:00:00', 26, 18), (170.00, '2026-06-11 15:15:00', 26, 19),
(175.00, '2026-06-11 15:30:00', 26, 20), (180.00, '2026-06-11 15:45:00', 26, 21), (185.00, '2026-06-11 16:00:00', 26, 22), (190.00, '2026-06-11 16:15:00', 26, 23), (195.00, '2026-06-11 16:30:00', 26, 24),
(200.00, '2026-06-11 16:45:00', 26, 25), (205.00, '2026-06-11 17:00:00', 26, 26), (210.00, '2026-06-11 17:15:00', 26, 27), (215.00, '2026-06-11 17:30:00', 26, 28), (220.00, '2026-06-11 17:45:00', 26, 29),
-- Ronda 2
(225.00, '2026-06-13 13:00:00', 26, 10), (230.00, '2026-06-13 13:15:00', 26, 11), (235.00, '2026-06-13 13:30:00', 26, 12), (240.00, '2026-06-13 13:45:00', 26, 13), (245.00, '2026-06-13 14:00:00', 26, 14),
(250.00, '2026-06-13 14:15:00', 26, 15), (255.00, '2026-06-13 14:30:00', 26, 16), (260.00, '2026-06-13 14:45:00', 26, 17), (265.00, '2026-06-13 15:00:00', 26, 18), (270.00, '2026-06-13 15:15:00', 26, 19),
(275.00, '2026-06-13 15:30:00', 26, 20), (280.00, '2026-06-13 15:45:00', 26, 21), (285.00, '2026-06-13 16:00:00', 26, 22), (290.00, '2026-06-13 16:15:00', 26, 23), (295.00, '2026-06-13 16:30:00', 26, 24),
(300.00, '2026-06-13 16:45:00', 26, 25), (305.00, '2026-06-13 17:00:00', 26, 26), (310.00, '2026-06-13 17:15:00', 26, 27), (315.00, '2026-06-13 17:30:00', 26, 28), (320.00, '2026-06-13 17:45:00', 26, 29),
-- Ronda 3
(325.00, '2026-06-15 13:00:00', 26, 10), (330.00, '2026-06-15 13:15:00', 26, 11), (335.00, '2026-06-15 13:30:00', 26, 12), (340.00, '2026-06-15 13:45:00', 26, 13), (345.00, '2026-06-15 14:00:00', 26, 14),
(350.00, '2026-06-15 14:15:00', 26, 15), (355.00, '2026-06-15 14:30:00', 26, 16), (360.00, '2026-06-15 14:45:00', 26, 17), (365.00, '2026-06-15 15:00:00', 26, 18), (370.00, '2026-06-15 15:15:00', 26, 19),
(375.00, '2026-06-15 15:30:00', 26, 20), (380.00, '2026-06-15 15:45:00', 26, 21), (385.00, '2026-06-15 16:00:00', 26, 22), (390.00, '2026-06-15 16:15:00', 26, 23), (395.00, '2026-06-15 16:30:00', 26, 24),
(400.00, '2026-06-15 16:45:00', 26, 25), (405.00, '2026-06-15 17:00:00', 26, 26), (410.00, '2026-06-15 17:15:00', 26, 27), (415.00, '2026-06-15 17:30:00', 26, 28), (420.00, '2026-06-15 17:45:00', 26, 29),

-- ==========================================
-- SUBASTA 27 (Base: 70.00 | 2026-06-11 a 2026-06-18) | Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(75.00, '2026-06-12 10:00:00', 27, 30), (80.00, '2026-06-12 10:15:00', 27, 31), (85.00, '2026-06-12 10:30:00', 27, 32), (90.00, '2026-06-12 10:45:00', 27, 33), (95.00, '2026-06-12 11:00:00', 27, 34),
(100.00, '2026-06-12 11:15:00', 27, 35), (105.00, '2026-06-12 11:30:00', 27, 36), (110.00, '2026-06-12 11:45:00', 27, 37), (115.00, '2026-06-12 12:00:00', 27, 38), (120.00, '2026-06-12 12:15:00', 27, 39),
(125.00, '2026-06-12 12:30:00', 27, 40), (130.00, '2026-06-12 12:45:00', 27, 41), (135.00, '2026-06-12 13:00:00', 27, 42), (140.00, '2026-06-12 13:15:00', 27, 43), (145.00, '2026-06-12 13:30:00', 27, 44),
(150.00, '2026-06-12 13:45:00', 27, 45), (155.00, '2026-06-12 14:00:00', 27, 46), (160.00, '2026-06-12 14:15:00', 27, 47), (165.00, '2026-06-12 14:30:00', 27, 48), (170.00, '2026-06-12 14:45:00', 27, 49),
-- Ronda 2
(175.00, '2026-06-14 10:00:00', 27, 30), (180.00, '2026-06-14 10:15:00', 27, 31), (185.00, '2026-06-14 10:30:00', 27, 32), (190.00, '2026-06-14 10:45:00', 27, 33), (195.00, '2026-06-14 11:00:00', 27, 34),
(200.00, '2026-06-14 11:15:00', 27, 35), (205.00, '2026-06-14 11:30:00', 27, 36), (210.00, '2026-06-14 11:45:00', 27, 37), (215.00, '2026-06-14 12:00:00', 27, 38), (220.00, '2026-06-14 12:15:00', 27, 39),
(225.00, '2026-06-14 12:30:00', 27, 40), (230.00, '2026-06-14 12:45:00', 27, 41), (235.00, '2026-06-14 13:00:00', 27, 42), (240.00, '2026-06-14 13:15:00', 27, 43), (245.00, '2026-06-14 13:30:00', 27, 44),
(250.00, '2026-06-14 13:45:00', 27, 45), (255.00, '2026-06-14 14:00:00', 27, 46), (260.00, '2026-06-14 14:15:00', 27, 47), (265.00, '2026-06-14 14:30:00', 27, 48), (270.00, '2026-06-14 14:45:00', 27, 49),
-- Ronda 3
(275.00, '2026-06-16 10:00:00', 27, 30), (280.00, '2026-06-16 10:15:00', 27, 31), (285.00, '2026-06-16 10:30:00', 27, 32), (290.00, '2026-06-16 10:45:00', 27, 33), (295.00, '2026-06-16 11:00:00', 27, 34),
(300.00, '2026-06-16 11:15:00', 27, 35), (305.00, '2026-06-16 11:30:00', 27, 36), (310.00, '2026-06-16 11:45:00', 27, 37), (315.00, '2026-06-16 12:00:00', 27, 38), (320.00, '2026-06-16 12:15:00', 27, 39),
(325.00, '2026-06-16 12:30:00', 27, 40), (330.00, '2026-06-16 12:45:00', 27, 41), (335.00, '2026-06-16 13:00:00', 27, 42), (340.00, '2026-06-16 13:15:00', 27, 43), (345.00, '2026-06-16 13:30:00', 27, 44),
(350.00, '2026-06-16 13:45:00', 27, 45), (355.00, '2026-06-16 14:00:00', 27, 46), (360.00, '2026-06-16 14:15:00', 27, 47), (365.00, '2026-06-16 14:30:00', 27, 48), (370.00, '2026-06-16 14:45:00', 27, 49),

-- ==========================================
-- SUBASTA 28 (Base: 110.00 | 2026-06-11 a 2026-06-16) | Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(115.00, '2026-06-12 10:00:00', 28, 50), (120.00, '2026-06-12 10:15:00', 28, 51), (125.00, '2026-06-12 10:30:00', 28, 52), (130.00, '2026-06-12 10:45:00', 28, 53), (135.00, '2026-06-12 11:00:00', 28, 54),
(140.00, '2026-06-12 11:15:00', 28, 55), (145.00, '2026-06-12 11:30:00', 28, 56), (150.00, '2026-06-12 11:45:00', 28, 57), (155.00, '2026-06-12 12:00:00', 28, 58), (160.00, '2026-06-12 12:15:00', 28, 59),
(165.00, '2026-06-12 12:30:00', 28, 60), (170.00, '2026-06-12 12:45:00', 28, 61), (175.00, '2026-06-12 13:00:00', 28, 62), (180.00, '2026-06-12 13:15:00', 28, 63), (185.00, '2026-06-12 13:30:00', 28, 64),
(190.00, '2026-06-12 13:45:00', 28, 65), (195.00, '2026-06-12 14:00:00', 28, 66), (200.00, '2026-06-12 14:15:00', 28, 67), (205.00, '2026-06-12 14:30:00', 28, 68), (210.00, '2026-06-12 14:45:00', 28, 69),
-- Ronda 2
(215.00, '2026-06-13 10:00:00', 28, 50), (220.00, '2026-06-13 10:15:00', 28, 51), (225.00, '2026-06-13 10:30:00', 28, 52), (230.00, '2026-06-13 10:45:00', 28, 53), (235.00, '2026-06-13 11:00:00', 28, 54),
(240.00, '2026-06-13 11:15:00', 28, 55), (245.00, '2026-06-13 11:30:00', 28, 56), (250.00, '2026-06-13 11:45:00', 28, 57), (255.00, '2026-06-13 12:00:00', 28, 58), (260.00, '2026-06-13 12:15:00', 28, 59),
(265.00, '2026-06-13 12:30:00', 28, 60), (270.00, '2026-06-13 12:45:00', 28, 61), (275.00, '2026-06-13 13:00:00', 28, 62), (280.00, '2026-06-13 13:15:00', 28, 63), (285.00, '2026-06-13 13:30:00', 28, 64),
(290.00, '2026-06-13 13:45:00', 28, 65), (295.00, '2026-06-13 14:00:00', 28, 66), (300.00, '2026-06-13 14:15:00', 28, 67), (305.00, '2026-06-13 14:30:00', 28, 68), (310.00, '2026-06-13 14:45:00', 28, 69),
-- Ronda 3
(315.00, '2026-06-15 10:00:00', 28, 50), (320.00, '2026-06-15 10:15:00', 28, 51), (325.00, '2026-06-15 10:30:00', 28, 52), (330.00, '2026-06-15 10:45:00', 28, 53), (335.00, '2026-06-15 11:00:00', 28, 54),
(340.00, '2026-06-15 11:15:00', 28, 55), (345.00, '2026-06-15 11:30:00', 28, 56), (350.00, '2026-06-15 11:45:00', 28, 57), (355.00, '2026-06-15 12:00:00', 28, 58), (360.00, '2026-06-15 12:15:00', 28, 59),
(365.00, '2026-06-15 12:30:00', 28, 60), (370.00, '2026-06-15 12:45:00', 28, 61), (375.00, '2026-06-15 13:00:00', 28, 62), (380.00, '2026-06-15 13:15:00', 28, 63), (385.00, '2026-06-15 13:30:00', 28, 64),
(390.00, '2026-06-15 13:45:00', 28, 65), (395.00, '2026-06-15 14:00:00', 28, 66), (400.00, '2026-06-15 14:15:00', 28, 67), (405.00, '2026-06-15 14:30:00', 28, 68), (410.00, '2026-06-15 14:45:00', 28, 69),

-- ==========================================
-- SUBASTA 29 (Base: 170.00 | 2026-06-12 a 2026-06-19) | Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(175.00, '2026-06-13 10:00:00', 29, 70), (180.00, '2026-06-13 10:15:00', 29, 71), (185.00, '2026-06-13 10:30:00', 29, 72), (190.00, '2026-06-13 10:45:00', 29, 73), (195.00, '2026-06-13 11:00:00', 29, 74),
(200.00, '2026-06-13 11:15:00', 29, 75), (205.00, '2026-06-13 11:30:00', 29, 76), (210.00, '2026-06-13 11:45:00', 29, 77), (215.00, '2026-06-13 12:00:00', 29, 78), (220.00, '2026-06-13 12:15:00', 29, 79),
(225.00, '2026-06-13 12:30:00', 29, 80), (230.00, '2026-06-13 12:45:00', 29, 81), (235.00, '2026-06-13 13:00:00', 29, 82), (240.00, '2026-06-13 13:15:00', 29, 83), (245.00, '2026-06-13 13:30:00', 29, 84),
(250.00, '2026-06-13 13:45:00', 29, 85), (255.00, '2026-06-13 14:00:00', 29, 86), (260.00, '2026-06-13 14:15:00', 29, 87), (265.00, '2026-06-13 14:30:00', 29, 88), (270.00, '2026-06-13 14:45:00', 29, 89),
-- Ronda 2
(275.00, '2026-06-15 10:00:00', 29, 70), (280.00, '2026-06-15 10:15:00', 29, 71), (285.00, '2026-06-15 10:30:00', 29, 72), (290.00, '2026-06-15 10:45:00', 29, 73), (295.00, '2026-06-15 11:00:00', 29, 74),
(300.00, '2026-06-15 11:15:00', 29, 75), (305.00, '2026-06-15 11:30:00', 29, 76), (310.00, '2026-06-15 11:45:00', 29, 77), (315.00, '2026-06-15 12:00:00', 29, 78), (320.00, '2026-06-15 12:15:00', 29, 79),
(325.00, '2026-06-15 12:30:00', 29, 80), (330.00, '2026-06-15 12:45:00', 29, 81), (335.00, '2026-06-15 13:00:00', 29, 82), (340.00, '2026-06-15 13:15:00', 29, 83), (345.00, '2026-06-15 13:30:00', 29, 84),
(350.00, '2026-06-15 13:45:00', 29, 85), (355.00, '2026-06-15 14:00:00', 29, 86), (360.00, '2026-06-15 14:15:00', 29, 87), (365.00, '2026-06-15 14:30:00', 29, 88), (370.00, '2026-06-15 14:45:00', 29, 89),
-- Ronda 3
(375.00, '2026-06-17 10:00:00', 29, 70), (380.00, '2026-06-17 10:15:00', 29, 71), (385.00, '2026-06-17 10:30:00', 29, 72), (390.00, '2026-06-17 10:45:00', 29, 73), (395.00, '2026-06-17 11:00:00', 29, 74),
(400.00, '2026-06-17 11:15:00', 29, 75), (405.00, '2026-06-17 11:30:00', 29, 76), (410.00, '2026-06-17 11:45:00', 29, 77), (415.00, '2026-06-17 12:00:00', 29, 78), (420.00, '2026-06-17 12:15:00', 29, 79),
(425.00, '2026-06-17 12:30:00', 29, 80), (430.00, '2026-06-17 12:45:00', 29, 81), (435.00, '2026-06-17 13:00:00', 29, 82), (440.00, '2026-06-17 13:15:00', 29, 83), (445.00, '2026-06-17 13:30:00', 29, 84),
(450.00, '2026-06-17 13:45:00', 29, 85), (455.00, '2026-06-17 14:00:00', 29, 86), (460.00, '2026-06-17 14:15:00', 29, 87), (465.00, '2026-06-17 14:30:00', 29, 88), (470.00, '2026-06-17 14:45:00', 29, 89),

-- ==========================================
-- SUBASTA 30 (Base: 35.00 | 2026-06-12 a 2026-06-17) | Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(40.00, '2026-06-13 10:00:00', 30, 85), (45.00, '2026-06-13 10:15:00', 30, 86), (50.00, '2026-06-13 10:30:00', 30, 87), (55.00, '2026-06-13 10:45:00', 30, 88), (60.00, '2026-06-13 11:00:00', 30, 89),
(65.00, '2026-06-13 11:15:00', 30, 90), (70.00, '2026-06-13 11:30:00', 30, 91), (75.00, '2026-06-13 11:45:00', 30, 92), (80.00, '2026-06-13 12:00:00', 30, 93), (85.00, '2026-06-13 12:15:00', 30, 94),
(90.00, '2026-06-13 12:30:00', 30, 95), (95.00, '2026-06-13 12:45:00', 30, 96), (100.00, '2026-06-13 13:00:00', 30, 97), (105.00, '2026-06-13 13:15:00', 30, 98), (110.00, '2026-06-13 13:30:00', 30, 99),
(115.00, '2026-06-13 13:45:00', 30, 100), (120.00, '2026-06-13 14:00:00', 30, 101), (125.00, '2026-06-13 14:15:00', 30, 102), (130.00, '2026-06-13 14:30:00', 30, 103), (135.00, '2026-06-13 14:45:00', 30, 104),
-- Ronda 2
(140.00, '2026-06-14 10:00:00', 30, 85), (145.00, '2026-06-14 10:15:00', 30, 86), (150.00, '2026-06-14 10:30:00', 30, 87), (155.00, '2026-06-14 10:45:00', 30, 88), (160.00, '2026-06-14 11:00:00', 30, 89),
(165.00, '2026-06-14 11:15:00', 30, 90), (170.00, '2026-06-14 11:30:00', 30, 91), (175.00, '2026-06-14 11:45:00', 30, 92), (180.00, '2026-06-14 12:00:00', 30, 93), (185.00, '2026-06-14 12:15:00', 30, 94),
(190.00, '2026-06-14 12:30:00', 30, 95), (195.00, '2026-06-14 12:45:00', 30, 96), (200.00, '2026-06-14 13:00:00', 30, 97), (205.00, '2026-06-14 13:15:00', 30, 98), (210.00, '2026-06-14 13:30:00', 30, 99),
(215.00, '2026-06-14 13:45:00', 30, 100), (220.00, '2026-06-14 14:00:00', 30, 101), (225.00, '2026-06-14 14:15:00', 30, 102), (230.00, '2026-06-14 14:30:00', 30, 103), (235.00, '2026-06-14 14:45:00', 30, 104),
-- Ronda 3
(240.00, '2026-06-16 10:00:00', 30, 85), (245.00, '2026-06-16 10:15:00', 30, 86), (250.00, '2026-06-16 10:30:00', 30, 87), (255.00, '2026-06-16 10:45:00', 30, 88), (260.00, '2026-06-16 11:00:00', 30, 89),
(265.00, '2026-06-16 11:15:00', 30, 90), (270.00, '2026-06-16 11:30:00', 30, 91), (275.00, '2026-06-16 11:45:00', 30, 92), (280.00, '2026-06-16 12:00:00', 30, 93), (285.00, '2026-06-16 12:15:00', 30, 94),
(290.00, '2026-06-16 12:30:00', 30, 95), (295.00, '2026-06-16 12:45:00', 30, 96), (300.00, '2026-06-16 13:00:00', 30, 97), (305.00, '2026-06-16 13:15:00', 30, 98), (310.00, '2026-06-16 13:30:00', 30, 99),
(315.00, '2026-06-16 13:45:00', 30, 100), (320.00, '2026-06-16 14:00:00', 30, 101), (325.00, '2026-06-16 14:15:00', 30, 102), (330.00, '2026-06-16 14:30:00', 30, 103), (335.00, '2026-06-16 14:45:00', 30, 104),

-- ==========================================
-- SUBASTA 31 (Base: 160.00 | Inicio: 2026-06-12 16:00:00 | Cierre: 2026-06-19 16:00:00)
-- ==========================================
-- Ronda 1
(165.00, '2026-06-13 10:00:00', 31, 10), (170.00, '2026-06-13 10:15:00', 31, 11), (175.00, '2026-06-13 10:30:00', 31, 12), (180.00, '2026-06-13 10:45:00', 31, 13), (185.00, '2026-06-13 11:00:00', 31, 14),
(190.00, '2026-06-13 11:15:00', 31, 15), (195.00, '2026-06-13 11:30:00', 31, 16), (200.00, '2026-06-13 11:45:00', 31, 17), (205.00, '2026-06-13 12:00:00', 31, 18), (210.00, '2026-06-13 12:15:00', 31, 19),
(215.00, '2026-06-13 12:30:00', 31, 20), (220.00, '2026-06-13 12:45:00', 31, 21), (225.00, '2026-06-13 13:00:00', 31, 22), (230.00, '2026-06-13 13:15:00', 31, 23), (235.00, '2026-06-13 13:30:00', 31, 24),
(240.00, '2026-06-13 13:45:00', 31, 25), (245.00, '2026-06-13 14:00:00', 31, 26), (250.00, '2026-06-13 14:15:00', 31, 27), (255.00, '2026-06-13 14:30:00', 31, 28), (260.00, '2026-06-13 14:45:00', 31, 29),
-- Ronda 2
(265.00, '2026-06-14 10:00:00', 31, 10), (270.00, '2026-06-14 10:15:00', 31, 11), (275.00, '2026-06-14 10:30:00', 31, 12), (280.00, '2026-06-14 10:45:00', 31, 13), (285.00, '2026-06-14 11:00:00', 31, 14),
(290.00, '2026-06-14 11:15:00', 31, 15), (295.00, '2026-06-14 11:30:00', 31, 16), (300.00, '2026-06-14 11:45:00', 31, 17), (305.00, '2026-06-14 12:00:00', 31, 18), (310.00, '2026-06-14 12:15:00', 31, 19),
(315.00, '2026-06-14 12:30:00', 31, 20), (320.00, '2026-06-14 12:45:00', 31, 21), (325.00, '2026-06-14 13:00:00', 31, 22), (330.00, '2026-06-14 13:15:00', 31, 23), (335.00, '2026-06-14 13:30:00', 31, 24),
(340.00, '2026-06-14 13:45:00', 31, 25), (345.00, '2026-06-14 14:00:00', 31, 26), (350.00, '2026-06-14 14:15:00', 31, 27), (355.00, '2026-06-14 14:30:00', 31, 28), (360.00, '2026-06-14 14:45:00', 31, 29),
-- Ronda 3
(365.00, '2026-06-15 10:00:00', 31, 10), (370.00, '2026-06-15 10:15:00', 31, 11), (375.00, '2026-06-15 10:30:00', 31, 12), (380.00, '2026-06-15 10:45:00', 31, 13), (385.00, '2026-06-15 11:00:00', 31, 14),
(390.00, '2026-06-15 11:15:00', 31, 15), (395.00, '2026-06-15 11:30:00', 31, 16), (400.00, '2026-06-15 11:45:00', 31, 17), (405.00, '2026-06-15 12:00:00', 31, 18), (410.00, '2026-06-15 12:15:00', 31, 19),
(415.00, '2026-06-15 12:30:00', 31, 20), (420.00, '2026-06-15 12:45:00', 31, 21), (425.00, '2026-06-15 13:00:00', 31, 22), (430.00, '2026-06-15 13:15:00', 31, 23), (435.00, '2026-06-15 13:30:00', 31, 24),
(440.00, '2026-06-15 13:45:00', 31, 25), (445.00, '2026-06-15 14:00:00', 31, 26), (450.00, '2026-06-15 14:15:00', 31, 27), (455.00, '2026-06-15 14:30:00', 31, 28), (460.00, '2026-06-15 14:45:00', 31, 29),

-- ==========================================
-- SUBASTA 32 (Base: 150.00 | Inicio: 2026-06-13 09:30:00 | Cierre: 2026-06-18 09:30:00)
-- ==========================================
-- Ronda 1
(155.00, '2026-06-14 10:00:00', 32, 30), (160.00, '2026-06-14 10:15:00', 32, 31), (165.00, '2026-06-14 10:30:00', 32, 32), (170.00, '2026-06-14 10:45:00', 32, 33), (175.00, '2026-06-14 11:00:00', 32, 34),
(180.00, '2026-06-14 11:15:00', 32, 35), (185.00, '2026-06-14 11:30:00', 32, 36), (190.00, '2026-06-14 11:45:00', 32, 37), (195.00, '2026-06-14 12:00:00', 32, 38), (200.00, '2026-06-14 12:15:00', 32, 39),
(205.00, '2026-06-14 12:30:00', 32, 40), (210.00, '2026-06-14 12:45:00', 32, 41), (215.00, '2026-06-14 13:00:00', 32, 42), (220.00, '2026-06-14 13:15:00', 32, 43), (225.00, '2026-06-14 13:30:00', 32, 44),
(230.00, '2026-06-14 13:45:00', 32, 45), (235.00, '2026-06-14 14:00:00', 32, 46), (240.00, '2026-06-14 14:15:00', 32, 47), (245.00, '2026-06-14 14:30:00', 32, 48), (250.00, '2026-06-14 14:45:00', 32, 49),
-- Ronda 2
(255.00, '2026-06-15 10:00:00', 32, 30), (260.00, '2026-06-15 10:15:00', 32, 31), (265.00, '2026-06-15 10:30:00', 32, 32), (270.00, '2026-06-15 10:45:00', 32, 33), (275.00, '2026-06-15 11:00:00', 32, 34),
(280.00, '2026-06-15 11:15:00', 32, 35), (285.00, '2026-06-15 11:30:00', 32, 36), (290.00, '2026-06-15 11:45:00', 32, 37), (295.00, '2026-06-15 12:00:00', 32, 38), (300.00, '2026-06-15 12:15:00', 32, 39),
(305.00, '2026-06-15 12:30:00', 32, 40), (310.00, '2026-06-15 12:45:00', 32, 41), (315.00, '2026-06-15 13:00:00', 32, 42), (320.00, '2026-06-15 13:15:00', 32, 43), (325.00, '2026-06-15 13:30:00', 32, 44),
(330.00, '2026-06-15 13:45:00', 32, 45), (335.00, '2026-06-15 14:00:00', 32, 46), (340.00, '2026-06-15 14:15:00', 32, 47), (345.00, '2026-06-15 14:30:00', 32, 48), (350.00, '2026-06-15 14:45:00', 32, 49),
-- Ronda 3
(355.00, '2026-06-16 10:00:00', 32, 30), (360.00, '2026-06-16 10:15:00', 32, 31), (365.00, '2026-06-16 10:30:00', 32, 32), (370.00, '2026-06-16 10:45:00', 32, 33), (375.00, '2026-06-16 11:00:00', 32, 34),
(380.00, '2026-06-16 11:15:00', 32, 35), (385.00, '2026-06-16 11:30:00', 32, 36), (390.00, '2026-06-16 11:45:00', 32, 37), (395.00, '2026-06-16 12:00:00', 32, 38), (400.00, '2026-06-16 12:15:00', 32, 39),
(405.00, '2026-06-16 12:30:00', 32, 40), (410.00, '2026-06-16 12:45:00', 32, 41), (415.00, '2026-06-16 13:00:00', 32, 42), (420.00, '2026-06-16 13:15:00', 32, 43), (425.00, '2026-06-16 13:30:00', 32, 44),
(430.00, '2026-06-16 13:45:00', 32, 45), (435.00, '2026-06-16 14:00:00', 32, 46), (440.00, '2026-06-16 14:15:00', 32, 47), (445.00, '2026-06-16 14:30:00', 32, 48), (450.00, '2026-06-16 14:45:00', 32, 49),

-- ==========================================
-- SUBASTA 33 (Base: 250.00 | Inicio: 2026-06-13 14:00:00 | Cierre: 2026-06-20 14:00:00)
-- ==========================================
-- Ronda 1
(255.00, '2026-06-14 10:00:00', 33, 50), (260.00, '2026-06-14 10:15:00', 33, 51), (265.00, '2026-06-14 10:30:00', 33, 52), (270.00, '2026-06-14 10:45:00', 33, 53), (275.00, '2026-06-14 11:00:00', 33, 54),
(280.00, '2026-06-14 11:15:00', 33, 55), (285.00, '2026-06-14 11:30:00', 33, 56), (290.00, '2026-06-14 11:45:00', 33, 57), (295.00, '2026-06-14 12:00:00', 33, 58), (300.00, '2026-06-14 12:15:00', 33, 59),
(305.00, '2026-06-14 12:30:00', 33, 60), (310.00, '2026-06-14 12:45:00', 33, 61), (315.00, '2026-06-14 13:00:00', 33, 62), (320.00, '2026-06-14 13:15:00', 33, 63), (325.00, '2026-06-14 13:30:00', 33, 64),
(330.00, '2026-06-14 13:45:00', 33, 65), (335.00, '2026-06-14 14:00:00', 33, 66), (340.00, '2026-06-14 14:15:00', 33, 67), (345.00, '2026-06-14 14:30:00', 33, 68), (350.00, '2026-06-14 14:45:00', 33, 69),
-- Ronda 2
(355.00, '2026-06-15 10:00:00', 33, 50), (360.00, '2026-06-15 10:15:00', 33, 51), (365.00, '2026-06-15 10:30:00', 33, 52), (370.00, '2026-06-15 10:45:00', 33, 53), (375.00, '2026-06-15 11:00:00', 33, 54),
(380.00, '2026-06-15 11:15:00', 33, 55), (385.00, '2026-06-15 11:30:00', 33, 56), (390.00, '2026-06-15 11:45:00', 33, 57), (395.00, '2026-06-15 12:00:00', 33, 58), (400.00, '2026-06-15 12:15:00', 33, 59),
(405.00, '2026-06-15 12:30:00', 33, 60), (410.00, '2026-06-15 12:45:00', 33, 61), (415.00, '2026-06-15 13:00:00', 33, 62), (420.00, '2026-06-15 13:15:00', 33, 63), (425.00, '2026-06-15 13:30:00', 33, 64),
(430.00, '2026-06-15 13:45:00', 33, 65), (435.00, '2026-06-15 14:00:00', 33, 66), (440.00, '2026-06-15 14:15:00', 33, 67), (445.00, '2026-06-15 14:30:00', 33, 68), (450.00, '2026-06-15 14:45:00', 33, 69),
-- Ronda 3
(455.00, '2026-06-16 10:00:00', 33, 50), (460.00, '2026-06-16 10:15:00', 33, 51), (465.00, '2026-06-16 10:30:00', 33, 52), (470.00, '2026-06-16 10:45:00', 33, 53), (475.00, '2026-06-16 11:00:00', 33, 54),
(480.00, '2026-06-16 11:15:00', 33, 55), (485.00, '2026-06-16 11:30:00', 33, 56), (490.00, '2026-06-16 11:45:00', 33, 57), (495.00, '2026-06-16 12:00:00', 33, 58), (500.00, '2026-06-16 12:15:00', 33, 59),
(505.00, '2026-06-16 12:30:00', 33, 60), (510.00, '2026-06-16 12:45:00', 33, 61), (515.00, '2026-06-16 13:00:00', 33, 62), (520.00, '2026-06-16 13:15:00', 33, 63), (525.00, '2026-06-16 13:30:00', 33, 64),
(530.00, '2026-06-16 13:45:00', 33, 65), (535.00, '2026-06-16 14:00:00', 33, 66), (540.00, '2026-06-16 14:15:00', 33, 67), (545.00, '2026-06-16 14:30:00', 33, 68), (550.00, '2026-06-16 14:45:00', 33, 69),

-- ==========================================
-- SUBASTA 34 (Base: 60.00 | Inicio: 2026-06-13 17:45:00 | Cierre: 2026-06-18 17:45:00)
-- ==========================================
-- Ronda 1
(65.00, '2026-06-14 10:00:00', 34, 70), (70.00, '2026-06-14 10:15:00', 34, 71), (75.00, '2026-06-14 10:30:00', 34, 72), (80.00, '2026-06-14 10:45:00', 34, 73), (85.00, '2026-06-14 11:00:00', 34, 74),
(90.00, '2026-06-14 11:15:00', 34, 75), (95.00, '2026-06-14 11:30:00', 34, 76), (100.00, '2026-06-14 11:45:00', 34, 77), (105.00, '2026-06-14 12:00:00', 34, 78), (110.00, '2026-06-14 12:15:00', 34, 79),
(115.00, '2026-06-14 12:30:00', 34, 80), (120.00, '2026-06-14 12:45:00', 34, 81), (125.00, '2026-06-14 13:00:00', 34, 82), (130.00, '2026-06-14 13:15:00', 34, 83), (135.00, '2026-06-14 13:30:00', 34, 84),
(140.00, '2026-06-14 13:45:00', 34, 85), (145.00, '2026-06-14 14:00:00', 34, 86), (150.00, '2026-06-14 14:15:00', 34, 87), (155.00, '2026-06-14 14:30:00', 34, 88), (160.00, '2026-06-14 14:45:00', 34, 89),
-- Ronda 2
(165.00, '2026-06-15 10:00:00', 34, 70), (170.00, '2026-06-15 10:15:00', 34, 71), (175.00, '2026-06-15 10:30:00', 34, 72), (180.00, '2026-06-15 10:45:00', 34, 73), (185.00, '2026-06-15 11:00:00', 34, 74),
(190.00, '2026-06-15 11:15:00', 34, 75), (195.00, '2026-06-15 11:30:00', 34, 76), (200.00, '2026-06-15 11:45:00', 34, 77), (205.00, '2026-06-15 12:00:00', 34, 78), (210.00, '2026-06-15 12:15:00', 34, 79),
(215.00, '2026-06-15 12:30:00', 34, 80), (220.00, '2026-06-15 12:45:00', 34, 81), (225.00, '2026-06-15 13:00:00', 34, 82), (230.00, '2026-06-15 13:15:00', 34, 83), (235.00, '2026-06-15 13:30:00', 34, 84),
(240.00, '2026-06-15 13:45:00', 34, 85), (245.00, '2026-06-15 14:00:00', 34, 86), (250.00, '2026-06-15 14:15:00', 34, 87), (255.00, '2026-06-15 14:30:00', 34, 88), (260.00, '2026-06-15 14:45:00', 34, 89),
-- Ronda 3
(265.00, '2026-06-16 10:00:00', 34, 70), (270.00, '2026-06-16 10:15:00', 34, 71), (275.00, '2026-06-16 10:30:00', 34, 72), (280.00, '2026-06-16 10:45:00', 34, 73), (285.00, '2026-06-16 11:00:00', 34, 74),
(290.00, '2026-06-16 11:15:00', 34, 75), (295.00, '2026-06-16 11:30:00', 34, 76), (300.00, '2026-06-16 11:45:00', 34, 77), (305.00, '2026-06-16 12:00:00', 34, 78), (310.00, '2026-06-16 12:15:00', 34, 79),
(315.00, '2026-06-16 12:30:00', 34, 80), (320.00, '2026-06-16 12:45:00', 34, 81), (325.00, '2026-06-16 13:00:00', 34, 82), (330.00, '2026-06-16 13:15:00', 34, 83), (335.00, '2026-06-16 13:30:00', 34, 84),
(340.00, '2026-06-16 13:45:00', 34, 85), (345.00, '2026-06-16 14:00:00', 34, 86), (350.00, '2026-06-16 14:15:00', 34, 87), (355.00, '2026-06-16 14:30:00', 34, 88), (360.00, '2026-06-16 14:45:00', 34, 89),

-- ==========================================
-- SUBASTA 35 (Base: 180.00 | Inicio: 2026-06-14 10:00:00 | Cierre: 2026-06-21 10:00:00)
-- ==========================================
-- Ronda 1
(185.00, '2026-06-15 10:00:00', 35, 90), (190.00, '2026-06-15 10:15:00', 35, 91), (195.00, '2026-06-15 10:30:00', 35, 92), (200.00, '2026-06-15 10:45:00', 35, 93), (205.00, '2026-06-15 11:00:00', 35, 94),
(210.00, '2026-06-15 11:15:00', 35, 95), (215.00, '2026-06-15 11:30:00', 35, 96), (220.00, '2026-06-15 11:45:00', 35, 97), (225.00, '2026-06-15 12:00:00', 35, 98), (230.00, '2026-06-15 12:15:00', 35, 99),
(235.00, '2026-06-15 12:30:00', 35, 100), (240.00, '2026-06-15 12:45:00', 35, 101), (245.00, '2026-06-15 13:00:00', 35, 102), (250.00, '2026-06-15 13:15:00', 35, 103), (255.00, '2026-06-15 13:30:00', 35, 104),
(260.00, '2026-06-15 13:45:00', 35, 10), (265.00, '2026-06-15 14:00:00', 35, 11), (270.00, '2026-06-15 14:15:00', 35, 12), (275.00, '2026-06-15 14:30:00', 35, 13), (280.00, '2026-06-15 14:45:00', 35, 14),
-- Ronda 2
(285.00, '2026-06-16 10:00:00', 35, 90), (290.00, '2026-06-16 10:15:00', 35, 91), (295.00, '2026-06-16 10:30:00', 35, 92), (300.00, '2026-06-16 10:45:00', 35, 93), (305.00, '2026-06-16 11:00:00', 35, 94),
(310.00, '2026-06-16 11:15:00', 35, 95), (315.00, '2026-06-16 11:30:00', 35, 96), (320.00, '2026-06-16 11:45:00', 35, 97), (325.00, '2026-06-16 12:00:00', 35, 98), (330.00, '2026-06-16 12:15:00', 35, 99),
(335.00, '2026-06-16 12:30:00', 35, 100), (340.00, '2026-06-16 12:45:00', 35, 101), (345.00, '2026-06-16 13:00:00', 35, 102), (350.00, '2026-06-16 13:15:00', 35, 103), (355.00, '2026-06-16 13:30:00', 35, 104),
(360.00, '2026-06-16 13:45:00', 35, 10), (365.00, '2026-06-16 14:00:00', 35, 11), (370.00, '2026-06-16 14:15:00', 35, 12), (375.00, '2026-06-16 14:30:00', 35, 13), (380.00, '2026-06-16 14:45:00', 35, 14),
-- Ronda 3
(385.00, '2026-06-17 10:00:00', 35, 90), (390.00, '2026-06-17 10:15:00', 35, 91), (395.00, '2026-06-17 10:30:00', 35, 92), (400.00, '2026-06-17 10:45:00', 35, 93), (405.00, '2026-06-17 11:00:00', 35, 94),
(410.00, '2026-06-17 11:15:00', 35, 95), (415.00, '2026-06-17 11:30:00', 35, 96), (420.00, '2026-06-17 11:45:00', 35, 97), (425.00, '2026-06-17 12:00:00', 35, 98), (430.00, '2026-06-17 12:15:00', 35, 99),
(435.00, '2026-06-17 12:30:00', 35, 100), (440.00, '2026-06-17 12:45:00', 35, 101), (445.00, '2026-06-17 13:00:00', 35, 102), (450.00, '2026-06-17 13:15:00', 35, 103), (455.00, '2026-06-17 13:30:00', 35, 104),
(460.00, '2026-06-17 13:45:00', 35, 10), (465.00, '2026-06-17 14:00:00', 35, 11), (470.00, '2026-06-17 14:15:00', 35, 12), (475.00, '2026-06-17 14:30:00', 35, 13), (480.00, '2026-06-17 14:45:00', 35, 14),

-- ==========================================
-- SUBASTA 36 (Base: 40.00 | Inicio: 2026-06-14 13:00:00 | Cierre: 2026-06-19 13:00:00)
-- ==========================================
-- Ronda 1
(45.00, '2026-06-15 10:00:00', 36, 15), (50.00, '2026-06-15 10:15:00', 36, 16), (55.00, '2026-06-15 10:30:00', 36, 17), (60.00, '2026-06-15 10:45:00', 36, 18), (65.00, '2026-06-15 11:00:00', 36, 19),
(70.00, '2026-06-15 11:15:00', 36, 20), (75.00, '2026-06-15 11:30:00', 36, 21), (80.00, '2026-06-15 11:45:00', 36, 22), (85.00, '2026-06-15 12:00:00', 36, 23), (90.00, '2026-06-15 12:15:00', 36, 24),
(95.00, '2026-06-15 12:30:00', 36, 25), (100.00, '2026-06-15 12:45:00', 36, 26), (105.00, '2026-06-15 13:00:00', 36, 27), (110.00, '2026-06-15 13:15:00', 36, 28), (115.00, '2026-06-15 13:30:00', 36, 29),
(120.00, '2026-06-15 13:45:00', 36, 30), (125.00, '2026-06-15 14:00:00', 36, 31), (130.00, '2026-06-15 14:15:00', 36, 32), (135.00, '2026-06-15 14:30:00', 36, 33), (140.00, '2026-06-15 14:45:00', 36, 34),
-- Ronda 2
(145.00, '2026-06-16 10:00:00', 36, 15), (150.00, '2026-06-16 10:15:00', 36, 16), (155.00, '2026-06-16 10:30:00', 36, 17), (160.00, '2026-06-16 10:45:00', 36, 18), (165.00, '2026-06-16 11:00:00', 36, 19),
(170.00, '2026-06-16 11:15:00', 36, 20), (175.00, '2026-06-16 11:30:00', 36, 21), (180.00, '2026-06-16 11:45:00', 36, 22), (185.00, '2026-06-16 12:00:00', 36, 23), (190.00, '2026-06-16 12:15:00', 36, 24),
(195.00, '2026-06-16 12:30:00', 36, 25), (200.00, '2026-06-16 12:45:00', 36, 26), (205.00, '2026-06-16 13:00:00', 36, 27), (210.00, '2026-06-16 13:15:00', 36, 28), (215.00, '2026-06-16 13:30:00', 36, 29),
(220.00, '2026-06-16 13:45:00', 36, 30), (225.00, '2026-06-16 14:00:00', 36, 31), (230.00, '2026-06-16 14:15:00', 36, 32), (235.00, '2026-06-16 14:30:00', 36, 33), (240.00, '2026-06-16 14:45:00', 36, 34),
-- Ronda 3
(245.00, '2026-06-17 10:00:00', 36, 15), (250.00, '2026-06-17 10:15:00', 36, 16), (255.00, '2026-06-17 10:30:00', 36, 17), (260.00, '2026-06-17 10:45:00', 36, 18), (265.00, '2026-06-17 11:00:00', 36, 19),
(270.00, '2026-06-17 11:15:00', 36, 20), (275.00, '2026-06-17 11:30:00', 36, 21), (280.00, '2026-06-17 11:45:00', 36, 22), (285.00, '2026-06-17 12:00:00', 36, 23), (290.00, '2026-06-17 12:15:00', 36, 24),
(295.00, '2026-06-17 12:30:00', 36, 25), (300.00, '2026-06-17 12:45:00', 36, 26), (305.00, '2026-06-17 13:00:00', 36, 27), (310.00, '2026-06-17 13:15:00', 36, 28), (315.00, '2026-06-17 13:30:00', 36, 29),
(320.00, '2026-06-17 13:45:00', 36, 30), (325.00, '2026-06-17 14:00:00', 36, 31), (330.00, '2026-06-17 14:15:00', 36, 32), (335.00, '2026-06-17 14:30:00', 36, 33), (340.00, '2026-06-17 14:45:00', 36, 34),

-- ==========================================
-- SUBASTA 37 (Base: 230.00 | Inicio: 2026-06-14 19:00:00 | Cierre: 2026-06-21 19:00:00)
-- ==========================================
-- Ronda 1
(235.00, '2026-06-15 10:00:00', 37, 35), (240.00, '2026-06-15 10:15:00', 37, 36), (245.00, '2026-06-15 10:30:00', 37, 37), (250.00, '2026-06-15 10:45:00', 37, 38), (255.00, '2026-06-15 11:00:00', 37, 39),
(260.00, '2026-06-15 11:15:00', 37, 40), (265.00, '2026-06-15 11:30:00', 37, 41), (270.00, '2026-06-15 11:45:00', 37, 42), (275.00, '2026-06-15 12:00:00', 37, 43), (280.00, '2026-06-15 12:15:00', 37, 44),
(285.00, '2026-06-15 12:30:00', 37, 45), (290.00, '2026-06-15 12:45:00', 37, 46), (295.00, '2026-06-15 13:00:00', 37, 47), (300.00, '2026-06-15 13:15:00', 37, 48), (305.00, '2026-06-15 13:30:00', 37, 49),
(310.00, '2026-06-15 13:45:00', 37, 50), (315.00, '2026-06-15 14:00:00', 37, 51), (320.00, '2026-06-15 14:15:00', 37, 52), (325.00, '2026-06-15 14:30:00', 37, 53), (330.00, '2026-06-15 14:45:00', 37, 54),
-- Ronda 2
(335.00, '2026-06-16 10:00:00', 37, 35), (340.00, '2026-06-16 10:15:00', 37, 36), (345.00, '2026-06-16 10:30:00', 37, 37), (350.00, '2026-06-16 10:45:00', 37, 38), (355.00, '2026-06-16 11:00:00', 37, 39),
(360.00, '2026-06-16 11:15:00', 37, 40), (365.00, '2026-06-16 11:30:00', 37, 41), (370.00, '2026-06-16 11:45:00', 37, 42), (375.00, '2026-06-16 12:00:00', 37, 43), (380.00, '2026-06-16 12:15:00', 37, 44),
(385.00, '2026-06-16 12:30:00', 37, 45), (390.00, '2026-06-16 12:45:00', 37, 46), (395.00, '2026-06-16 13:00:00', 37, 47), (400.00, '2026-06-16 13:15:00', 37, 48), (405.00, '2026-06-16 13:30:00', 37, 49),
(410.00, '2026-06-16 13:45:00', 37, 50), (415.00, '2026-06-16 14:00:00', 37, 51), (420.00, '2026-06-16 14:15:00', 37, 52), (425.00, '2026-06-16 14:30:00', 37, 53), (430.00, '2026-06-16 14:45:00', 37, 54),
-- Ronda 3
(435.00, '2026-06-17 10:00:00', 37, 35), (440.00, '2026-06-17 10:15:00', 37, 36), (445.00, '2026-06-17 10:30:00', 37, 37), (450.00, '2026-06-17 10:45:00', 37, 38), (455.00, '2026-06-17 11:00:00', 37, 39),
(460.00, '2026-06-17 11:15:00', 37, 40), (465.00, '2026-06-17 11:30:00', 37, 41), (470.00, '2026-06-17 11:45:00', 37, 42), (475.00, '2026-06-17 12:00:00', 37, 43), (480.00, '2026-06-17 12:15:00', 37, 44),
(485.00, '2026-06-17 12:30:00', 37, 45), (490.00, '2026-06-17 12:45:00', 37, 46), (495.00, '2026-06-17 13:00:00', 37, 47), (500.00, '2026-06-17 13:15:00', 37, 48), (505.00, '2026-06-17 13:30:00', 37, 49),
(510.00, '2026-06-17 13:45:00', 37, 50), (515.00, '2026-06-17 14:00:00', 37, 51), (520.00, '2026-06-17 14:15:00', 37, 52), (525.00, '2026-06-17 14:30:00', 37, 53), (530.00, '2026-06-17 14:45:00', 37, 54),

-- ==========================================
-- SUBASTA 38 (Base: 130.00 | Inicio: 2026-06-15 08:15:00 | Cierre: 2026-06-20 08:15:00)
-- ==========================================
-- Ronda 1
(135.00, '2026-06-16 10:00:00', 38, 55), (140.00, '2026-06-16 10:15:00', 38, 56), (145.00, '2026-06-16 10:30:00', 38, 57), (150.00, '2026-06-16 10:45:00', 38, 58), (155.00, '2026-06-16 11:00:00', 38, 59),
(160.00, '2026-06-16 11:15:00', 38, 60), (165.00, '2026-06-16 11:30:00', 38, 61), (170.00, '2026-06-16 11:45:00', 38, 62), (175.00, '2026-06-16 12:00:00', 38, 63), (180.00, '2026-06-16 12:15:00', 38, 64),
(185.00, '2026-06-16 12:30:00', 38, 65), (190.00, '2026-06-16 12:45:00', 38, 66), (195.00, '2026-06-16 13:00:00', 38, 67), (200.00, '2026-06-16 13:15:00', 38, 68), (205.00, '2026-06-16 13:30:00', 38, 69),
(210.00, '2026-06-16 13:45:00', 38, 70), (215.00, '2026-06-16 14:00:00', 38, 71), (220.00, '2026-06-16 14:15:00', 38, 72), (225.00, '2026-06-16 14:30:00', 38, 73), (230.00, '2026-06-16 14:45:00', 38, 74),
-- Ronda 2
(235.00, '2026-06-17 10:00:00', 38, 55), (240.00, '2026-06-17 10:15:00', 38, 56), (245.00, '2026-06-17 10:30:00', 38, 57), (250.00, '2026-06-17 10:45:00', 38, 58), (255.00, '2026-06-17 11:00:00', 38, 59),
(260.00, '2026-06-17 11:15:00', 38, 60), (265.00, '2026-06-17 11:30:00', 38, 61), (270.00, '2026-06-17 11:45:00', 38, 62), (275.00, '2026-06-17 12:00:00', 38, 63), (280.00, '2026-06-17 12:15:00', 38, 64),
(285.00, '2026-06-17 12:30:00', 38, 65), (290.00, '2026-06-17 12:45:00', 38, 66), (295.00, '2026-06-17 13:00:00', 38, 67), (300.00, '2026-06-17 13:15:00', 38, 68), (305.00, '2026-06-17 13:30:00', 38, 69),
(310.00, '2026-06-17 13:45:00', 38, 70), (315.00, '2026-06-17 14:00:00', 38, 71), (320.00, '2026-06-17 14:15:00', 38, 72), (325.00, '2026-06-17 14:30:00', 38, 73), (330.00, '2026-06-17 14:45:00', 38, 74),
-- Ronda 3
(335.00, '2026-06-18 10:00:00', 38, 55), (340.00, '2026-06-18 10:15:00', 38, 56), (345.00, '2026-06-18 10:30:00', 38, 57), (350.00, '2026-06-18 10:45:00', 38, 58), (355.00, '2026-06-18 11:00:00', 38, 59),
(360.00, '2026-06-18 11:15:00', 38, 60), (365.00, '2026-06-18 11:30:00', 38, 61), (370.00, '2026-06-18 11:45:00', 38, 62), (375.00, '2026-06-18 12:00:00', 38, 63), (380.00, '2026-06-18 12:15:00', 38, 64),
(385.00, '2026-06-18 12:30:00', 38, 65), (390.00, '2026-06-18 12:45:00', 38, 66), (395.00, '2026-06-18 13:00:00', 38, 67), (400.00, '2026-06-18 13:15:00', 38, 68), (405.00, '2026-06-18 13:30:00', 38, 69),
(410.00, '2026-06-18 13:45:00', 38, 70), (415.00, '2026-06-18 14:00:00', 38, 71), (420.00, '2026-06-18 14:15:00', 38, 72), (425.00, '2026-06-18 14:30:00', 38, 73), (430.00, '2026-06-18 14:45:00', 38, 74),

-- ==========================================
-- SUBASTA 39 (Base: 50.00 | Inicio: 2026-06-15 12:00:00 | Cierre: 2026-06-22 12:00:00)
-- ==========================================
-- Ronda 1
(55.00, '2026-06-16 10:00:00', 39, 75), (60.00, '2026-06-16 10:15:00', 39, 76), (65.00, '2026-06-16 10:30:00', 39, 77), (70.00, '2026-06-16 10:45:00', 39, 78), (75.00, '2026-06-16 11:00:00', 39, 79),
(80.00, '2026-06-16 11:15:00', 39, 80), (85.00, '2026-06-16 11:30:00', 39, 81), (90.00, '2026-06-16 11:45:00', 39, 82), (95.00, '2026-06-16 12:00:00', 39, 83), (100.00, '2026-06-16 12:15:00', 39, 84),
(105.00, '2026-06-16 12:30:00', 39, 85), (110.00, '2026-06-16 12:45:00', 39, 86), (115.00, '2026-06-16 13:00:00', 39, 87), (120.00, '2026-06-16 13:15:00', 39, 88), (125.00, '2026-06-16 13:30:00', 39, 89),
(130.00, '2026-06-16 13:45:00', 39, 90), (135.00, '2026-06-16 14:00:00', 39, 91), (140.00, '2026-06-16 14:15:00', 39, 92), (145.00, '2026-06-16 14:30:00', 39, 93), (150.00, '2026-06-16 14:45:00', 39, 94),
-- Ronda 2
(155.00, '2026-06-17 10:00:00', 39, 75), (160.00, '2026-06-17 10:15:00', 39, 76), (165.00, '2026-06-17 10:30:00', 39, 77), (170.00, '2026-06-17 10:45:00', 39, 78), (175.00, '2026-06-17 11:00:00', 39, 79),
(180.00, '2026-06-17 11:15:00', 39, 80), (185.00, '2026-06-17 11:30:00', 39, 81), (190.00, '2026-06-17 11:45:00', 39, 82), (195.00, '2026-06-17 12:00:00', 39, 83), (200.00, '2026-06-17 12:15:00', 39, 84),
(205.00, '2026-06-17 12:30:00', 39, 85), (210.00, '2026-06-17 12:45:00', 39, 86), (215.00, '2026-06-17 13:00:00', 39, 87), (220.00, '2026-06-17 13:15:00', 39, 88), (225.00, '2026-06-17 13:30:00', 39, 89),
(230.00, '2026-06-17 13:45:00', 39, 90), (235.00, '2026-06-17 14:00:00', 39, 91), (240.00, '2026-06-17 14:15:00', 39, 92), (245.00, '2026-06-17 14:30:00', 39, 93), (250.00, '2026-06-17 14:45:00', 39, 94),
-- Ronda 3
(255.00, '2026-06-18 10:00:00', 39, 75), (260.00, '2026-06-18 10:15:00', 39, 76), (265.00, '2026-06-18 10:30:00', 39, 77), (270.00, '2026-06-18 10:45:00', 39, 78), (275.00, '2026-06-18 11:00:00', 39, 79),
(280.00, '2026-06-18 11:15:00', 39, 80), (285.00, '2026-06-18 11:30:00', 39, 81), (290.00, '2026-06-18 11:45:00', 39, 82), (295.00, '2026-06-18 12:00:00', 39, 83), (300.00, '2026-06-18 12:15:00', 39, 84),
(305.00, '2026-06-18 12:30:00', 39, 85), (310.00, '2026-06-18 12:45:00', 39, 86), (315.00, '2026-06-18 13:00:00', 39, 87), (320.00, '2026-06-18 13:15:00', 39, 88), (325.00, '2026-06-18 13:30:00', 39, 89),
(330.00, '2026-06-18 13:45:00', 39, 90), (335.00, '2026-06-18 14:00:00', 39, 91), (340.00, '2026-06-18 14:15:00', 39, 92), (345.00, '2026-06-18 14:30:00', 39, 93), (350.00, '2026-06-18 14:45:00', 39, 94),

-- ==========================================
-- SUBASTA 40 (Base: 170.00 | Inicio: 2026-06-15 16:30:00 | Cierre: 2026-06-20 16:30:00)
-- ==========================================
-- Ronda 1
(175.00, '2026-06-16 10:00:00', 40, 95), (180.00, '2026-06-16 10:15:00', 40, 96), (185.00, '2026-06-16 10:30:00', 40, 97), (190.00, '2026-06-16 10:45:00', 40, 98), (195.00, '2026-06-16 11:00:00', 40, 99),
(200.00, '2026-06-16 11:15:00', 40, 100), (205.00, '2026-06-16 11:30:00', 40, 101), (210.00, '2026-06-16 11:45:00', 40, 102), (215.00, '2026-06-16 12:00:00', 40, 103), (220.00, '2026-06-16 12:15:00', 40, 104),
(225.00, '2026-06-16 12:30:00', 40, 10), (230.00, '2026-06-16 12:45:00', 40, 11), (235.00, '2026-06-16 13:00:00', 40, 12), (240.00, '2026-06-16 13:15:00', 40, 13), (245.00, '2026-06-16 13:30:00', 40, 14),
(250.00, '2026-06-16 13:45:00', 40, 15), (255.00, '2026-06-16 14:00:00', 40, 16), (260.00, '2026-06-16 14:15:00', 40, 17), (265.00, '2026-06-16 14:30:00', 40, 18), (270.00, '2026-06-16 14:45:00', 40, 19),
-- Ronda 2
(275.00, '2026-06-17 10:00:00', 40, 95), (280.00, '2026-06-17 10:15:00', 40, 96), (285.00, '2026-06-17 10:30:00', 40, 97), (290.00, '2026-06-17 10:45:00', 40, 98), (295.00, '2026-06-17 11:00:00', 40, 99),
(300.00, '2026-06-17 11:15:00', 40, 100), (305.00, '2026-06-17 11:30:00', 40, 101), (310.00, '2026-06-17 11:45:00', 40, 102), (315.00, '2026-06-17 12:00:00', 40, 103), (320.00, '2026-06-17 12:15:00', 40, 104),
(325.00, '2026-06-17 12:30:00', 40, 10), (330.00, '2026-06-17 12:45:00', 40, 11), (335.00, '2026-06-17 13:00:00', 40, 12), (340.00, '2026-06-17 13:15:00', 40, 13), (345.00, '2026-06-17 13:30:00', 40, 14),
(350.00, '2026-06-17 13:45:00', 40, 15), (355.00, '2026-06-17 14:00:00', 40, 16), (360.00, '2026-06-17 14:15:00', 40, 17), (365.00, '2026-06-17 14:30:00', 40, 18), (370.00, '2026-06-17 14:45:00', 40, 19),
-- Ronda 3
(375.00, '2026-06-18 10:00:00', 40, 95), (380.00, '2026-06-18 10:15:00', 40, 96), (385.00, '2026-06-18 10:30:00', 40, 97), (390.00, '2026-06-18 10:45:00', 40, 98), (395.00, '2026-06-18 11:00:00', 40, 99),
(400.00, '2026-06-18 11:15:00', 40, 100), (405.00, '2026-06-18 11:30:00', 40, 101), (410.00, '2026-06-18 11:45:00', 40, 102), (415.00, '2026-06-18 12:00:00', 40, 103), (420.00, '2026-06-18 12:15:00', 40, 104),
(425.00, '2026-06-18 12:30:00', 40, 10), (430.00, '2026-06-18 12:45:00', 40, 11), (435.00, '2026-06-18 13:00:00', 40, 12), (440.00, '2026-06-18 13:15:00', 40, 13), (445.00, '2026-06-18 13:30:00', 40, 14),
(450.00, '2026-06-18 13:45:00', 40, 15), (455.00, '2026-06-18 14:00:00', 40, 16), (460.00, '2026-06-18 14:15:00', 40, 17), (465.00, '2026-06-18 14:30:00', 40, 18), (470.00, '2026-06-18 14:45:00', 40, 19),

-- ==========================================
-- SUBASTA 41 (Base: 250.00 | Inicio: 2026-06-16 09:00:00 | Cierre: 2026-06-23 09:00:00)
-- ==========================================
-- Ronda 1
(255.00, '2026-06-17 09:00:00', 41, 10), (260.00, '2026-06-17 09:15:00', 41, 11), (265.00, '2026-06-17 09:30:00', 41, 12), (270.00, '2026-06-17 09:45:00', 41, 13), (275.00, '2026-06-17 10:00:00', 41, 14),
(280.00, '2026-06-17 10:15:00', 41, 15), (285.00, '2026-06-17 10:30:00', 41, 16), (290.00, '2026-06-17 10:45:00', 41, 17), (295.00, '2026-06-17 11:00:00', 41, 18), (300.00, '2026-06-17 11:15:00', 41, 19),
(305.00, '2026-06-17 11:30:00', 41, 20), (310.00, '2026-06-17 11:45:00', 41, 21), (315.00, '2026-06-17 12:00:00', 41, 22), (320.00, '2026-06-17 12:15:00', 41, 23), (325.00, '2026-06-17 12:30:00', 41, 24),
(330.00, '2026-06-17 12:45:00', 41, 25), (335.00, '2026-06-17 13:00:00', 41, 26), (340.00, '2026-06-17 13:15:00', 41, 27), (345.00, '2026-06-17 13:30:00', 41, 28), (350.00, '2026-06-17 13:45:00', 41, 29),
-- Ronda 2
(355.00, '2026-06-18 09:00:00', 41, 10), (360.00, '2026-06-18 09:15:00', 41, 11), (365.00, '2026-06-18 09:30:00', 41, 12), (370.00, '2026-06-18 09:45:00', 41, 13), (375.00, '2026-06-18 10:00:00', 41, 14),
(380.00, '2026-06-18 10:15:00', 41, 15), (385.00, '2026-06-18 10:30:00', 41, 16), (390.00, '2026-06-18 10:45:00', 41, 17), (395.00, '2026-06-18 11:00:00', 41, 18), (400.00, '2026-06-18 11:15:00', 41, 19),
(405.00, '2026-06-18 11:30:00', 41, 20), (410.00, '2026-06-18 11:45:00', 41, 21), (415.00, '2026-06-18 12:00:00', 41, 22), (420.00, '2026-06-18 12:15:00', 41, 23), (425.00, '2026-06-18 12:30:00', 41, 24),
(430.00, '2026-06-18 12:45:00', 41, 25), (435.00, '2026-06-18 13:00:00', 41, 26), (440.00, '2026-06-18 13:15:00', 41, 27), (445.00, '2026-06-18 13:30:00', 41, 28), (450.00, '2026-06-18 13:45:00', 41, 29),
-- Ronda 3
(455.00, '2026-06-19 09:00:00', 41, 10), (460.00, '2026-06-19 09:15:00', 41, 11), (465.00, '2026-06-19 09:30:00', 41, 12), (470.00, '2026-06-19 09:45:00', 41, 13), (475.00, '2026-06-19 10:00:00', 41, 14),
(480.00, '2026-06-19 10:15:00', 41, 15), (485.00, '2026-06-19 10:30:00', 41, 16), (490.00, '2026-06-19 10:45:00', 41, 17), (495.00, '2026-06-19 11:00:00', 41, 18), (500.00, '2026-06-19 11:15:00', 41, 19),
(505.00, '2026-06-19 11:30:00', 41, 20), (510.00, '2026-06-19 11:45:00', 41, 21), (515.00, '2026-06-19 12:00:00', 41, 22), (520.00, '2026-06-19 12:15:00', 41, 23), (525.00, '2026-06-19 12:30:00', 41, 24),
(530.00, '2026-06-19 12:45:00', 41, 25), (535.00, '2026-06-19 13:00:00', 41, 26), (540.00, '2026-06-19 13:15:00', 41, 27), (545.00, '2026-06-19 13:30:00', 41, 28), (550.00, '2026-06-19 13:45:00', 41, 29),

-- ==========================================
-- SUBASTA 42 (Base: 85.00 | Inicio: 2026-06-16 11:00:00 | Cierre: 2026-06-21 11:00:00)
-- ==========================================
-- Ronda 1
(90.00, '2026-06-17 11:00:00', 42, 30), (95.00, '2026-06-17 11:15:00', 42, 31), (100.00, '2026-06-17 11:30:00', 42, 32), (105.00, '2026-06-17 11:45:00', 42, 33), (110.00, '2026-06-17 12:00:00', 42, 34),
(115.00, '2026-06-17 12:15:00', 42, 35), (120.00, '2026-06-17 12:30:00', 42, 36), (125.00, '2026-06-17 12:45:00', 42, 37), (130.00, '2026-06-17 13:00:00', 42, 38), (135.00, '2026-06-17 13:15:00', 42, 39),
(140.00, '2026-06-17 13:30:00', 42, 40), (145.00, '2026-06-17 13:45:00', 42, 41), (150.00, '2026-06-17 14:00:00', 42, 42), (155.00, '2026-06-17 14:15:00', 42, 43), (160.00, '2026-06-17 14:30:00', 42, 44),
(165.00, '2026-06-17 14:45:00', 42, 45), (170.00, '2026-06-17 15:00:00', 42, 46), (175.00, '2026-06-17 15:15:00', 42, 47), (180.00, '2026-06-17 15:30:00', 42, 48), (185.00, '2026-06-17 15:45:00', 42, 49),
-- Ronda 2
(190.00, '2026-06-18 11:00:00', 42, 30), (195.00, '2026-06-18 11:15:00', 42, 31), (200.00, '2026-06-18 11:30:00', 42, 32), (205.00, '2026-06-18 11:45:00', 42, 33), (210.00, '2026-06-18 12:00:00', 42, 34),
(215.00, '2026-06-18 12:15:00', 42, 35), (220.00, '2026-06-18 12:30:00', 42, 36), (225.00, '2026-06-18 12:45:00', 42, 37), (230.00, '2026-06-18 13:00:00', 42, 38), (235.00, '2026-06-18 13:15:00', 42, 39),
(240.00, '2026-06-18 13:30:00', 42, 40), (245.00, '2026-06-18 13:45:00', 42, 41), (250.00, '2026-06-18 14:00:00', 42, 42), (255.00, '2026-06-18 14:15:00', 42, 43), (260.00, '2026-06-18 14:30:00', 42, 44),
(265.00, '2026-06-18 14:45:00', 42, 45), (270.00, '2026-06-18 15:00:00', 42, 46), (275.00, '2026-06-18 15:15:00', 42, 47), (280.00, '2026-06-18 15:30:00', 42, 48), (285.00, '2026-06-18 15:45:00', 42, 49),
-- Ronda 3
(290.00, '2026-06-19 11:00:00', 42, 30), (295.00, '2026-06-19 11:15:00', 42, 31), (300.00, '2026-06-19 11:30:00', 42, 32), (305.00, '2026-06-19 11:45:00', 42, 33), (310.00, '2026-06-19 12:00:00', 42, 34),
(315.00, '2026-06-19 12:15:00', 42, 35), (320.00, '2026-06-19 12:30:00', 42, 36), (325.00, '2026-06-19 12:45:00', 42, 37), (330.00, '2026-06-19 13:00:00', 42, 38), (335.00, '2026-06-19 13:15:00', 42, 39),
(340.00, '2026-06-19 13:30:00', 42, 40), (345.00, '2026-06-19 13:45:00', 42, 41), (350.00, '2026-06-19 14:00:00', 42, 42), (355.00, '2026-06-19 14:15:00', 42, 43), (360.00, '2026-06-19 14:30:00', 42, 44),
(365.00, '2026-06-19 14:45:00', 42, 45), (370.00, '2026-06-19 15:00:00', 42, 46), (375.00, '2026-06-19 15:15:00', 42, 47), (380.00, '2026-06-19 15:30:00', 42, 48), (385.00, '2026-06-19 15:45:00', 42, 49),

-- ==========================================
-- SUBASTA 43 (Base: 270.00 | Inicio: 2026-06-16 15:00:00 | Cierre: 2026-06-23 15:00:00)
-- ==========================================
-- Ronda 1
(275.00, '2026-06-17 15:00:00', 43, 50), (280.00, '2026-06-17 15:15:00', 43, 51), (285.00, '2026-06-17 15:30:00', 43, 52), (290.00, '2026-06-17 15:45:00', 43, 53), (295.00, '2026-06-17 16:00:00', 43, 54),
(300.00, '2026-06-17 16:15:00', 43, 55), (305.00, '2026-06-17 16:30:00', 43, 56), (310.00, '2026-06-17 16:45:00', 43, 57), (315.00, '2026-06-17 17:00:00', 43, 58), (320.00, '2026-06-17 17:15:00', 43, 59),
(325.00, '2026-06-17 17:30:00', 43, 60), (330.00, '2026-06-17 17:45:00', 43, 61), (335.00, '2026-06-17 18:00:00', 43, 62), (340.00, '2026-06-17 18:15:00', 43, 63), (345.00, '2026-06-17 18:30:00', 43, 64),
(350.00, '2026-06-17 18:45:00', 43, 65), (355.00, '2026-06-17 19:00:00', 43, 66), (360.00, '2026-06-17 19:15:00', 43, 67), (365.00, '2026-06-17 19:30:00', 43, 68), (370.00, '2026-06-17 19:45:00', 43, 69),
-- Ronda 2
(375.00, '2026-06-18 15:00:00', 43, 50), (380.00, '2026-06-18 15:15:00', 43, 51), (385.00, '2026-06-18 15:30:00', 43, 52), (390.00, '2026-06-18 15:45:00', 43, 53), (395.00, '2026-06-18 16:00:00', 43, 54),
(400.00, '2026-06-18 16:15:00', 43, 55), (405.00, '2026-06-18 16:30:00', 43, 56), (410.00, '2026-06-18 16:45:00', 43, 57), (415.00, '2026-06-18 17:00:00', 43, 58), (420.00, '2026-06-18 17:15:00', 43, 59),
(425.00, '2026-06-18 17:30:00', 43, 60), (430.00, '2026-06-18 17:45:00', 43, 61), (435.00, '2026-06-18 18:00:00', 43, 62), (440.00, '2026-06-18 18:15:00', 43, 63), (445.00, '2026-06-18 18:30:00', 43, 64),
(450.00, '2026-06-18 18:45:00', 43, 65), (455.00, '2026-06-18 19:00:00', 43, 66), (460.00, '2026-06-18 19:15:00', 43, 67), (465.00, '2026-06-18 19:30:00', 43, 68), (470.00, '2026-06-18 19:45:00', 43, 69),
-- Ronda 3
(475.00, '2026-06-19 15:00:00', 43, 50), (480.00, '2026-06-19 15:15:00', 43, 51), (485.00, '2026-06-19 15:30:00', 43, 52), (490.00, '2026-06-19 15:45:00', 43, 53), (495.00, '2026-06-19 16:00:00', 43, 54),
(500.00, '2026-06-19 16:15:00', 43, 55), (505.00, '2026-06-19 16:30:00', 43, 56), (510.00, '2026-06-19 16:45:00', 43, 57), (515.00, '2026-06-19 17:00:00', 43, 58), (520.00, '2026-06-19 17:15:00', 43, 59),
(525.00, '2026-06-19 17:30:00', 43, 60), (530.00, '2026-06-19 17:45:00', 43, 61), (535.00, '2026-06-19 18:00:00', 43, 62), (540.00, '2026-06-19 18:15:00', 43, 63), (545.00, '2026-06-19 18:30:00', 43, 64),
(550.00, '2026-06-19 18:45:00', 43, 65), (555.00, '2026-06-19 19:00:00', 43, 66), (560.00, '2026-06-19 19:15:00', 43, 67), (565.00, '2026-06-19 19:30:00', 43, 68), (570.00, '2026-06-19 19:45:00', 43, 69),

-- ==========================================
-- SUBASTA 44 (Base: 120.00 | Inicio: 2026-06-17 10:30:00 | Cierre: 2026-06-22 10:30:00)
-- ==========================================
-- Ronda 1
(125.00, '2026-06-18 10:30:00', 44, 70), (130.00, '2026-06-18 10:45:00', 44, 71), (135.00, '2026-06-18 11:00:00', 44, 72), (140.00, '2026-06-18 11:15:00', 44, 73), (145.00, '2026-06-18 11:30:00', 44, 74),
(150.00, '2026-06-18 11:45:00', 44, 75), (155.00, '2026-06-18 12:00:00', 44, 76), (160.00, '2026-06-18 12:15:00', 44, 77), (165.00, '2026-06-18 12:30:00', 44, 78), (170.00, '2026-06-18 12:45:00', 44, 79),
(175.00, '2026-06-18 13:00:00', 44, 80), (180.00, '2026-06-18 13:15:00', 44, 81), (185.00, '2026-06-18 13:30:00', 44, 82), (190.00, '2026-06-18 13:45:00', 44, 83), (195.00, '2026-06-18 14:00:00', 44, 84),
(200.00, '2026-06-18 14:15:00', 44, 85), (205.00, '2026-06-18 14:30:00', 44, 86), (210.00, '2026-06-18 14:45:00', 44, 87), (215.00, '2026-06-18 15:00:00', 44, 88), (220.00, '2026-06-18 15:15:00', 44, 89),
-- Ronda 2
(225.00, '2026-06-19 10:30:00', 44, 70), (230.00, '2026-06-19 10:45:00', 44, 71), (235.00, '2026-06-19 11:00:00', 44, 72), (240.00, '2026-06-19 11:15:00', 44, 73), (245.00, '2026-06-19 11:30:00', 44, 74),
(250.00, '2026-06-19 11:45:00', 44, 75), (255.00, '2026-06-19 12:00:00', 44, 76), (260.00, '2026-06-19 12:15:00', 44, 77), (265.00, '2026-06-19 12:30:00', 44, 78), (270.00, '2026-06-19 12:45:00', 44, 79),
(275.00, '2026-06-19 13:00:00', 44, 80), (280.00, '2026-06-19 13:15:00', 44, 81), (285.00, '2026-06-19 13:30:00', 44, 82), (290.00, '2026-06-19 13:45:00', 44, 83), (295.00, '2026-06-19 14:00:00', 44, 84),
(300.00, '2026-06-19 14:15:00', 44, 85), (305.00, '2026-06-19 14:30:00', 44, 86), (310.00, '2026-06-19 14:45:00', 44, 87), (315.00, '2026-06-19 15:00:00', 44, 88), (320.00, '2026-06-19 15:15:00', 44, 89),
-- Ronda 3
(325.00, '2026-06-20 10:30:00', 44, 70), (330.00, '2026-06-20 10:45:00', 44, 71), (335.00, '2026-06-20 11:00:00', 44, 72), (340.00, '2026-06-20 11:15:00', 44, 73), (345.00, '2026-06-20 11:30:00', 44, 74),
(350.00, '2026-06-20 11:45:00', 44, 75), (355.00, '2026-06-20 12:00:00', 44, 76), (360.00, '2026-06-20 12:15:00', 44, 77), (365.00, '2026-06-20 12:30:00', 44, 78), (370.00, '2026-06-20 12:45:00', 44, 79),
(375.00, '2026-06-20 13:00:00', 44, 80), (380.00, '2026-06-20 13:15:00', 44, 81), (385.00, '2026-06-20 13:30:00', 44, 82), (390.00, '2026-06-20 13:45:00', 44, 83), (395.00, '2026-06-20 14:00:00', 44, 84),
(400.00, '2026-06-20 14:15:00', 44, 85), (405.00, '2026-06-20 14:30:00', 44, 86), (410.00, '2026-06-20 14:45:00', 44, 87), (415.00, '2026-06-20 15:00:00', 44, 88), (420.00, '2026-06-20 15:15:00', 44, 89),

-- ==========================================
-- SUBASTA 45 (Base: 140.00 | Inicio: 2026-06-17 14:00:00 | Cierre: 2026-06-24 14:00:00)
-- ==========================================
-- Ronda 1
(145.00, '2026-06-18 14:00:00', 45, 90), (150.00, '2026-06-18 14:15:00', 45, 91), (155.00, '2026-06-18 14:30:00', 45, 92), (160.00, '2026-06-18 14:45:00', 45, 93), (165.00, '2026-06-18 15:00:00', 45, 94),
(170.00, '2026-06-18 15:15:00', 45, 95), (175.00, '2026-06-18 15:30:00', 45, 96), (180.00, '2026-06-18 15:45:00', 45, 97), (185.00, '2026-06-18 16:00:00', 45, 98), (190.00, '2026-06-18 16:15:00', 45, 99),
(195.00, '2026-06-18 16:30:00', 45, 100), (200.00, '2026-06-18 16:45:00', 45, 101), (205.00, '2026-06-18 17:00:00', 45, 102), (210.00, '2026-06-18 17:15:00', 45, 103), (215.00, '2026-06-18 17:30:00', 45, 104),
(220.00, '2026-06-18 17:45:00', 45, 10), (225.00, '2026-06-18 18:00:00', 45, 11), (230.00, '2026-06-18 18:15:00', 45, 12), (235.00, '2026-06-18 18:30:00', 45, 13), (240.00, '2026-06-18 18:45:00', 45, 14),
-- Ronda 2
(245.00, '2026-06-19 14:00:00', 45, 90), (250.00, '2026-06-19 14:15:00', 45, 91), (255.00, '2026-06-19 14:30:00', 45, 92), (260.00, '2026-06-19 14:45:00', 45, 93), (265.00, '2026-06-19 15:00:00', 45, 94),
(270.00, '2026-06-19 15:15:00', 45, 95), (275.00, '2026-06-19 15:30:00', 45, 96), (280.00, '2026-06-19 15:45:00', 45, 97), (285.00, '2026-06-19 16:00:00', 45, 98), (290.00, '2026-06-19 16:15:00', 45, 99),
(295.00, '2026-06-19 16:30:00', 45, 100), (300.00, '2026-06-19 16:45:00', 45, 101), (305.00, '2026-06-19 17:00:00', 45, 102), (310.00, '2026-06-19 17:15:00', 45, 103), (315.00, '2026-06-19 17:30:00', 45, 104),
(320.00, '2026-06-19 17:45:00', 45, 10), (325.00, '2026-06-19 18:00:00', 45, 11), (330.00, '2026-06-19 18:15:00', 45, 12), (335.00, '2026-06-19 18:30:00', 45, 13), (340.00, '2026-06-19 18:45:00', 45, 14),
-- Ronda 3
(345.00, '2026-06-20 14:00:00', 45, 90), (350.00, '2026-06-20 14:15:00', 45, 91), (355.00, '2026-06-20 14:30:00', 45, 92), (360.00, '2026-06-20 14:45:00', 45, 93), (365.00, '2026-06-20 15:00:00', 45, 94),
(370.00, '2026-06-20 15:15:00', 45, 95), (375.00, '2026-06-20 15:30:00', 45, 96), (380.00, '2026-06-20 15:45:00', 45, 97), (385.00, '2026-06-20 16:00:00', 45, 98), (390.00, '2026-06-20 16:15:00', 45, 99),
(395.00, '2026-06-20 16:30:00', 45, 100), (400.00, '2026-06-20 16:45:00', 45, 101), (405.00, '2026-06-20 17:00:00', 45, 102), (410.00, '2026-06-20 17:15:00', 45, 103), (415.00, '2026-06-20 17:30:00', 45, 104),
(420.00, '2026-06-20 17:45:00', 45, 10), (425.00, '2026-06-20 18:00:00', 45, 11), (430.00, '2026-06-20 18:15:00', 45, 12), (435.00, '2026-06-20 18:30:00', 45, 13), (440.00, '2026-06-20 18:45:00', 45, 14),

-- ==========================================
-- SUBASTA 46 (Base: 200.00 | Inicio: 2026-06-17 18:15:00 | Cierre: 2026-06-22 18:15:00)
-- ==========================================
-- Ronda 1
(205.00, '2026-06-18 18:15:00', 46, 15), (210.00, '2026-06-18 18:30:00', 46, 16), (215.00, '2026-06-18 18:45:00', 46, 17), (220.00, '2026-06-18 19:00:00', 46, 18), (225.00, '2026-06-18 19:15:00', 46, 19),
(230.00, '2026-06-18 19:30:00', 46, 20), (235.00, '2026-06-18 19:45:00', 46, 21), (240.00, '2026-06-18 20:00:00', 46, 22), (245.00, '2026-06-18 20:15:00', 46, 23), (250.00, '2026-06-18 20:30:00', 46, 24),
(255.00, '2026-06-18 20:45:00', 46, 25), (260.00, '2026-06-18 21:00:00', 46, 26), (265.00, '2026-06-18 21:15:00', 46, 27), (270.00, '2026-06-18 21:30:00', 46, 28), (275.00, '2026-06-18 21:45:00', 46, 29),
(280.00, '2026-06-18 22:00:00', 46, 30), (285.00, '2026-06-18 22:15:00', 46, 31), (290.00, '2026-06-18 22:30:00', 46, 32), (295.00, '2026-06-18 22:45:00', 46, 33), (300.00, '2026-06-18 23:00:00', 46, 34),
-- Ronda 2
(305.00, '2026-06-19 18:15:00', 46, 15), (310.00, '2026-06-19 18:30:00', 46, 16), (315.00, '2026-06-19 18:45:00', 46, 17), (320.00, '2026-06-19 19:00:00', 46, 18), (325.00, '2026-06-19 19:15:00', 46, 19),
(330.00, '2026-06-19 19:30:00', 46, 20), (335.00, '2026-06-19 19:45:00', 46, 21), (340.00, '2026-06-19 20:00:00', 46, 22), (345.00, '2026-06-19 20:15:00', 46, 23), (350.00, '2026-06-19 20:30:00', 46, 24),
(355.00, '2026-06-19 20:45:00', 46, 25), (360.00, '2026-06-19 21:00:00', 46, 26), (365.00, '2026-06-19 21:15:00', 46, 27), (370.00, '2026-06-19 21:30:00', 46, 28), (375.00, '2026-06-19 21:45:00', 46, 29),
(380.00, '2026-06-19 22:00:00', 46, 30), (385.00, '2026-06-19 22:15:00', 46, 31), (390.00, '2026-06-19 22:30:00', 46, 32), (395.00, '2026-06-19 22:45:00', 46, 33), (400.00, '2026-06-19 23:00:00', 46, 34),
-- Ronda 3
(405.00, '2026-06-20 18:15:00', 46, 15), (410.00, '2026-06-20 18:30:00', 46, 16), (415.00, '2026-06-20 18:45:00', 46, 17), (420.00, '2026-06-20 19:00:00', 46, 18), (425.00, '2026-06-20 19:15:00', 46, 19),
(430.00, '2026-06-20 19:30:00', 46, 20), (435.00, '2026-06-20 19:45:00', 46, 21), (440.00, '2026-06-20 20:00:00', 46, 22), (445.00, '2026-06-20 20:15:00', 46, 23), (450.00, '2026-06-20 20:30:00', 46, 24),
(455.00, '2026-06-20 20:45:00', 46, 25), (460.00, '2026-06-20 21:00:00', 46, 26), (465.00, '2026-06-20 21:15:00', 46, 27), (470.00, '2026-06-20 21:30:00', 46, 28), (475.00, '2026-06-20 21:45:00', 46, 29),
(480.00, '2026-06-20 22:00:00', 46, 30), (485.00, '2026-06-20 22:15:00', 46, 31), (490.00, '2026-06-20 22:30:00', 46, 32), (495.00, '2026-06-20 22:45:00', 46, 33), (500.00, '2026-06-20 23:00:00', 46, 34),

-- ==========================================
-- SUBASTA 47 (Base: 230.00 | Inicio: 2026-06-18 09:00:00 | Cierre: 2026-06-25 09:00:00)
-- ==========================================
-- Ronda 1
(235.00, '2026-06-19 09:00:00', 47, 35), (240.00, '2026-06-19 09:15:00', 47, 36), (245.00, '2026-06-19 09:30:00', 47, 37), (250.00, '2026-06-19 09:45:00', 47, 38), (255.00, '2026-06-19 10:00:00', 47, 39),
(260.00, '2026-06-19 10:15:00', 47, 40), (265.00, '2026-06-19 10:30:00', 47, 41), (270.00, '2026-06-19 10:45:00', 47, 42), (275.00, '2026-06-19 11:00:00', 47, 43), (280.00, '2026-06-19 11:15:00', 47, 44),
(285.00, '2026-06-19 11:30:00', 47, 45), (290.00, '2026-06-19 11:45:00', 47, 46), (295.00, '2026-06-19 12:00:00', 47, 47), (300.00, '2026-06-19 12:15:00', 47, 48), (305.00, '2026-06-19 12:30:00', 47, 49),
(310.00, '2026-06-19 12:45:00', 47, 50), (315.00, '2026-06-19 13:00:00', 47, 51), (320.00, '2026-06-19 13:15:00', 47, 52), (325.00, '2026-06-19 13:30:00', 47, 53), (330.00, '2026-06-19 13:45:00', 47, 54),
-- Ronda 2
(335.00, '2026-06-20 09:00:00', 47, 35), (340.00, '2026-06-20 09:15:00', 47, 36), (345.00, '2026-06-20 09:30:00', 47, 37), (350.00, '2026-06-20 09:45:00', 47, 38), (355.00, '2026-06-20 10:00:00', 47, 39),
(360.00, '2026-06-20 10:15:00', 47, 40), (365.00, '2026-06-20 10:30:00', 47, 41), (370.00, '2026-06-20 10:45:00', 47, 42), (375.00, '2026-06-20 11:00:00', 47, 43), (380.00, '2026-06-20 11:15:00', 47, 44),
(385.00, '2026-06-20 11:30:00', 47, 45), (390.00, '2026-06-20 11:45:00', 47, 46), (395.00, '2026-06-20 12:00:00', 47, 47), (400.00, '2026-06-20 12:15:00', 47, 48), (405.00, '2026-06-20 12:30:00', 47, 49),
(410.00, '2026-06-20 12:45:00', 47, 50), (415.00, '2026-06-20 13:00:00', 47, 51), (420.00, '2026-06-20 13:15:00', 47, 52), (425.00, '2026-06-20 13:30:00', 47, 53), (430.00, '2026-06-20 13:45:00', 47, 54),
-- Ronda 3
(435.00, '2026-06-21 09:00:00', 47, 35), (440.00, '2026-06-21 09:15:00', 47, 36), (445.00, '2026-06-21 09:30:00', 47, 37), (450.00, '2026-06-21 09:45:00', 47, 38), (455.00, '2026-06-21 10:00:00', 47, 39),
(460.00, '2026-06-21 10:15:00', 47, 40), (465.00, '2026-06-21 10:30:00', 47, 41), (470.00, '2026-06-21 10:45:00', 47, 42), (475.00, '2026-06-21 11:00:00', 47, 43), (480.00, '2026-06-21 11:15:00', 47, 44),
(485.00, '2026-06-21 11:30:00', 47, 45), (490.00, '2026-06-21 11:45:00', 47, 46), (495.00, '2026-06-21 12:00:00', 47, 47), (500.00, '2026-06-21 12:15:00', 47, 48), (505.00, '2026-06-21 12:30:00', 47, 49),
(510.00, '2026-06-21 12:45:00', 47, 50), (515.00, '2026-06-21 13:00:00', 47, 51), (520.00, '2026-06-21 13:15:00', 47, 52), (525.00, '2026-06-21 13:30:00', 47, 53), (530.00, '2026-06-21 13:45:00', 47, 54),

-- ==========================================
-- SUBASTA 48 (Base: 75.00 | Inicio: 2026-06-18 13:00:00 | Cierre: 2026-06-23 13:00:00)
-- ==========================================
-- Ronda 1
(80.00, '2026-06-19 13:00:00', 48, 55), (85.00, '2026-06-19 13:15:00', 48, 56), (90.00, '2026-06-19 13:30:00', 48, 57), (95.00, '2026-06-19 13:45:00', 48, 58), (100.00, '2026-06-19 14:00:00', 48, 59),
(105.00, '2026-06-19 14:15:00', 48, 60), (110.00, '2026-06-19 14:30:00', 48, 61), (115.00, '2026-06-19 14:45:00', 48, 62), (120.00, '2026-06-19 15:00:00', 48, 63), (125.00, '2026-06-19 15:15:00', 48, 64),
(130.00, '2026-06-19 15:30:00', 48, 65), (135.00, '2026-06-19 15:45:00', 48, 66), (140.00, '2026-06-19 16:00:00', 48, 67), (145.00, '2026-06-19 16:15:00', 48, 68), (150.00, '2026-06-19 16:30:00', 48, 69),
(155.00, '2026-06-19 16:45:00', 48, 70), (160.00, '2026-06-19 17:00:00', 48, 71), (165.00, '2026-06-19 17:15:00', 48, 72), (170.00, '2026-06-19 17:30:00', 48, 73), (175.00, '2026-06-19 17:45:00', 48, 74),
-- Ronda 2
(180.00, '2026-06-20 13:00:00', 48, 55), (185.00, '2026-06-20 13:15:00', 48, 56), (190.00, '2026-06-20 13:30:00', 48, 57), (195.00, '2026-06-20 13:45:00', 48, 58), (200.00, '2026-06-20 14:00:00', 48, 59),
(205.00, '2026-06-20 14:15:00', 48, 60), (210.00, '2026-06-20 14:30:00', 48, 61), (215.00, '2026-06-20 14:45:00', 48, 62), (220.00, '2026-06-20 15:00:00', 48, 63), (225.00, '2026-06-20 15:15:00', 48, 64),
(230.00, '2026-06-20 15:30:00', 48, 65), (235.00, '2026-06-20 15:45:00', 48, 66), (240.00, '2026-06-20 16:00:00', 48, 67), (245.00, '2026-06-20 16:15:00', 48, 68), (250.00, '2026-06-20 16:30:00', 48, 69),
(255.00, '2026-06-20 16:45:00', 48, 70), (260.00, '2026-06-20 17:00:00', 48, 71), (265.00, '2026-06-20 17:15:00', 48, 72), (270.00, '2026-06-20 17:30:00', 48, 73), (275.00, '2026-06-20 17:45:00', 48, 74),
-- Ronda 3
(280.00, '2026-06-21 13:00:00', 48, 55), (285.00, '2026-06-21 13:15:00', 48, 56), (290.00, '2026-06-21 13:30:00', 48, 57), (295.00, '2026-06-21 13:45:00', 48, 58), (300.00, '2026-06-21 14:00:00', 48, 59),
(305.00, '2026-06-21 14:15:00', 48, 60), (310.00, '2026-06-21 14:30:00', 48, 61), (315.00, '2026-06-21 14:45:00', 48, 62), (320.00, '2026-06-21 15:00:00', 48, 63), (325.00, '2026-06-21 15:15:00', 48, 64),
(330.00, '2026-06-21 15:30:00', 48, 65), (335.00, '2026-06-21 15:45:00', 48, 66), (340.00, '2026-06-21 16:00:00', 48, 67), (345.00, '2026-06-21 16:15:00', 48, 68), (350.00, '2026-06-21 16:30:00', 48, 69),
(355.00, '2026-06-21 16:45:00', 48, 70), (360.00, '2026-06-21 17:00:00', 48, 71), (365.00, '2026-06-21 17:15:00', 48, 72), (370.00, '2026-06-21 17:30:00', 48, 73), (375.00, '2026-06-21 17:45:00', 48, 74),

-- ==========================================
-- SUBASTA 49 (Base: 100.00 | Inicio: 2026-06-18 17:00:00 | Cierre: 2026-06-25 17:00:00)
-- ==========================================
-- Ronda 1
(105.00, '2026-06-19 17:00:00', 49, 75), (110.00, '2026-06-19 17:15:00', 49, 76), (115.00, '2026-06-19 17:30:00', 49, 77), (120.00, '2026-06-19 17:45:00', 49, 78), (125.00, '2026-06-19 18:00:00', 49, 79),
(130.00, '2026-06-19 18:15:00', 49, 80), (135.00, '2026-06-19 18:30:00', 49, 81), (140.00, '2026-06-19 18:45:00', 49, 82), (145.00, '2026-06-19 19:00:00', 49, 83), (150.00, '2026-06-19 19:15:00', 49, 84),
(155.00, '2026-06-19 19:30:00', 49, 85), (160.00, '2026-06-19 19:45:00', 49, 86), (165.00, '2026-06-19 20:00:00', 49, 87), (170.00, '2026-06-19 20:15:00', 49, 88), (175.00, '2026-06-19 20:30:00', 49, 89),
(180.00, '2026-06-19 20:45:00', 49, 90), (185.00, '2026-06-19 21:00:00', 49, 91), (190.00, '2026-06-19 21:15:00', 49, 92), (195.00, '2026-06-19 21:30:00', 49, 93), (200.00, '2026-06-19 21:45:00', 49, 94),
-- Ronda 2
(205.00, '2026-06-20 17:00:00', 49, 75), (210.00, '2026-06-20 17:15:00', 49, 76), (215.00, '2026-06-20 17:30:00', 49, 77), (220.00, '2026-06-20 17:45:00', 49, 78), (225.00, '2026-06-20 18:00:00', 49, 79),
(230.00, '2026-06-20 18:15:00', 49, 80), (235.00, '2026-06-20 18:30:00', 49, 81), (240.00, '2026-06-20 18:45:00', 49, 82), (245.00, '2026-06-20 19:00:00', 49, 83), (250.00, '2026-06-20 19:15:00', 49, 84),
(255.00, '2026-06-20 19:30:00', 49, 85), (260.00, '2026-06-20 19:45:00', 49, 86), (265.00, '2026-06-20 20:00:00', 49, 87), (270.00, '2026-06-20 20:15:00', 49, 88), (275.00, '2026-06-20 20:30:00', 49, 89),
(280.00, '2026-06-20 20:45:00', 49, 90), (285.00, '2026-06-20 21:00:00', 49, 91), (290.00, '2026-06-20 21:15:00', 49, 92), (295.00, '2026-06-20 21:30:00', 49, 93), (300.00, '2026-06-20 21:45:00', 49, 94),
-- Ronda 3
(305.00, '2026-06-21 17:00:00', 49, 75), (310.00, '2026-06-21 17:15:00', 49, 76), (315.00, '2026-06-21 17:30:00', 49, 77), (320.00, '2026-06-21 17:45:00', 49, 78), (325.00, '2026-06-21 18:00:00', 49, 79),
(330.00, '2026-06-21 18:15:00', 49, 80), (335.00, '2026-06-21 18:30:00', 49, 81), (340.00, '2026-06-21 18:45:00', 49, 82), (345.00, '2026-06-21 19:00:00', 49, 83), (350.00, '2026-06-21 19:15:00', 49, 84),
(355.00, '2026-06-21 19:30:00', 49, 85), (360.00, '2026-06-21 19:45:00', 49, 86), (365.00, '2026-06-21 20:00:00', 49, 87), (370.00, '2026-06-21 20:15:00', 49, 88), (375.00, '2026-06-21 20:30:00', 49, 89),
(380.00, '2026-06-21 20:45:00', 49, 90), (385.00, '2026-06-21 21:00:00', 49, 91), (390.00, '2026-06-21 21:15:00', 49, 92), (395.00, '2026-06-21 21:30:00', 49, 93), (400.00, '2026-06-21 21:45:00', 49, 94),

-- ==========================================
-- SUBASTA 50 (Base: 100.00 | Inicio: 2026-06-19 08:45:00 | Cierre: 2026-06-24 08:45:00)
-- ==========================================
-- Ronda 1
(105.00, '2026-06-20 08:45:00', 50, 95), (110.00, '2026-06-20 09:00:00', 50, 96), (115.00, '2026-06-20 09:15:00', 50, 97), (120.00, '2026-06-20 09:30:00', 50, 98), (125.00, '2026-06-20 09:45:00', 50, 99),
(130.00, '2026-06-20 10:00:00', 50, 100), (135.00, '2026-06-20 10:15:00', 50, 101), (140.00, '2026-06-20 10:30:00', 50, 102), (145.00, '2026-06-20 10:45:00', 50, 103), (150.00, '2026-06-20 11:00:00', 50, 104),
(155.00, '2026-06-20 11:15:00', 50, 10), (160.00, '2026-06-20 11:30:00', 50, 11), (165.00, '2026-06-20 11:45:00', 50, 12), (170.00, '2026-06-20 12:00:00', 50, 13), (175.00, '2026-06-20 12:15:00', 50, 14),
(180.00, '2026-06-20 12:30:00', 50, 15), (185.00, '2026-06-20 12:45:00', 50, 16), (190.00, '2026-06-20 13:00:00', 50, 17), (195.00, '2026-06-20 13:15:00', 50, 18), (200.00, '2026-06-20 13:30:00', 50, 19),
-- Ronda 2
(205.00, '2026-06-21 08:45:00', 50, 95), (210.00, '2026-06-21 09:00:00', 50, 96), (215.00, '2026-06-21 09:15:00', 50, 97), (220.00, '2026-06-21 09:30:00', 50, 98), (225.00, '2026-06-21 09:45:00', 50, 99),
(230.00, '2026-06-21 10:00:00', 50, 100), (235.00, '2026-06-21 10:15:00', 50, 101), (240.00, '2026-06-21 10:30:00', 50, 102), (245.00, '2026-06-21 10:45:00', 50, 103), (250.00, '2026-06-21 11:00:00', 50, 104),
(255.00, '2026-06-21 11:15:00', 50, 10), (260.00, '2026-06-21 11:30:00', 50, 11), (265.00, '2026-06-21 11:45:00', 50, 12), (270.00, '2026-06-21 12:00:00', 50, 13), (275.00, '2026-06-21 12:15:00', 50, 14),
(280.00, '2026-06-21 12:30:00', 50, 15), (285.00, '2026-06-21 12:45:00', 50, 16), (290.00, '2026-06-21 13:00:00', 50, 17), (295.00, '2026-06-21 13:15:00', 50, 18), (300.00, '2026-06-21 13:30:00', 50, 19),
-- Ronda 3
(305.00, '2026-06-22 08:45:00', 50, 95), (310.00, '2026-06-22 09:00:00', 50, 96), (315.00, '2026-06-22 09:15:00', 50, 97), (320.00, '2026-06-22 09:30:00', 50, 98), (325.00, '2026-06-22 09:45:00', 50, 99),
(330.00, '2026-06-22 10:00:00', 50, 100), (335.00, '2026-06-22 10:15:00', 50, 101), (340.00, '2026-06-22 10:30:00', 50, 102), (345.00, '2026-06-22 10:45:00', 50, 103), (350.00, '2026-06-22 11:00:00', 50, 104),
(355.00, '2026-06-22 11:15:00', 50, 10), (360.00, '2026-06-22 11:30:00', 50, 11), (365.00, '2026-06-22 11:45:00', 50, 12), (370.00, '2026-06-22 12:00:00', 50, 13), (375.00, '2026-06-22 12:15:00', 50, 14),
(380.00, '2026-06-22 12:30:00', 50, 15), (385.00, '2026-06-22 12:45:00', 50, 16), (390.00, '2026-06-22 13:00:00', 50, 17), (395.00, '2026-06-22 13:15:00', 50, 18), (400.00, '2026-06-22 13:30:00', 50, 19),

-- ==========================================
-- SUBASTA 51 (Base: 150.00 | Inicio: 2026-06-19 12:00:00 | Cierre: 2026-06-26 12:00:00)
-- ==========================================
-- Ronda 1
(155.00, '2026-06-20 12:00:00', 51, 10), (160.00, '2026-06-20 12:15:00', 51, 11), (165.00, '2026-06-20 12:30:00', 51, 12), (170.00, '2026-06-20 12:45:00', 51, 13), (175.00, '2026-06-20 13:00:00', 51, 14),
(180.00, '2026-06-20 13:15:00', 51, 15), (185.00, '2026-06-20 13:30:00', 51, 16), (190.00, '2026-06-20 13:45:00', 51, 17), (195.00, '2026-06-20 14:00:00', 51, 18), (200.00, '2026-06-20 14:15:00', 51, 19),
(205.00, '2026-06-20 14:30:00', 51, 20), (210.00, '2026-06-20 14:45:00', 51, 21), (215.00, '2026-06-20 15:00:00', 51, 22), (220.00, '2026-06-20 15:15:00', 51, 23), (225.00, '2026-06-20 15:30:00', 51, 24),
(230.00, '2026-06-20 15:45:00', 51, 25), (235.00, '2026-06-20 16:00:00', 51, 26), (240.00, '2026-06-20 16:15:00', 51, 27), (245.00, '2026-06-20 16:30:00', 51, 28), (250.00, '2026-06-20 16:45:00', 51, 29),
-- Ronda 2
(255.00, '2026-06-21 12:00:00', 51, 10), (260.00, '2026-06-21 12:15:00', 51, 11), (265.00, '2026-06-21 12:30:00', 51, 12), (270.00, '2026-06-21 12:45:00', 51, 13), (275.00, '2026-06-21 13:00:00', 51, 14),
(280.00, '2026-06-21 13:15:00', 51, 15), (285.00, '2026-06-21 13:30:00', 51, 16), (290.00, '2026-06-21 13:45:00', 51, 17), (295.00, '2026-06-21 14:00:00', 51, 18), (300.00, '2026-06-21 14:15:00', 51, 19),
(305.00, '2026-06-21 14:30:00', 51, 20), (310.00, '2026-06-21 14:45:00', 51, 21), (315.00, '2026-06-21 15:00:00', 51, 22), (320.00, '2026-06-21 15:15:00', 51, 23), (325.00, '2026-06-21 15:30:00', 51, 24),
(330.00, '2026-06-21 15:45:00', 51, 25), (335.00, '2026-06-21 16:00:00', 51, 26), (340.00, '2026-06-21 16:15:00', 51, 27), (345.00, '2026-06-21 16:30:00', 51, 28), (350.00, '2026-06-21 16:45:00', 51, 29),
-- Ronda 3
(355.00, '2026-06-22 12:00:00', 51, 10), (360.00, '2026-06-22 12:15:00', 51, 11), (365.00, '2026-06-22 12:30:00', 51, 12), (370.00, '2026-06-22 12:45:00', 51, 13), (375.00, '2026-06-22 13:00:00', 51, 14),
(380.00, '2026-06-22 13:15:00', 51, 15), (385.00, '2026-06-22 13:30:00', 51, 16), (390.00, '2026-06-22 13:45:00', 51, 17), (395.00, '2026-06-22 14:00:00', 51, 18), (400.00, '2026-06-22 14:15:00', 51, 19),
(405.00, '2026-06-22 14:30:00', 51, 20), (410.00, '2026-06-22 14:45:00', 51, 21), (415.00, '2026-06-22 15:00:00', 51, 22), (420.00, '2026-06-22 15:15:00', 51, 23), (425.00, '2026-06-22 15:30:00', 51, 24),
(430.00, '2026-06-22 15:45:00', 51, 25), (435.00, '2026-06-22 16:00:00', 51, 26), (440.00, '2026-06-22 16:15:00', 51, 27), (445.00, '2026-06-22 16:30:00', 51, 28), (450.00, '2026-06-22 16:45:00', 51, 29),

-- ==========================================
-- SUBASTA 52 (Base: 20.00 | Inicio: 2026-06-19 15:30:00 | Cierre: 2026-06-24 15:30:00)
-- ==========================================
-- Ronda 1
(25.00, '2026-06-20 15:30:00', 52, 30), (30.00, '2026-06-20 15:45:00', 52, 31), (35.00, '2026-06-20 16:00:00', 52, 32), (40.00, '2026-06-20 16:15:00', 52, 33), (45.00, '2026-06-20 16:30:00', 52, 34),
(50.00, '2026-06-20 16:45:00', 52, 35), (55.00, '2026-06-20 17:00:00', 52, 36), (60.00, '2026-06-20 17:15:00', 52, 37), (65.00, '2026-06-20 17:30:00', 52, 38), (70.00, '2026-06-20 17:45:00', 52, 39),
(75.00, '2026-06-20 18:00:00', 52, 40), (80.00, '2026-06-20 18:15:00', 52, 41), (85.00, '2026-06-20 18:30:00', 52, 42), (90.00, '2026-06-20 18:45:00', 52, 43), (95.00, '2026-06-20 19:00:00', 52, 44),
(100.00, '2026-06-20 19:15:00', 52, 45), (105.00, '2026-06-20 19:30:00', 52, 46), (110.00, '2026-06-20 19:45:00', 52, 47), (115.00, '2026-06-20 20:00:00', 52, 48), (120.00, '2026-06-20 20:15:00', 52, 49),
-- Ronda 2
(125.00, '2026-06-21 15:30:00', 52, 30), (130.00, '2026-06-21 15:45:00', 52, 31), (135.00, '2026-06-21 16:00:00', 52, 32), (140.00, '2026-06-21 16:15:00', 52, 33), (145.00, '2026-06-21 16:30:00', 52, 34),
(150.00, '2026-06-21 16:45:00', 52, 35), (155.00, '2026-06-21 17:00:00', 52, 36), (160.00, '2026-06-21 17:15:00', 52, 37), (165.00, '2026-06-21 17:30:00', 52, 38), (170.00, '2026-06-21 17:45:00', 52, 39),
(175.00, '2026-06-21 18:00:00', 52, 40), (180.00, '2026-06-21 18:15:00', 52, 41), (185.00, '2026-06-21 18:30:00', 52, 42), (190.00, '2026-06-21 18:45:00', 52, 43), (195.00, '2026-06-21 19:00:00', 52, 44),
(200.00, '2026-06-21 19:15:00', 52, 45), (205.00, '2026-06-21 19:30:00', 52, 46), (210.00, '2026-06-21 19:45:00', 52, 47), (215.00, '2026-06-21 20:00:00', 52, 48), (220.00, '2026-06-21 20:15:00', 52, 49),
-- Ronda 3
(225.00, '2026-06-22 15:30:00', 52, 30), (230.00, '2026-06-22 15:45:00', 52, 31), (235.00, '2026-06-22 16:00:00', 52, 32), (240.00, '2026-06-22 16:15:00', 52, 33), (245.00, '2026-06-22 16:30:00', 52, 34),
(250.00, '2026-06-22 16:45:00', 52, 35), (255.00, '2026-06-22 17:00:00', 52, 36), (260.00, '2026-06-22 17:15:00', 52, 37), (265.00, '2026-06-22 17:30:00', 52, 38), (270.00, '2026-06-22 17:45:00', 52, 39),
(275.00, '2026-06-22 18:00:00', 52, 40), (280.00, '2026-06-22 18:15:00', 52, 41), (285.00, '2026-06-22 18:30:00', 52, 42), (290.00, '2026-06-22 18:45:00', 52, 43), (295.00, '2026-06-22 19:00:00', 52, 44),
(300.00, '2026-06-22 19:15:00', 52, 45), (305.00, '2026-06-22 19:30:00', 52, 46), (310.00, '2026-06-22 19:45:00', 52, 47), (315.00, '2026-06-22 20:00:00', 52, 48), (320.00, '2026-06-22 20:15:00', 52, 49),

-- ==========================================
-- SUBASTA 53 (Base: 120.00 | Inicio: 2026-06-20 10:00:00 | Cierre: 2026-06-27 10:00:00)
-- ==========================================
-- Ronda 1
(125.00, '2026-06-21 10:00:00', 53, 50), (130.00, '2026-06-21 10:15:00', 53, 51), (135.00, '2026-06-21 10:30:00', 53, 52), (140.00, '2026-06-21 10:45:00', 53, 53), (145.00, '2026-06-21 11:00:00', 53, 54),
(150.00, '2026-06-21 11:15:00', 53, 55), (155.00, '2026-06-21 11:30:00', 53, 56), (160.00, '2026-06-21 11:45:00', 53, 57), (165.00, '2026-06-21 12:00:00', 53, 58), (170.00, '2026-06-21 12:15:00', 53, 59),
(175.00, '2026-06-21 12:30:00', 53, 60), (180.00, '2026-06-21 12:45:00', 53, 61), (185.00, '2026-06-21 13:00:00', 53, 62), (190.00, '2026-06-21 13:15:00', 53, 63), (195.00, '2026-06-21 13:30:00', 53, 64),
(200.00, '2026-06-21 13:45:00', 53, 65), (205.00, '2026-06-21 14:00:00', 53, 66), (210.00, '2026-06-21 14:15:00', 53, 67), (215.00, '2026-06-21 14:30:00', 53, 68), (220.00, '2026-06-21 14:45:00', 53, 69),
-- Ronda 2
(225.00, '2026-06-22 10:00:00', 53, 50), (230.00, '2026-06-22 10:15:00', 53, 51), (235.00, '2026-06-22 10:30:00', 53, 52), (240.00, '2026-06-22 10:45:00', 53, 53), (245.00, '2026-06-22 11:00:00', 53, 54),
(250.00, '2026-06-22 11:15:00', 53, 55), (255.00, '2026-06-22 11:30:00', 53, 56), (260.00, '2026-06-22 11:45:00', 53, 57), (265.00, '2026-06-22 12:00:00', 53, 58), (270.00, '2026-06-22 12:15:00', 53, 59),
(275.00, '2026-06-22 12:30:00', 53, 60), (280.00, '2026-06-22 12:45:00', 53, 61), (285.00, '2026-06-22 13:00:00', 53, 62), (290.00, '2026-06-22 13:15:00', 53, 63), (295.00, '2026-06-22 13:30:00', 53, 64),
(300.00, '2026-06-22 13:45:00', 53, 65), (305.00, '2026-06-22 14:00:00', 53, 66), (310.00, '2026-06-22 14:15:00', 53, 67), (315.00, '2026-06-22 14:30:00', 53, 68), (320.00, '2026-06-22 14:45:00', 53, 69),
-- Ronda 3
(325.00, '2026-06-23 10:00:00', 53, 50), (330.00, '2026-06-23 10:15:00', 53, 51), (335.00, '2026-06-23 10:30:00', 53, 52), (340.00, '2026-06-23 10:45:00', 53, 53), (345.00, '2026-06-23 11:00:00', 53, 54),
(350.00, '2026-06-23 11:15:00', 53, 55), (355.00, '2026-06-23 11:30:00', 53, 56), (360.00, '2026-06-23 11:45:00', 53, 57), (365.00, '2026-06-23 12:00:00', 53, 58), (370.00, '2026-06-23 12:15:00', 53, 59),
(375.00, '2026-06-23 12:30:00', 53, 60), (380.00, '2026-06-23 12:45:00', 53, 61), (385.00, '2026-06-23 13:00:00', 53, 62), (390.00, '2026-06-23 13:15:00', 53, 63), (395.00, '2026-06-23 13:30:00', 53, 64),
(400.00, '2026-06-23 13:45:00', 53, 65), (405.00, '2026-06-23 14:00:00', 53, 66), (410.00, '2026-06-23 14:15:00', 53, 67), (415.00, '2026-06-23 14:30:00', 53, 68), (420.00, '2026-06-23 14:45:00', 53, 69),

-- ==========================================
-- SUBASTA 54 (Base: 200.00 | Inicio: 2026-06-20 14:00:00 | Cierre: 2026-06-25 14:00:00)
-- ==========================================
-- Ronda 1
(205.00, '2026-06-21 14:00:00', 54, 70), (210.00, '2026-06-21 14:15:00', 54, 71), (215.00, '2026-06-21 14:30:00', 54, 72), (220.00, '2026-06-21 14:45:00', 54, 73), (225.00, '2026-06-21 15:00:00', 54, 74),
(230.00, '2026-06-21 15:15:00', 54, 75), (235.00, '2026-06-21 15:30:00', 54, 76), (240.00, '2026-06-21 15:45:00', 54, 77), (245.00, '2026-06-21 16:00:00', 54, 78), (250.00, '2026-06-21 16:15:00', 54, 79),
(255.00, '2026-06-21 16:30:00', 54, 80), (260.00, '2026-06-21 16:45:00', 54, 81), (265.00, '2026-06-21 17:00:00', 54, 82), (270.00, '2026-06-21 17:15:00', 54, 83), (275.00, '2026-06-21 17:30:00', 54, 84),
(280.00, '2026-06-21 17:45:00', 54, 85), (285.00, '2026-06-21 18:00:00', 54, 86), (290.00, '2026-06-21 18:15:00', 54, 87), (295.00, '2026-06-21 18:30:00', 54, 88), (300.00, '2026-06-21 18:45:00', 54, 89),
-- Ronda 2
(305.00, '2026-06-22 14:00:00', 54, 70), (310.00, '2026-06-22 14:15:00', 54, 71), (315.00, '2026-06-22 14:30:00', 54, 72), (320.00, '2026-06-22 14:45:00', 54, 73), (325.00, '2026-06-22 15:00:00', 54, 74),
(330.00, '2026-06-22 15:15:00', 54, 75), (335.00, '2026-06-22 15:30:00', 54, 76), (340.00, '2026-06-22 15:45:00', 54, 77), (345.00, '2026-06-22 16:00:00', 54, 78), (350.00, '2026-06-22 16:15:00', 54, 79),
(355.00, '2026-06-22 16:30:00', 54, 80), (360.00, '2026-06-22 16:45:00', 54, 81), (365.00, '2026-06-22 17:00:00', 54, 82), (370.00, '2026-06-22 17:15:00', 54, 83), (375.00, '2026-06-22 17:30:00', 54, 84),
(380.00, '2026-06-22 17:45:00', 54, 85), (385.00, '2026-06-22 18:00:00', 54, 86), (390.00, '2026-06-22 18:15:00', 54, 87), (395.00, '2026-06-22 18:30:00', 54, 88), (400.00, '2026-06-22 18:45:00', 54, 89),
-- Ronda 3
(405.00, '2026-06-23 14:00:00', 54, 70), (410.00, '2026-06-23 14:15:00', 54, 71), (415.00, '2026-06-23 14:30:00', 54, 72), (420.00, '2026-06-23 14:45:00', 54, 73), (425.00, '2026-06-23 15:00:00', 54, 74),
(430.00, '2026-06-23 15:15:00', 54, 75), (435.00, '2026-06-23 15:30:00', 54, 76), (440.00, '2026-06-23 15:45:00', 54, 77), (445.00, '2026-06-23 16:00:00', 54, 78), (450.00, '2026-06-23 16:15:00', 54, 79),
(455.00, '2026-06-23 16:30:00', 54, 80), (460.00, '2026-06-23 16:45:00', 54, 81), (465.00, '2026-06-23 17:00:00', 54, 82), (470.00, '2026-06-23 17:15:00', 54, 83), (475.00, '2026-06-23 17:30:00', 54, 84),
(480.00, '2026-06-23 17:45:00', 54, 85), (485.00, '2026-06-23 18:00:00', 54, 86), (490.00, '2026-06-23 18:15:00', 54, 87), (495.00, '2026-06-23 18:30:00', 54, 88), (500.00, '2026-06-23 18:45:00', 54, 89),

-- ==========================================
-- SUBASTA 55 (Base: 200.00 | Inicio: 2026-06-20 19:00:00 | Cierre: 2026-06-27 19:00:00)
-- ==========================================
-- Ronda 1
(205.00, '2026-06-21 19:00:00', 55, 85), (210.00, '2026-06-21 19:15:00', 55, 86), (215.00, '2026-06-21 19:30:00', 55, 87), (220.00, '2026-06-21 19:45:00', 55, 88), (225.00, '2026-06-21 20:00:00', 55, 89),
(230.00, '2026-06-21 20:15:00', 55, 90), (235.00, '2026-06-21 20:30:00', 55, 91), (240.00, '2026-06-21 20:45:00', 55, 92), (245.00, '2026-06-21 21:00:00', 55, 93), (250.00, '2026-06-21 21:15:00', 55, 94),
(255.00, '2026-06-21 21:30:00', 55, 95), (260.00, '2026-06-21 21:45:00', 55, 96), (265.00, '2026-06-21 22:00:00', 55, 97), (270.00, '2026-06-21 22:15:00', 55, 98), (275.00, '2026-06-21 22:30:00', 55, 99),
(280.00, '2026-06-21 22:45:00', 55, 100), (285.00, '2026-06-21 23:00:00', 55, 101), (290.00, '2026-06-21 23:15:00', 55, 102), (295.00, '2026-06-21 23:30:00', 55, 103), (300.00, '2026-06-21 23:45:00', 55, 104),
-- Ronda 2
(305.00, '2026-06-22 19:00:00', 55, 85), (310.00, '2026-06-22 19:15:00', 55, 86), (315.00, '2026-06-22 19:30:00', 55, 87), (320.00, '2026-06-22 19:45:00', 55, 88), (325.00, '2026-06-22 20:00:00', 55, 89),
(330.00, '2026-06-22 20:15:00', 55, 90), (335.00, '2026-06-22 20:30:00', 55, 91), (340.00, '2026-06-22 20:45:00', 55, 92), (345.00, '2026-06-22 21:00:00', 55, 93), (350.00, '2026-06-22 21:15:00', 55, 94),
(355.00, '2026-06-22 21:30:00', 55, 95), (360.00, '2026-06-22 21:45:00', 55, 96), (365.00, '2026-06-22 22:00:00', 55, 97), (370.00, '2026-06-22 22:15:00', 55, 98), (375.00, '2026-06-22 22:30:00', 55, 99),
(380.00, '2026-06-22 22:45:00', 55, 100), (385.00, '2026-06-22 23:00:00', 55, 101), (390.00, '2026-06-22 23:15:00', 55, 102), (395.00, '2026-06-22 23:30:00', 55, 103), (400.00, '2026-06-22 23:45:00', 55, 104),
-- Ronda 3
(405.00, '2026-06-23 19:00:00', 55, 85), (410.00, '2026-06-23 19:15:00', 55, 86), (415.00, '2026-06-23 19:30:00', 55, 87), (420.00, '2026-06-23 19:45:00', 55, 88), (425.00, '2026-06-23 20:00:00', 55, 89),
(430.00, '2026-06-23 20:15:00', 55, 90), (435.00, '2026-06-23 20:30:00', 55, 91), (440.00, '2026-06-23 20:45:00', 55, 92), (445.00, '2026-06-23 21:00:00', 55, 93), (450.00, '2026-06-23 21:15:00', 55, 94),
(455.00, '2026-06-23 21:30:00', 55, 95), (460.00, '2026-06-23 21:45:00', 55, 96), (465.00, '2026-06-23 22:00:00', 55, 97), (470.00, '2026-06-23 22:15:00', 55, 98), (475.00, '2026-06-23 22:30:00', 55, 99),
(480.00, '2026-06-23 22:45:00', 55, 100), (485.00, '2026-06-23 23:00:00', 55, 101), (490.00, '2026-06-23 23:15:00', 55, 102), (495.00, '2026-06-23 23:30:00', 55, 103), (500.00, '2026-06-23 23:45:00', 55, 104),

-- ==========================================
-- SUBASTA 56 (Base: 240.00 | Inicio: 2026-06-21 09:15:00 | Cierre: 2026-06-26 09:15:00)
-- ==========================================
-- Ronda 1
(245.00, '2026-06-22 09:15:00', 56, 10), (250.00, '2026-06-22 09:30:00', 56, 11), (255.00, '2026-06-22 09:45:00', 56, 12), (260.00, '2026-06-22 10:00:00', 56, 13), (265.00, '2026-06-22 10:15:00', 56, 14),
(270.00, '2026-06-22 10:30:00', 56, 15), (275.00, '2026-06-22 10:45:00', 56, 16), (280.00, '2026-06-22 11:00:00', 56, 17), (285.00, '2026-06-22 11:15:00', 56, 18), (290.00, '2026-06-22 11:30:00', 56, 19),
(295.00, '2026-06-22 11:45:00', 56, 20), (300.00, '2026-06-22 12:00:00', 56, 21), (305.00, '2026-06-22 12:15:00', 56, 22), (310.00, '2026-06-22 12:30:00', 56, 23), (315.00, '2026-06-22 12:45:00', 56, 24),
(320.00, '2026-06-22 13:00:00', 56, 25), (325.00, '2026-06-22 13:15:00', 56, 26), (330.00, '2026-06-22 13:30:00', 56, 27), (335.00, '2026-06-22 13:45:00', 56, 28), (340.00, '2026-06-22 14:00:00', 56, 29),
-- Ronda 2
(345.00, '2026-06-23 09:15:00', 56, 10), (350.00, '2026-06-23 09:30:00', 56, 11), (355.00, '2026-06-23 09:45:00', 56, 12), (360.00, '2026-06-23 10:00:00', 56, 13), (365.00, '2026-06-23 10:15:00', 56, 14),
(370.00, '2026-06-23 10:30:00', 56, 15), (375.00, '2026-06-23 10:45:00', 56, 16), (380.00, '2026-06-23 11:00:00', 56, 17), (385.00, '2026-06-23 11:15:00', 56, 18), (390.00, '2026-06-23 11:30:00', 56, 19),
(395.00, '2026-06-23 11:45:00', 56, 20), (400.00, '2026-06-23 12:00:00', 56, 21), (405.00, '2026-06-23 12:15:00', 56, 22), (410.00, '2026-06-23 12:30:00', 56, 23), (415.00, '2026-06-23 12:45:00', 56, 24),
(420.00, '2026-06-23 13:00:00', 56, 25), (425.00, '2026-06-23 13:15:00', 56, 26), (430.00, '2026-06-23 13:30:00', 56, 27), (435.00, '2026-06-23 13:45:00', 56, 28), (440.00, '2026-06-23 14:00:00', 56, 29),
-- Ronda 3
(445.00, '2026-06-24 09:15:00', 56, 10), (450.00, '2026-06-24 09:30:00', 56, 11), (455.00, '2026-06-24 09:45:00', 56, 12), (460.00, '2026-06-24 10:00:00', 56, 13), (465.00, '2026-06-24 10:15:00', 56, 14),
(470.00, '2026-06-24 10:30:00', 56, 15), (475.00, '2026-06-24 10:45:00', 56, 16), (480.00, '2026-06-24 11:00:00', 56, 17), (485.00, '2026-06-24 11:15:00', 56, 18), (490.00, '2026-06-24 11:30:00', 56, 19),
(495.00, '2026-06-24 11:45:00', 56, 20), (500.00, '2026-06-24 12:00:00', 56, 21), (505.00, '2026-06-24 12:15:00', 56, 22), (510.00, '2026-06-24 12:30:00', 56, 23), (515.00, '2026-06-24 12:45:00', 56, 24),
(520.00, '2026-06-24 13:00:00', 56, 25), (525.00, '2026-06-24 13:15:00', 56, 26), (530.00, '2026-06-24 13:30:00', 56, 27), (535.00, '2026-06-24 13:45:00', 56, 28), (540.00, '2026-06-24 14:00:00', 56, 29),

-- ==========================================
-- SUBASTA 57 (Base: 80.00 | Inicio: 2026-06-21 13:00:00 | Cierre: 2026-06-28 13:00:00)
-- ==========================================
-- Ronda 1
(85.00, '2026-06-22 13:00:00', 57, 30), (90.00, '2026-06-22 13:15:00', 57, 31), (95.00, '2026-06-22 13:30:00', 57, 32), (100.00, '2026-06-22 13:45:00', 57, 33), (105.00, '2026-06-22 14:00:00', 57, 34),
(110.00, '2026-06-22 14:15:00', 57, 35), (115.00, '2026-06-22 14:30:00', 57, 36), (120.00, '2026-06-22 14:45:00', 57, 37), (125.00, '2026-06-22 15:00:00', 57, 38), (130.00, '2026-06-22 15:15:00', 57, 39),
(135.00, '2026-06-22 15:30:00', 57, 40), (140.00, '2026-06-22 15:45:00', 57, 41), (145.00, '2026-06-22 16:00:00', 57, 42), (150.00, '2026-06-22 16:15:00', 57, 43), (155.00, '2026-06-22 16:30:00', 57, 44),
(160.00, '2026-06-22 16:45:00', 57, 45), (165.00, '2026-06-22 17:00:00', 57, 46), (170.00, '2026-06-22 17:15:00', 57, 47), (175.00, '2026-06-22 17:30:00', 57, 48), (180.00, '2026-06-22 17:45:00', 57, 49),
-- Ronda 2
(185.00, '2026-06-23 13:00:00', 57, 30), (190.00, '2026-06-23 13:15:00', 57, 31), (195.00, '2026-06-23 13:30:00', 57, 32), (200.00, '2026-06-23 13:45:00', 57, 33), (205.00, '2026-06-23 14:00:00', 57, 34),
(210.00, '2026-06-23 14:15:00', 57, 35), (215.00, '2026-06-23 14:30:00', 57, 36), (220.00, '2026-06-23 14:45:00', 57, 37), (225.00, '2026-06-23 15:00:00', 57, 38), (230.00, '2026-06-23 15:15:00', 57, 39),
(235.00, '2026-06-23 15:30:00', 57, 40), (240.00, '2026-06-23 15:45:00', 57, 41), (245.00, '2026-06-23 16:00:00', 57, 42), (250.00, '2026-06-23 16:15:00', 57, 43), (255.00, '2026-06-23 16:30:00', 57, 44),
(260.00, '2026-06-23 16:45:00', 57, 45), (265.00, '2026-06-23 17:00:00', 57, 46), (270.00, '2026-06-23 17:15:00', 57, 47), (275.00, '2026-06-23 17:30:00', 57, 48), (280.00, '2026-06-23 17:45:00', 57, 49),
-- Ronda 3
(285.00, '2026-06-24 13:00:00', 57, 30), (290.00, '2026-06-24 13:15:00', 57, 31), (295.00, '2026-06-24 13:30:00', 57, 32), (300.00, '2026-06-24 13:45:00', 57, 33), (305.00, '2026-06-24 14:00:00', 57, 34),
(310.00, '2026-06-24 14:15:00', 57, 35), (315.00, '2026-06-24 14:30:00', 57, 36), (320.00, '2026-06-24 14:45:00', 57, 37), (325.00, '2026-06-24 15:00:00', 57, 38), (330.00, '2026-06-24 15:15:00', 57, 39),
(335.00, '2026-06-24 15:30:00', 57, 40), (340.00, '2026-06-24 15:45:00', 57, 41), (345.00, '2026-06-24 16:00:00', 57, 42), (350.00, '2026-06-24 16:15:00', 57, 43), (355.00, '2026-06-24 16:30:00', 57, 44),
(360.00, '2026-06-24 16:45:00', 57, 45), (365.00, '2026-06-24 17:00:00', 57, 46), (370.00, '2026-06-24 17:15:00', 57, 47), (375.00, '2026-06-24 17:30:00', 57, 48), (380.00, '2026-06-24 17:45:00', 57, 49),

-- ==========================================
-- SUBASTA 58 (Base: 90.00 | Inicio: 2026-06-21 16:45:00 | Cierre: 2026-06-26 16:45:00)
-- ==========================================
-- Ronda 1
(95.00, '2026-06-22 16:45:00', 58, 50), (100.00, '2026-06-22 17:00:00', 58, 51), (105.00, '2026-06-22 17:15:00', 58, 52), (110.00, '2026-06-22 17:30:00', 58, 53), (115.00, '2026-06-22 17:45:00', 58, 54),
(120.00, '2026-06-22 18:00:00', 58, 55), (125.00, '2026-06-22 18:15:00', 58, 56), (130.00, '2026-06-22 18:30:00', 58, 57), (135.00, '2026-06-22 18:45:00', 58, 58), (140.00, '2026-06-22 19:00:00', 58, 59),
(145.00, '2026-06-22 19:15:00', 58, 60), (150.00, '2026-06-22 19:30:00', 58, 61), (155.00, '2026-06-22 19:45:00', 58, 62), (160.00, '2026-06-22 20:00:00', 58, 63), (165.00, '2026-06-22 20:15:00', 58, 64),
(170.00, '2026-06-22 20:30:00', 58, 65), (175.00, '2026-06-22 20:45:00', 58, 66), (180.00, '2026-06-22 21:00:00', 58, 67), (185.00, '2026-06-22 21:15:00', 58, 68), (190.00, '2026-06-22 21:30:00', 58, 69),
-- Ronda 2
(195.00, '2026-06-23 16:45:00', 58, 50), (200.00, '2026-06-23 17:00:00', 58, 51), (205.00, '2026-06-23 17:15:00', 58, 52), (210.00, '2026-06-23 17:30:00', 58, 53), (215.00, '2026-06-23 17:45:00', 58, 54),
(220.00, '2026-06-23 18:00:00', 58, 55), (225.00, '2026-06-23 18:15:00', 58, 56), (230.00, '2026-06-23 18:30:00', 58, 57), (235.00, '2026-06-23 18:45:00', 58, 58), (240.00, '2026-06-23 19:00:00', 58, 59),
(245.00, '2026-06-23 19:15:00', 58, 60), (250.00, '2026-06-23 19:30:00', 58, 61), (255.00, '2026-06-23 19:45:00', 58, 62), (260.00, '2026-06-23 20:00:00', 58, 63), (265.00, '2026-06-23 20:15:00', 58, 64),
(270.00, '2026-06-23 20:30:00', 58, 65), (275.00, '2026-06-23 20:45:00', 58, 66), (280.00, '2026-06-23 21:00:00', 58, 67), (285.00, '2026-06-23 21:15:00', 58, 68), (290.00, '2026-06-23 21:30:00', 58, 69),
-- Ronda 3
(295.00, '2026-06-24 16:45:00', 58, 50), (300.00, '2026-06-24 17:00:00', 58, 51), (305.00, '2026-06-24 17:15:00', 58, 52), (310.00, '2026-06-24 17:30:00', 58, 53), (315.00, '2026-06-24 17:45:00', 58, 54),
(320.00, '2026-06-24 18:00:00', 58, 55), (325.00, '2026-06-24 18:15:00', 58, 56), (330.00, '2026-06-24 18:30:00', 58, 57), (335.00, '2026-06-24 18:45:00', 58, 58), (340.00, '2026-06-24 19:00:00', 58, 59),
(345.00, '2026-06-24 19:15:00', 58, 60), (350.00, '2026-06-24 19:30:00', 58, 61), (355.00, '2026-06-24 19:45:00', 58, 62), (360.00, '2026-06-24 20:00:00', 58, 63), (365.00, '2026-06-24 20:15:00', 58, 64),
(370.00, '2026-06-24 20:30:00', 58, 65), (375.00, '2026-06-24 20:45:00', 58, 66), (380.00, '2026-06-24 21:00:00', 58, 67), (385.00, '2026-06-24 21:15:00', 58, 68), (390.00, '2026-06-24 21:30:00', 58, 69),

-- ==========================================
-- SUBASTA 59 (Base: 200.00 | Inicio: 2026-06-22 08:00:00 | Cierre: 2026-06-29 08:00:00)
-- ==========================================
-- Ronda 1
(205.00, '2026-06-23 08:00:00', 59, 70), (210.00, '2026-06-23 08:15:00', 59, 71), (215.00, '2026-06-23 08:30:00', 59, 72), (220.00, '2026-06-23 08:45:00', 59, 73), (225.00, '2026-06-23 09:00:00', 59, 74),
(230.00, '2026-06-23 09:15:00', 59, 75), (235.00, '2026-06-23 09:30:00', 59, 76), (240.00, '2026-06-23 09:45:00', 59, 77), (245.00, '2026-06-23 10:00:00', 59, 78), (250.00, '2026-06-23 10:15:00', 59, 79),
(255.00, '2026-06-23 10:30:00', 59, 80), (260.00, '2026-06-23 10:45:00', 59, 81), (265.00, '2026-06-23 11:00:00', 59, 82), (270.00, '2026-06-23 11:15:00', 59, 83), (275.00, '2026-06-23 11:30:00', 59, 84),
(280.00, '2026-06-23 11:45:00', 59, 85), (285.00, '2026-06-23 12:00:00', 59, 86), (290.00, '2026-06-23 12:15:00', 59, 87), (295.00, '2026-06-23 12:30:00', 59, 88), (300.00, '2026-06-23 12:45:00', 59, 89),
-- Ronda 2
(305.00, '2026-06-24 08:00:00', 59, 70), (310.00, '2026-06-24 08:15:00', 59, 71), (315.00, '2026-06-24 08:30:00', 59, 72), (320.00, '2026-06-24 08:45:00', 59, 73), (325.00, '2026-06-24 09:00:00', 59, 74),
(330.00, '2026-06-24 09:15:00', 59, 75), (335.00, '2026-06-24 09:30:00', 59, 76), (340.00, '2026-06-24 09:45:00', 59, 77), (345.00, '2026-06-24 10:00:00', 59, 78), (350.00, '2026-06-24 10:15:00', 59, 79),
(355.00, '2026-06-24 10:30:00', 59, 80), (360.00, '2026-06-24 10:45:00', 59, 81), (365.00, '2026-06-24 11:00:00', 59, 82), (370.00, '2026-06-24 11:15:00', 59, 83), (375.00, '2026-06-24 11:30:00', 59, 84),
(380.00, '2026-06-24 11:45:00', 59, 85), (385.00, '2026-06-24 12:00:00', 59, 86), (390.00, '2026-06-24 12:15:00', 59, 87), (395.00, '2026-06-24 12:30:00', 59, 88), (400.00, '2026-06-24 12:45:00', 59, 89),
-- Ronda 3
(405.00, '2026-06-25 08:00:00', 59, 70), (410.00, '2026-06-25 08:15:00', 59, 71), (415.00, '2026-06-25 08:30:00', 59, 72), (420.00, '2026-06-25 08:45:00', 59, 73), (425.00, '2026-06-25 09:00:00', 59, 74),
(430.00, '2026-06-25 09:15:00', 59, 75), (435.00, '2026-06-25 09:30:00', 59, 76), (440.00, '2026-06-25 09:45:00', 59, 77), (445.00, '2026-06-25 10:00:00', 59, 78), (450.00, '2026-06-25 10:15:00', 59, 79),
(455.00, '2026-06-25 10:30:00', 59, 80), (460.00, '2026-06-25 10:45:00', 59, 81), (465.00, '2026-06-25 11:00:00', 59, 82), (470.00, '2026-06-25 11:15:00', 59, 83), (475.00, '2026-06-25 11:30:00', 59, 84),
(480.00, '2026-06-25 11:45:00', 59, 85), (485.00, '2026-06-25 12:00:00', 59, 86), (490.00, '2026-06-25 12:15:00', 59, 87), (495.00, '2026-06-25 12:30:00', 59, 88), (500.00, '2026-06-25 12:45:00', 59, 89),

-- ==========================================
-- SUBASTA 60 (Base: 160.00 | Inicio: 2026-06-22 11:30:00 | Cierre: 2026-06-27 11:30:00)
-- ==========================================
-- Ronda 1
(165.00, '2026-06-23 11:30:00', 60, 85), (170.00, '2026-06-23 11:45:00', 60, 86), (175.00, '2026-06-23 12:00:00', 60, 87), (180.00, '2026-06-23 12:15:00', 60, 88), (185.00, '2026-06-23 12:30:00', 60, 89),
(190.00, '2026-06-23 12:45:00', 60, 90), (195.00, '2026-06-23 13:00:00', 60, 91), (200.00, '2026-06-23 13:15:00', 60, 92), (205.00, '2026-06-23 13:30:00', 60, 93), (210.00, '2026-06-23 13:45:00', 60, 94),
(215.00, '2026-06-23 14:00:00', 60, 95), (220.00, '2026-06-23 14:15:00', 60, 96), (225.00, '2026-06-23 14:30:00', 60, 97), (230.00, '2026-06-23 14:45:00', 60, 98), (235.00, '2026-06-23 15:00:00', 60, 99),
(240.00, '2026-06-23 15:15:00', 60, 100), (245.00, '2026-06-23 15:30:00', 60, 101), (250.00, '2026-06-23 15:45:00', 60, 102), (255.00, '2026-06-23 16:00:00', 60, 103), (260.00, '2026-06-23 16:15:00', 60, 104),
-- Ronda 2
(265.00, '2026-06-24 11:30:00', 60, 85), (270.00, '2026-06-24 11:45:00', 60, 86), (275.00, '2026-06-24 12:00:00', 60, 87), (280.00, '2026-06-24 12:15:00', 60, 88), (285.00, '2026-06-24 12:30:00', 60, 89),
(290.00, '2026-06-24 12:45:00', 60, 90), (295.00, '2026-06-24 13:00:00', 60, 91), (300.00, '2026-06-24 13:15:00', 60, 92), (305.00, '2026-06-24 13:30:00', 60, 93), (310.00, '2026-06-24 13:45:00', 60, 94),
(315.00, '2026-06-24 14:00:00', 60, 95), (320.00, '2026-06-24 14:15:00', 60, 96), (325.00, '2026-06-24 14:30:00', 60, 97), (330.00, '2026-06-24 14:45:00', 60, 98), (335.00, '2026-06-24 15:00:00', 60, 99),
(340.00, '2026-06-24 15:15:00', 60, 100), (345.00, '2026-06-24 15:30:00', 60, 101), (350.00, '2026-06-24 15:45:00', 60, 102), (355.00, '2026-06-24 16:00:00', 60, 103), (360.00, '2026-06-24 16:15:00', 60, 104),
-- Ronda 3
(365.00, '2026-06-25 11:30:00', 60, 85), (370.00, '2026-06-25 11:45:00', 60, 86), (375.00, '2026-06-25 12:00:00', 60, 87), (380.00, '2026-06-25 12:15:00', 60, 88), (385.00, '2026-06-25 12:30:00', 60, 89),
(390.00, '2026-06-25 12:45:00', 60, 90), (395.00, '2026-06-25 13:00:00', 60, 91), (400.00, '2026-06-25 13:15:00', 60, 92), (405.00, '2026-06-25 13:30:00', 60, 93), (410.00, '2026-06-25 13:45:00', 60, 94),
(415.00, '2026-06-25 14:00:00', 60, 95), (420.00, '2026-06-25 14:15:00', 60, 96), (425.00, '2026-06-25 14:30:00', 60, 97), (430.00, '2026-06-25 14:45:00', 60, 98), (435.00, '2026-06-25 15:00:00', 60, 99),
(440.00, '2026-06-25 15:15:00', 60, 100), (445.00, '2026-06-25 15:30:00', 60, 101), (450.00, '2026-06-25 15:45:00', 60, 102), (455.00, '2026-06-25 16:00:00', 60, 103), (460.00, '2026-06-25 16:15:00', 60, 104),

-- ==========================================
-- SUBASTA 61 (Base: 250.00 | Inicio: 2026-06-22 15:00:00 | Cierre: 2026-06-29 15:00:00)
-- Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(255.00, '2026-06-23 15:00:00', 61, 10), (260.00, '2026-06-23 15:15:00', 61, 11), (265.00, '2026-06-23 15:30:00', 61, 12), (270.00, '2026-06-23 15:45:00', 61, 13), (275.00, '2026-06-23 16:00:00', 61, 14),
(280.00, '2026-06-23 16:15:00', 61, 15), (285.00, '2026-06-23 16:30:00', 61, 16), (290.00, '2026-06-23 16:45:00', 61, 17), (295.00, '2026-06-23 17:00:00', 61, 18), (300.00, '2026-06-23 17:15:00', 61, 19),
(305.00, '2026-06-23 17:30:00', 61, 20), (310.00, '2026-06-23 17:45:00', 61, 21), (315.00, '2026-06-23 18:00:00', 61, 22), (320.00, '2026-06-23 18:15:00', 61, 23), (325.00, '2026-06-23 18:30:00', 61, 24),
(330.00, '2026-06-23 18:45:00', 61, 25), (335.00, '2026-06-23 19:00:00', 61, 26), (340.00, '2026-06-23 19:15:00', 61, 27), (345.00, '2026-06-23 19:30:00', 61, 28), (350.00, '2026-06-23 19:45:00', 61, 29),
-- Ronda 2
(355.00, '2026-06-24 15:00:00', 61, 10), (360.00, '2026-06-24 15:15:00', 61, 11), (365.00, '2026-06-24 15:30:00', 61, 12), (370.00, '2026-06-24 15:45:00', 61, 13), (375.00, '2026-06-24 16:00:00', 61, 14),
(380.00, '2026-06-24 16:15:00', 61, 15), (385.00, '2026-06-24 16:30:00', 61, 16), (390.00, '2026-06-24 16:45:00', 61, 17), (395.00, '2026-06-24 17:00:00', 61, 18), (400.00, '2026-06-24 17:15:00', 61, 19),
(405.00, '2026-06-24 17:30:00', 61, 20), (410.00, '2026-06-24 17:45:00', 61, 21), (415.00, '2026-06-24 18:00:00', 61, 22), (420.00, '2026-06-24 18:15:00', 61, 23), (425.00, '2026-06-24 18:30:00', 61, 24),
(430.00, '2026-06-24 18:45:00', 61, 25), (435.00, '2026-06-24 19:00:00', 61, 26), (440.00, '2026-06-24 19:15:00', 61, 27), (445.00, '2026-06-24 19:30:00', 61, 28), (450.00, '2026-06-24 19:45:00', 61, 29),
-- Ronda 3
(455.00, '2026-06-25 15:00:00', 61, 10), (460.00, '2026-06-25 15:15:00', 61, 11), (465.00, '2026-06-25 15:30:00', 61, 12), (470.00, '2026-06-25 15:45:00', 61, 13), (475.00, '2026-06-25 16:00:00', 61, 14),
(480.00, '2026-06-25 16:15:00', 61, 15), (485.00, '2026-06-25 16:30:00', 61, 16), (490.00, '2026-06-25 16:45:00', 61, 17), (495.00, '2026-06-25 17:00:00', 61, 18), (500.00, '2026-06-25 17:15:00', 61, 19),
(505.00, '2026-06-25 17:30:00', 61, 20), (510.00, '2026-06-25 17:45:00', 61, 21), (515.00, '2026-06-25 18:00:00', 61, 22), (520.00, '2026-06-25 18:15:00', 61, 23), (525.00, '2026-06-25 18:30:00', 61, 24),
(530.00, '2026-06-25 18:45:00', 61, 25), (535.00, '2026-06-25 19:00:00', 61, 26), (540.00, '2026-06-25 19:15:00', 61, 27), (545.00, '2026-06-25 19:30:00', 61, 28), (550.00, '2026-06-25 19:45:00', 61, 29),

-- ==========================================
-- SUBASTA 62 (Base: 130.00 | Inicio: 2026-06-23 10:00:00 | Cierre: 2026-06-28 10:00:00)
-- Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(135.00, '2026-06-24 10:00:00', 62, 30), (140.00, '2026-06-24 10:15:00', 62, 31), (145.00, '2026-06-24 10:30:00', 62, 32), (150.00, '2026-06-24 10:45:00', 62, 33), (155.00, '2026-06-24 11:00:00', 62, 34),
(160.00, '2026-06-24 11:15:00', 62, 35), (165.00, '2026-06-24 11:30:00', 62, 36), (170.00, '2026-06-24 11:45:00', 62, 37), (175.00, '2026-06-24 12:00:00', 62, 38), (180.00, '2026-06-24 12:15:00', 62, 39),
(185.00, '2026-06-24 12:30:00', 62, 40), (190.00, '2026-06-24 12:45:00', 62, 41), (195.00, '2026-06-24 13:00:00', 62, 42), (200.00, '2026-06-24 13:15:00', 62, 43), (205.00, '2026-06-24 13:30:00', 62, 44),
(210.00, '2026-06-24 13:45:00', 62, 45), (215.00, '2026-06-24 14:00:00', 62, 46), (220.00, '2026-06-24 14:15:00', 62, 47), (225.00, '2026-06-24 14:30:00', 62, 48), (230.00, '2026-06-24 14:45:00', 62, 49),
-- Ronda 2
(235.00, '2026-06-25 10:00:00', 62, 30), (240.00, '2026-06-25 10:15:00', 62, 31), (245.00, '2026-06-25 10:30:00', 62, 32), (250.00, '2026-06-25 10:45:00', 62, 33), (255.00, '2026-06-25 11:00:00', 62, 34),
(260.00, '2026-06-25 11:15:00', 62, 35), (265.00, '2026-06-25 11:30:00', 62, 36), (270.00, '2026-06-25 11:45:00', 62, 37), (275.00, '2026-06-25 12:00:00', 62, 38), (280.00, '2026-06-25 12:15:00', 62, 39),
(285.00, '2026-06-25 12:30:00', 62, 40), (290.00, '2026-06-25 12:45:00', 62, 41), (295.00, '2026-06-25 13:00:00', 62, 42), (300.00, '2026-06-25 13:15:00', 62, 43), (305.00, '2026-06-25 13:30:00', 62, 44),
(310.00, '2026-06-25 13:45:00', 62, 45), (315.00, '2026-06-25 14:00:00', 62, 46), (320.00, '2026-06-25 14:15:00', 62, 47), (325.00, '2026-06-25 14:30:00', 62, 48), (330.00, '2026-06-25 14:45:00', 62, 49),
-- Ronda 3
(335.00, '2026-06-26 10:00:00', 62, 30), (340.00, '2026-06-26 10:15:00', 62, 31), (345.00, '2026-06-26 10:30:00', 62, 32), (350.00, '2026-06-26 10:45:00', 62, 33), (355.00, '2026-06-26 11:00:00', 62, 34),
(360.00, '2026-06-26 11:15:00', 62, 35), (365.00, '2026-06-26 11:30:00', 62, 36), (370.00, '2026-06-26 11:45:00', 62, 37), (375.00, '2026-06-26 12:00:00', 62, 38), (380.00, '2026-06-26 12:15:00', 62, 39),
(385.00, '2026-06-26 12:30:00', 62, 40), (390.00, '2026-06-26 12:45:00', 62, 41), (395.00, '2026-06-26 13:00:00', 62, 42), (400.00, '2026-06-26 13:15:00', 62, 43), (405.00, '2026-06-26 13:30:00', 62, 44),
(410.00, '2026-06-26 13:45:00', 62, 45), (415.00, '2026-06-26 14:00:00', 62, 46), (420.00, '2026-06-26 14:15:00', 62, 47), (425.00, '2026-06-26 14:30:00', 62, 48), (430.00, '2026-06-26 14:45:00', 62, 49),

-- ==========================================
-- SUBASTA 63 (Base: 35.00 | Inicio: 2026-06-23 13:15:00 | Cierre: 2026-06-30 13:15:00)
-- Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(40.00, '2026-06-24 13:15:00', 63, 50), (45.00, '2026-06-24 13:30:00', 63, 51), (50.00, '2026-06-24 13:45:00', 63, 52), (55.00, '2026-06-24 14:00:00', 63, 53), (60.00, '2026-06-24 14:15:00', 63, 54),
(65.00, '2026-06-24 14:30:00', 63, 55), (70.00, '2026-06-24 14:45:00', 63, 56), (75.00, '2026-06-24 15:00:00', 63, 57), (80.00, '2026-06-24 15:15:00', 63, 58), (85.00, '2026-06-24 15:30:00', 63, 59),
(90.00, '2026-06-24 15:45:00', 63, 60), (95.00, '2026-06-24 16:00:00', 63, 61), (100.00, '2026-06-24 16:15:00', 63, 62), (105.00, '2026-06-24 16:30:00', 63, 63), (110.00, '2026-06-24 16:45:00', 63, 64),
(115.00, '2026-06-24 17:00:00', 63, 65), (120.00, '2026-06-24 17:15:00', 63, 66), (125.00, '2026-06-24 17:30:00', 63, 67), (130.00, '2026-06-24 17:45:00', 63, 68), (135.00, '2026-06-24 18:00:00', 63, 69),
-- Ronda 2
(140.00, '2026-06-25 13:15:00', 63, 50), (145.00, '2026-06-25 13:30:00', 63, 51), (150.00, '2026-06-25 13:45:00', 63, 52), (155.00, '2026-06-25 14:00:00', 63, 53), (160.00, '2026-06-25 14:15:00', 63, 54),
(165.00, '2026-06-25 14:30:00', 63, 55), (170.00, '2026-06-25 14:45:00', 63, 56), (175.00, '2026-06-25 15:00:00', 63, 57), (180.00, '2026-06-25 15:15:00', 63, 58), (185.00, '2026-06-25 15:30:00', 63, 59),
(190.00, '2026-06-25 15:45:00', 63, 60), (195.00, '2026-06-25 16:00:00', 63, 61), (200.00, '2026-06-25 16:15:00', 63, 62), (205.00, '2026-06-25 16:30:00', 63, 63), (210.00, '2026-06-25 16:45:00', 63, 64),
(215.00, '2026-06-25 17:00:00', 63, 65), (220.00, '2026-06-25 17:15:00', 63, 66), (225.00, '2026-06-25 17:30:00', 63, 67), (230.00, '2026-06-25 17:45:00', 63, 68), (235.00, '2026-06-25 18:00:00', 63, 69),
-- Ronda 3
(240.00, '2026-06-26 13:15:00', 63, 50), (245.00, '2026-06-26 13:30:00', 63, 51), (250.00, '2026-06-26 13:45:00', 63, 52), (255.00, '2026-06-26 14:00:00', 63, 53), (260.00, '2026-06-26 14:15:00', 63, 54),
(265.00, '2026-06-26 14:30:00', 63, 55), (270.00, '2026-06-26 14:45:00', 63, 56), (275.00, '2026-06-26 15:00:00', 63, 57), (280.00, '2026-06-26 15:15:00', 63, 58), (285.00, '2026-06-26 15:30:00', 63, 59),
(290.00, '2026-06-26 15:45:00', 63, 60), (295.00, '2026-06-26 16:00:00', 63, 61), (300.00, '2026-06-26 16:15:00', 63, 62), (305.00, '2026-06-26 16:30:00', 63, 63), (310.00, '2026-06-26 16:45:00', 63, 64),
(315.00, '2026-06-26 17:00:00', 63, 65), (320.00, '2026-06-26 17:15:00', 63, 66), (325.00, '2026-06-26 17:30:00', 63, 67), (330.00, '2026-06-26 17:45:00', 63, 68), (335.00, '2026-06-26 18:00:00', 63, 69),

-- ==========================================
-- SUBASTA 64 (Base: 100.00 | Inicio: 2026-06-23 17:30:00 | Cierre: 2026-06-28 17:30:00)
-- Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(105.00, '2026-06-24 17:30:00', 64, 70), (110.00, '2026-06-24 17:45:00', 64, 71), (115.00, '2026-06-24 18:00:00', 64, 72), (120.00, '2026-06-24 18:15:00', 64, 73), (125.00, '2026-06-24 18:30:00', 64, 74),
(130.00, '2026-06-24 18:45:00', 64, 75), (135.00, '2026-06-24 19:00:00', 64, 76), (140.00, '2026-06-24 19:15:00', 64, 77), (145.00, '2026-06-24 19:30:00', 64, 78), (150.00, '2026-06-24 19:45:00', 64, 79),
(155.00, '2026-06-24 20:00:00', 64, 80), (160.00, '2026-06-24 20:15:00', 64, 81), (165.00, '2026-06-24 20:30:00', 64, 82), (170.00, '2026-06-24 20:45:00', 64, 83), (175.00, '2026-06-24 21:00:00', 64, 84),
(180.00, '2026-06-24 21:15:00', 64, 85), (185.00, '2026-06-24 21:30:00', 64, 86), (190.00, '2026-06-24 21:45:00', 64, 87), (195.00, '2026-06-24 22:00:00', 64, 88), (200.00, '2026-06-24 22:15:00', 64, 89),
-- Ronda 2
(205.00, '2026-06-25 17:30:00', 64, 70), (210.00, '2026-06-25 17:45:00', 64, 71), (215.00, '2026-06-25 18:00:00', 64, 72), (220.00, '2026-06-25 18:15:00', 64, 73), (225.00, '2026-06-25 18:30:00', 64, 74),
(230.00, '2026-06-25 18:45:00', 64, 75), (235.00, '2026-06-25 19:00:00', 64, 76), (240.00, '2026-06-25 19:15:00', 64, 77), (245.00, '2026-06-25 19:30:00', 64, 78), (250.00, '2026-06-25 19:45:00', 64, 79),
(255.00, '2026-06-25 20:00:00', 64, 80), (260.00, '2026-06-25 20:15:00', 64, 81), (265.00, '2026-06-25 20:30:00', 64, 82), (270.00, '2026-06-25 20:45:00', 64, 83), (275.00, '2026-06-25 21:00:00', 64, 84),
(280.00, '2026-06-25 21:15:00', 64, 85), (285.00, '2026-06-25 21:30:00', 64, 86), (290.00, '2026-06-25 21:45:00', 64, 87), (295.00, '2026-06-25 22:00:00', 64, 88), (300.00, '2026-06-25 22:15:00', 64, 89),
-- Ronda 3
(305.00, '2026-06-26 17:30:00', 64, 70), (310.00, '2026-06-26 17:45:00', 64, 71), (315.00, '2026-06-26 18:00:00', 64, 72), (320.00, '2026-06-26 18:15:00', 64, 73), (325.00, '2026-06-26 18:30:00', 64, 74),
(330.00, '2026-06-26 18:45:00', 64, 75), (335.00, '2026-06-26 19:00:00', 64, 76), (340.00, '2026-06-26 19:15:00', 64, 77), (345.00, '2026-06-26 19:30:00', 64, 78), (350.00, '2026-06-26 19:45:00', 64, 79),
(355.00, '2026-06-26 20:00:00', 64, 80), (360.00, '2026-06-26 20:15:00', 64, 81), (365.00, '2026-06-26 20:30:00', 64, 82), (370.00, '2026-06-26 20:45:00', 64, 83), (375.00, '2026-06-26 21:00:00', 64, 84),
(380.00, '2026-06-26 21:15:00', 64, 85), (385.00, '2026-06-26 21:30:00', 64, 86), (390.00, '2026-06-26 21:45:00', 64, 87), (395.00, '2026-06-26 22:00:00', 64, 88), (400.00, '2026-06-26 22:15:00', 64, 89),

-- ==========================================
-- SUBASTA 65 (Base: 240.00 | Inicio: 2026-06-24 09:00:00 | Cierre: 2026-07-01 09:00:00)
-- Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(245.00, '2026-06-25 09:00:00', 65, 85), (250.00, '2026-06-25 09:15:00', 65, 86), (255.00, '2026-06-25 09:30:00', 65, 87), (260.00, '2026-06-25 09:45:00', 65, 88), (265.00, '2026-06-25 10:00:00', 65, 89),
(270.00, '2026-06-25 10:15:00', 65, 90), (275.00, '2026-06-25 10:30:00', 65, 91), (280.00, '2026-06-25 10:45:00', 65, 92), (285.00, '2026-06-25 11:00:00', 65, 93), (290.00, '2026-06-25 11:15:00', 65, 94),
(295.00, '2026-06-25 11:30:00', 65, 95), (300.00, '2026-06-25 11:45:00', 65, 96), (305.00, '2026-06-25 12:00:00', 65, 97), (310.00, '2026-06-25 12:15:00', 65, 98), (315.00, '2026-06-25 12:30:00', 65, 99),
(320.00, '2026-06-25 12:45:00', 65, 100), (325.00, '2026-06-25 13:00:00', 65, 101), (330.00, '2026-06-25 13:15:00', 65, 102), (335.00, '2026-06-25 13:30:00', 65, 103), (340.00, '2026-06-25 13:45:00', 65, 104),
-- Ronda 2
(345.00, '2026-06-26 09:00:00', 65, 85), (350.00, '2026-06-26 09:15:00', 65, 86), (355.00, '2026-06-26 09:30:00', 65, 87), (360.00, '2026-06-26 09:45:00', 65, 88), (365.00, '2026-06-26 10:00:00', 65, 89),
(370.00, '2026-06-26 10:15:00', 65, 90), (375.00, '2026-06-26 10:30:00', 65, 91), (380.00, '2026-06-26 10:45:00', 65, 92), (385.00, '2026-06-26 11:00:00', 65, 93), (390.00, '2026-06-26 11:15:00', 65, 94),
(395.00, '2026-06-26 11:30:00', 65, 95), (400.00, '2026-06-26 11:45:00', 65, 96), (405.00, '2026-06-26 12:00:00', 65, 97), (410.00, '2026-06-26 12:15:00', 65, 98), (415.00, '2026-06-26 12:30:00', 65, 99),
(420.00, '2026-06-26 12:45:00', 65, 100), (425.00, '2026-06-26 13:00:00', 65, 101), (430.00, '2026-06-26 13:15:00', 65, 102), (435.00, '2026-06-26 13:30:00', 65, 103), (440.00, '2026-06-26 13:45:00', 65, 104),
-- Ronda 3
(445.00, '2026-06-27 09:00:00', 65, 85), (450.00, '2026-06-27 09:15:00', 65, 86), (455.00, '2026-06-27 09:30:00', 65, 87), (460.00, '2026-06-27 09:45:00', 65, 88), (465.00, '2026-06-27 10:00:00', 65, 89),
(470.00, '2026-06-27 10:15:00', 65, 90), (475.00, '2026-06-27 10:30:00', 65, 91), (480.00, '2026-06-27 10:45:00', 65, 92), (485.00, '2026-06-27 11:00:00', 65, 93), (490.00, '2026-06-27 11:15:00', 65, 94),
(495.00, '2026-06-27 11:30:00', 65, 95), (500.00, '2026-06-27 11:45:00', 65, 96), (505.00, '2026-06-27 12:00:00', 65, 97), (510.00, '2026-06-27 12:15:00', 65, 98), (515.00, '2026-06-27 12:30:00', 65, 99),
(520.00, '2026-06-27 12:45:00', 65, 100), (525.00, '2026-06-27 13:00:00', 65, 101), (530.00, '2026-06-27 13:15:00', 65, 102), (535.00, '2026-06-27 13:30:00', 65, 103), (540.00, '2026-06-27 13:45:00', 65, 104),

-- ==========================================
-- SUBASTA 66 (Base: 100.00 | Inicio: 2026-06-24 12:00:00 | Cierre: 2026-06-29 12:00:00)
-- Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(105.00, '2026-06-25 12:00:00', 66, 10), (110.00, '2026-06-25 12:15:00', 66, 11), (115.00, '2026-06-25 12:30:00', 66, 12), (120.00, '2026-06-25 12:45:00', 66, 13), (125.00, '2026-06-25 13:00:00', 66, 14),
(130.00, '2026-06-25 13:15:00', 66, 15), (135.00, '2026-06-25 13:30:00', 66, 16), (140.00, '2026-06-25 13:45:00', 66, 17), (145.00, '2026-06-25 14:00:00', 66, 18), (150.00, '2026-06-25 14:15:00', 66, 19),
(155.00, '2026-06-25 14:30:00', 66, 20), (160.00, '2026-06-25 14:45:00', 66, 21), (165.00, '2026-06-25 15:00:00', 66, 22), (170.00, '2026-06-25 15:15:00', 66, 23), (175.00, '2026-06-25 15:30:00', 66, 24),
(180.00, '2026-06-25 15:45:00', 66, 25), (185.00, '2026-06-25 16:00:00', 66, 26), (190.00, '2026-06-25 16:15:00', 66, 27), (195.00, '2026-06-25 16:30:00', 66, 28), (200.00, '2026-06-25 16:45:00', 66, 29),
-- Ronda 2
(205.00, '2026-06-26 12:00:00', 66, 10), (210.00, '2026-06-26 12:15:00', 66, 11), (215.00, '2026-06-26 12:30:00', 66, 12), (220.00, '2026-06-26 12:45:00', 66, 13), (225.00, '2026-06-26 13:00:00', 66, 14),
(230.00, '2026-06-26 13:15:00', 66, 15), (235.00, '2026-06-26 13:30:00', 66, 16), (240.00, '2026-06-26 13:45:00', 66, 17), (245.00, '2026-06-26 14:00:00', 66, 18), (250.00, '2026-06-26 14:15:00', 66, 19),
(255.00, '2026-06-26 14:30:00', 66, 20), (260.00, '2026-06-26 14:45:00', 66, 21), (265.00, '2026-06-26 15:00:00', 66, 22), (270.00, '2026-06-26 15:15:00', 66, 23), (275.00, '2026-06-26 15:30:00', 66, 24),
(280.00, '2026-06-26 15:45:00', 66, 25), (285.00, '2026-06-26 16:00:00', 66, 26), (290.00, '2026-06-26 16:15:00', 66, 27), (295.00, '2026-06-26 16:30:00', 66, 28), (300.00, '2026-06-26 16:45:00', 66, 29),
-- Ronda 3
(305.00, '2026-06-27 12:00:00', 66, 10), (310.00, '2026-06-27 12:15:00', 66, 11), (315.00, '2026-06-27 12:30:00', 66, 12), (320.00, '2026-06-27 12:45:00', 66, 13), (325.00, '2026-06-27 13:00:00', 66, 14),
(330.00, '2026-06-27 13:15:00', 66, 15), (335.00, '2026-06-27 13:30:00', 66, 16), (340.00, '2026-06-27 13:45:00', 66, 17), (345.00, '2026-06-27 14:00:00', 66, 18), (350.00, '2026-06-27 14:15:00', 66, 19),
(355.00, '2026-06-27 14:30:00', 66, 20), (360.00, '2026-06-27 14:45:00', 66, 21), (365.00, '2026-06-27 15:00:00', 66, 22), (370.00, '2026-06-27 15:15:00', 66, 23), (375.00, '2026-06-27 15:30:00', 66, 24),
(380.00, '2026-06-27 15:45:00', 66, 25), (385.00, '2026-06-27 16:00:00', 66, 26), (390.00, '2026-06-27 16:15:00', 66, 27), (395.00, '2026-06-27 16:30:00', 66, 28), (400.00, '2026-06-27 16:45:00', 66, 29),

-- ==========================================
-- SUBASTA 67 (Base: 270.00 | Inicio: 2026-06-24 16:00:00 | Cierre: 2026-07-01 16:00:00)
-- Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(275.00, '2026-06-25 16:00:00', 67, 30), (280.00, '2026-06-25 16:15:00', 67, 31), (285.00, '2026-06-25 16:30:00', 67, 32), (290.00, '2026-06-25 16:45:00', 67, 33), (295.00, '2026-06-25 17:00:00', 67, 34),
(300.00, '2026-06-25 17:15:00', 67, 35), (305.00, '2026-06-25 17:30:00', 67, 36), (310.00, '2026-06-25 17:45:00', 67, 37), (315.00, '2026-06-25 18:00:00', 67, 38), (320.00, '2026-06-25 18:15:00', 67, 39),
(325.00, '2026-06-25 18:30:00', 67, 40), (330.00, '2026-06-25 18:45:00', 67, 41), (335.00, '2026-06-25 19:00:00', 67, 42), (340.00, '2026-06-25 19:15:00', 67, 43), (345.00, '2026-06-25 19:30:00', 67, 44),
(350.00, '2026-06-25 19:45:00', 67, 45), (355.00, '2026-06-25 20:00:00', 67, 46), (360.00, '2026-06-25 20:15:00', 67, 47), (365.00, '2026-06-25 20:30:00', 67, 48), (370.00, '2026-06-25 20:45:00', 67, 49),
-- Ronda 2
(375.00, '2026-06-26 16:00:00', 67, 30), (380.00, '2026-06-26 16:15:00', 67, 31), (385.00, '2026-06-26 16:30:00', 67, 32), (390.00, '2026-06-26 16:45:00', 67, 33), (395.00, '2026-06-26 17:00:00', 67, 34),
(400.00, '2026-06-26 17:15:00', 67, 35), (405.00, '2026-06-26 17:30:00', 67, 36), (410.00, '2026-06-26 17:45:00', 67, 37), (415.00, '2026-06-26 18:00:00', 67, 38), (420.00, '2026-06-26 18:15:00', 67, 39),
(425.00, '2026-06-26 18:30:00', 67, 40), (430.00, '2026-06-26 18:45:00', 67, 41), (435.00, '2026-06-26 19:00:00', 67, 42), (440.00, '2026-06-26 19:15:00', 67, 43), (445.00, '2026-06-26 19:30:00', 67, 44),
(450.00, '2026-06-26 19:45:00', 67, 45), (455.00, '2026-06-26 20:00:00', 67, 46), (460.00, '2026-06-26 20:15:00', 67, 47), (465.00, '2026-06-26 20:30:00', 67, 48), (470.00, '2026-06-26 20:45:00', 67, 49),
-- Ronda 3
(475.00, '2026-06-27 16:00:00', 67, 30), (480.00, '2026-06-27 16:15:00', 67, 31), (485.00, '2026-06-27 16:30:00', 67, 32), (490.00, '2026-06-27 16:45:00', 67, 33), (495.00, '2026-06-27 17:00:00', 67, 34),
(500.00, '2026-06-27 17:15:00', 67, 35), (505.00, '2026-06-27 17:30:00', 67, 36), (510.00, '2026-06-27 17:45:00', 67, 37), (515.00, '2026-06-27 18:00:00', 67, 38), (520.00, '2026-06-27 18:15:00', 67, 39),
(525.00, '2026-06-27 18:30:00', 67, 40), (530.00, '2026-06-27 18:45:00', 67, 41), (535.00, '2026-06-27 19:00:00', 67, 42), (540.00, '2026-06-27 19:15:00', 67, 43), (545.00, '2026-06-27 19:30:00', 67, 44),
(550.00, '2026-06-27 19:45:00', 67, 45), (555.00, '2026-06-27 20:00:00', 67, 46), (560.00, '2026-06-27 20:15:00', 67, 47), (565.00, '2026-06-27 20:30:00', 67, 48), (570.00, '2026-06-27 20:45:00', 67, 49),

-- ==========================================
-- SUBASTA 68 (Base: 220.00 | Inicio: 2026-06-25 08:30:00 | Cierre: 2026-06-30 08:30:00)
-- Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(225.00, '2026-06-26 08:30:00', 68, 50), (230.00, '2026-06-26 08:45:00', 68, 51), (235.00, '2026-06-26 09:00:00', 68, 52), (240.00, '2026-06-26 09:15:00', 68, 53), (245.00, '2026-06-26 09:30:00', 68, 54),
(250.00, '2026-06-26 09:45:00', 68, 55), (255.00, '2026-06-26 10:00:00', 68, 56), (260.00, '2026-06-26 10:15:00', 68, 57), (265.00, '2026-06-26 10:30:00', 68, 58), (270.00, '2026-06-26 10:45:00', 68, 59),
(275.00, '2026-06-26 11:00:00', 68, 60), (280.00, '2026-06-26 11:15:00', 68, 61), (285.00, '2026-06-26 11:30:00', 68, 62), (290.00, '2026-06-26 11:45:00', 68, 63), (295.00, '2026-06-26 12:00:00', 68, 64),
(300.00, '2026-06-26 12:15:00', 68, 65), (305.00, '2026-06-26 12:30:00', 68, 66), (310.00, '2026-06-26 12:45:00', 68, 67), (315.00, '2026-06-26 13:00:00', 68, 68), (320.00, '2026-06-26 13:15:00', 68, 69),
-- Ronda 2
(325.00, '2026-06-27 08:30:00', 68, 50), (330.00, '2026-06-27 08:45:00', 68, 51), (335.00, '2026-06-27 09:00:00', 68, 52), (340.00, '2026-06-27 09:15:00', 68, 53), (345.00, '2026-06-27 09:30:00', 68, 54),
(350.00, '2026-06-27 09:45:00', 68, 55), (355.00, '2026-06-27 10:00:00', 68, 56), (360.00, '2026-06-27 10:15:00', 68, 57), (365.00, '2026-06-27 10:30:00', 68, 58), (370.00, '2026-06-27 10:45:00', 68, 59),
(375.00, '2026-06-27 11:00:00', 68, 60), (380.00, '2026-06-27 11:15:00', 68, 61), (385.00, '2026-06-27 11:30:00', 68, 62), (390.00, '2026-06-27 11:45:00', 68, 63), (395.00, '2026-06-27 12:00:00', 68, 64),
(400.00, '2026-06-27 12:15:00', 68, 65), (405.00, '2026-06-27 12:30:00', 68, 66), (410.00, '2026-06-27 12:45:00', 68, 67), (415.00, '2026-06-27 13:00:00', 68, 68), (420.00, '2026-06-27 13:15:00', 68, 69),
-- Ronda 3
(425.00, '2026-06-28 08:30:00', 68, 50), (430.00, '2026-06-28 08:45:00', 68, 51), (435.00, '2026-06-28 09:00:00', 68, 52), (440.00, '2026-06-28 09:15:00', 68, 53), (445.00, '2026-06-28 09:30:00', 68, 54),
(450.00, '2026-06-28 09:45:00', 68, 55), (455.00, '2026-06-28 10:00:00', 68, 56), (460.00, '2026-06-28 10:15:00', 68, 57), (465.00, '2026-06-28 10:30:00', 68, 58), (470.00, '2026-06-28 10:45:00', 68, 59),
(475.00, '2026-06-28 11:00:00', 68, 60), (480.00, '2026-06-28 11:15:00', 68, 61), (485.00, '2026-06-28 11:30:00', 68, 62), (490.00, '2026-06-28 11:45:00', 68, 63), (495.00, '2026-06-28 12:00:00', 68, 64),
(500.00, '2026-06-28 12:15:00', 68, 65), (505.00, '2026-06-28 12:30:00', 68, 66), (510.00, '2026-06-28 12:45:00', 68, 67), (515.00, '2026-06-28 13:00:00', 68, 68), (520.00, '2026-06-28 13:15:00', 68, 69),

-- ==========================================
-- SUBASTA 69 (Base: 210.00 | Inicio: 2026-06-25 11:00:00 | Cierre: 2026-07-02 11:00:00)
-- Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(215.00, '2026-06-26 11:00:00', 69, 70), (220.00, '2026-06-26 11:15:00', 69, 71), (225.00, '2026-06-26 11:30:00', 69, 72), (230.00, '2026-06-26 11:45:00', 69, 73), (235.00, '2026-06-26 12:00:00', 69, 74),
(240.00, '2026-06-26 12:15:00', 69, 75), (245.00, '2026-06-26 12:30:00', 69, 76), (250.00, '2026-06-26 12:45:00', 69, 77), (255.00, '2026-06-26 13:00:00', 69, 78), (260.00, '2026-06-26 13:15:00', 69, 79),
(265.00, '2026-06-26 13:30:00', 69, 80), (270.00, '2026-06-26 13:45:00', 69, 81), (275.00, '2026-06-26 14:00:00', 69, 82), (280.00, '2026-06-26 14:15:00', 69, 83), (285.00, '2026-06-26 14:30:00', 69, 84),
(290.00, '2026-06-26 14:45:00', 69, 85), (295.00, '2026-06-26 15:00:00', 69, 86), (300.00, '2026-06-26 15:15:00', 69, 87), (305.00, '2026-06-26 15:30:00', 69, 88), (310.00, '2026-06-26 15:45:00', 69, 89),
-- Ronda 2
(315.00, '2026-06-27 11:00:00', 69, 70), (320.00, '2026-06-27 11:15:00', 69, 71), (325.00, '2026-06-27 11:30:00', 69, 72), (330.00, '2026-06-27 11:45:00', 69, 73), (335.00, '2026-06-27 12:00:00', 69, 74),
(340.00, '2026-06-27 12:15:00', 69, 75), (345.00, '2026-06-27 12:30:00', 69, 76), (350.00, '2026-06-27 12:45:00', 69, 77), (355.00, '2026-06-27 13:00:00', 69, 78), (360.00, '2026-06-27 13:15:00', 69, 79),
(365.00, '2026-06-27 13:30:00', 69, 80), (370.00, '2026-06-27 13:45:00', 69, 81), (375.00, '2026-06-27 14:00:00', 69, 82), (380.00, '2026-06-27 14:15:00', 69, 83), (385.00, '2026-06-27 14:30:00', 69, 84),
(390.00, '2026-06-27 14:45:00', 69, 85), (395.00, '2026-06-27 15:00:00', 69, 86), (400.00, '2026-06-27 15:15:00', 69, 87), (405.00, '2026-06-27 15:30:00', 69, 88), (410.00, '2026-06-27 15:45:00', 69, 89),
-- Ronda 3
(415.00, '2026-06-28 11:00:00', 69, 70), (420.00, '2026-06-28 11:15:00', 69, 71), (425.00, '2026-06-28 11:30:00', 69, 72), (430.00, '2026-06-28 11:45:00', 69, 73), (435.00, '2026-06-28 12:00:00', 69, 74),
(440.00, '2026-06-28 12:15:00', 69, 75), (445.00, '2026-06-28 12:30:00', 69, 76), (450.00, '2026-06-28 12:45:00', 69, 77), (455.00, '2026-06-28 13:00:00', 69, 78), (460.00, '2026-06-28 13:15:00', 69, 79),
(465.00, '2026-06-28 13:30:00', 69, 80), (470.00, '2026-06-28 13:45:00', 69, 81), (475.00, '2026-06-28 14:00:00', 69, 82), (480.00, '2026-06-28 14:15:00', 69, 83), (485.00, '2026-06-28 14:30:00', 69, 84),
(490.00, '2026-06-28 14:45:00', 69, 85), (495.00, '2026-06-28 15:00:00', 69, 86), (500.00, '2026-06-28 15:15:00', 69, 87), (505.00, '2026-06-28 15:30:00', 69, 88), (510.00, '2026-06-28 15:45:00', 69, 89),

-- ==========================================
-- SUBASTA 70 (Base: 180.00 | Inicio: 2026-06-25 14:45:00 | Cierre: 2026-06-30 14:45:00)
-- Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(185.00, '2026-06-26 14:45:00', 70, 85), (190.00, '2026-06-26 15:00:00', 70, 86), (195.00, '2026-06-26 15:15:00', 70, 87), (200.00, '2026-06-26 15:30:00', 70, 88), (205.00, '2026-06-26 15:45:00', 70, 89),
(210.00, '2026-06-26 16:00:00', 70, 90), (215.00, '2026-06-26 16:15:00', 70, 91), (220.00, '2026-06-26 16:30:00', 70, 92), (225.00, '2026-06-26 16:45:00', 70, 93), (230.00, '2026-06-26 17:00:00', 70, 94),
(235.00, '2026-06-26 17:15:00', 70, 95), (240.00, '2026-06-26 17:30:00', 70, 96), (245.00, '2026-06-26 17:45:00', 70, 97), (250.00, '2026-06-26 18:00:00', 70, 98), (255.00, '2026-06-26 18:15:00', 70, 99),
(260.00, '2026-06-26 18:30:00', 70, 100), (265.00, '2026-06-26 18:45:00', 70, 101), (270.00, '2026-06-26 19:00:00', 70, 102), (275.00, '2026-06-26 19:15:00', 70, 103), (280.00, '2026-06-26 19:30:00', 70, 104),
-- Ronda 2
(285.00, '2026-06-27 14:45:00', 70, 85), (290.00, '2026-06-27 15:00:00', 70, 86), (295.00, '2026-06-27 15:15:00', 70, 87), (300.00, '2026-06-27 15:30:00', 70, 88), (305.00, '2026-06-27 15:45:00', 70, 89),
(310.00, '2026-06-27 16:00:00', 70, 90), (315.00, '2026-06-27 16:15:00', 70, 91), (320.00, '2026-06-27 16:30:00', 70, 92), (325.00, '2026-06-27 16:45:00', 70, 93), (330.00, '2026-06-27 17:00:00', 70, 94),
(335.00, '2026-06-27 17:15:00', 70, 95), (340.00, '2026-06-27 17:30:00', 70, 96), (345.00, '2026-06-27 17:45:00', 70, 97), (350.00, '2026-06-27 18:00:00', 70, 98), (355.00, '2026-06-27 18:15:00', 70, 99),
(360.00, '2026-06-27 18:30:00', 70, 100), (365.00, '2026-06-27 18:45:00', 70, 101), (370.00, '2026-06-27 19:00:00', 70, 102), (375.00, '2026-06-27 19:15:00', 70, 103), (380.00, '2026-06-27 19:30:00', 70, 104),
-- Ronda 3
(385.00, '2026-06-28 14:45:00', 70, 85), (390.00, '2026-06-28 15:00:00', 70, 86), (395.00, '2026-06-28 15:15:00', 70, 87), (400.00, '2026-06-28 15:30:00', 70, 88), (405.00, '2026-06-28 15:45:00', 70, 89),
(410.00, '2026-06-28 16:00:00', 70, 90), (415.00, '2026-06-28 16:15:00', 70, 91), (420.00, '2026-06-28 16:30:00', 70, 92), (425.00, '2026-06-28 16:45:00', 70, 93), (430.00, '2026-06-28 17:00:00', 70, 94),
(435.00, '2026-06-28 17:15:00', 70, 95), (440.00, '2026-06-28 17:30:00', 70, 96), (445.00, '2026-06-28 17:45:00', 70, 97), (450.00, '2026-06-28 18:00:00', 70, 98), (455.00, '2026-06-28 18:15:00', 70, 99),
(460.00, '2026-06-28 18:30:00', 70, 100), (465.00, '2026-06-28 18:45:00', 70, 101), (470.00, '2026-06-28 19:00:00', 70, 102), (475.00, '2026-06-28 19:15:00', 70, 103), (480.00, '2026-06-28 19:30:00', 70, 104),

-- ==========================================
-- SUBASTA 71 (Base: 100.00 | Inicio: 2026-06-26 10:00:00 | Cierre: 2026-07-03 10:00:00)
-- Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(105.00, '2026-06-27 10:00:00', 71, 10), (110.00, '2026-06-27 10:15:00', 71, 11), (115.00, '2026-06-27 10:30:00', 71, 12), (120.00, '2026-06-27 10:45:00', 71, 13), (125.00, '2026-06-27 11:00:00', 71, 14),
(130.00, '2026-06-27 11:15:00', 71, 15), (135.00, '2026-06-27 11:30:00', 71, 16), (140.00, '2026-06-27 11:45:00', 71, 17), (145.00, '2026-06-27 12:00:00', 71, 18), (150.00, '2026-06-27 12:15:00', 71, 19),
(155.00, '2026-06-27 12:30:00', 71, 20), (160.00, '2026-06-27 12:45:00', 71, 21), (165.00, '2026-06-27 13:00:00', 71, 22), (170.00, '2026-06-27 13:15:00', 71, 23), (175.00, '2026-06-27 13:30:00', 71, 24),
(180.00, '2026-06-27 13:45:00', 71, 25), (185.00, '2026-06-27 14:00:00', 71, 26), (190.00, '2026-06-27 14:15:00', 71, 27), (195.00, '2026-06-27 14:30:00', 71, 28), (200.00, '2026-06-27 14:45:00', 71, 29),
-- Ronda 2
(205.00, '2026-06-28 10:00:00', 71, 10), (210.00, '2026-06-28 10:15:00', 71, 11), (215.00, '2026-06-28 10:30:00', 71, 12), (220.00, '2026-06-28 10:45:00', 71, 13), (225.00, '2026-06-28 11:00:00', 71, 14),
(230.00, '2026-06-28 11:15:00', 71, 15), (235.00, '2026-06-28 11:30:00', 71, 16), (240.00, '2026-06-28 11:45:00', 71, 17), (245.00, '2026-06-28 12:00:00', 71, 18), (250.00, '2026-06-28 12:15:00', 71, 19),
(255.00, '2026-06-28 12:30:00', 71, 20), (260.00, '2026-06-28 12:45:00', 71, 21), (265.00, '2026-06-28 13:00:00', 71, 22), (270.00, '2026-06-28 13:15:00', 71, 23), (275.00, '2026-06-28 13:30:00', 71, 24),
(280.00, '2026-06-28 13:45:00', 71, 25), (285.00, '2026-06-28 14:00:00', 71, 26), (290.00, '2026-06-28 14:15:00', 71, 27), (295.00, '2026-06-28 14:30:00', 71, 28), (300.00, '2026-06-28 14:45:00', 71, 29),
-- Ronda 3
(305.00, '2026-06-29 10:00:00', 71, 10), (310.00, '2026-06-29 10:15:00', 71, 11), (315.00, '2026-06-29 10:30:00', 71, 12), (320.00, '2026-06-29 10:45:00', 71, 13), (325.00, '2026-06-29 11:00:00', 71, 14),
(330.00, '2026-06-29 11:15:00', 71, 15), (335.00, '2026-06-29 11:30:00', 71, 16), (340.00, '2026-06-29 11:45:00', 71, 17), (345.00, '2026-06-29 12:00:00', 71, 18), (350.00, '2026-06-29 12:15:00', 71, 19),
(355.00, '2026-06-29 12:30:00', 71, 20), (360.00, '2026-06-29 12:45:00', 71, 21), (365.00, '2026-06-29 13:00:00', 71, 22), (370.00, '2026-06-29 13:15:00', 71, 23), (375.00, '2026-06-29 13:30:00', 71, 24),
(380.00, '2026-06-29 13:45:00', 71, 25), (385.00, '2026-06-29 14:00:00', 71, 26), (390.00, '2026-06-29 14:15:00', 71, 27), (395.00, '2026-06-29 14:30:00', 71, 28), (400.00, '2026-06-29 14:45:00', 71, 29),

-- ==========================================
-- SUBASTA 72 (Base: 160.00 | Inicio: 2026-06-26 13:00:00 | Cierre: 2026-07-01 13:00:00)
-- Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(165.00, '2026-06-27 13:00:00', 72, 30), (170.00, '2026-06-27 13:15:00', 72, 31), (175.00, '2026-06-27 13:30:00', 72, 32), (180.00, '2026-06-27 13:45:00', 72, 33), (185.00, '2026-06-27 14:00:00', 72, 34),
(190.00, '2026-06-27 14:15:00', 72, 35), (195.00, '2026-06-27 14:30:00', 72, 36), (200.00, '2026-06-27 14:45:00', 72, 37), (205.00, '2026-06-27 15:00:00', 72, 38), (210.00, '2026-06-27 15:15:00', 72, 39),
(215.00, '2026-06-27 15:30:00', 72, 40), (220.00, '2026-06-27 15:45:00', 72, 41), (225.00, '2026-06-27 16:00:00', 72, 42), (230.00, '2026-06-27 16:15:00', 72, 43), (235.00, '2026-06-27 16:30:00', 72, 44),
(240.00, '2026-06-27 16:45:00', 72, 45), (245.00, '2026-06-27 17:00:00', 72, 46), (250.00, '2026-06-27 17:15:00', 72, 47), (255.00, '2026-06-27 17:30:00', 72, 48), (260.00, '2026-06-27 17:45:00', 72, 49),
-- Ronda 2
(265.00, '2026-06-28 13:00:00', 72, 30), (270.00, '2026-06-28 13:15:00', 72, 31), (275.00, '2026-06-28 13:30:00', 72, 32), (280.00, '2026-06-28 13:45:00', 72, 33), (285.00, '2026-06-28 14:00:00', 72, 34),
(290.00, '2026-06-28 14:15:00', 72, 35), (295.00, '2026-06-28 14:30:00', 72, 36), (300.00, '2026-06-28 14:45:00', 72, 37), (305.00, '2026-06-28 15:00:00', 72, 38), (310.00, '2026-06-28 15:15:00', 72, 39),
(315.00, '2026-06-28 15:30:00', 72, 40), (320.00, '2026-06-28 15:45:00', 72, 41), (325.00, '2026-06-28 16:00:00', 72, 42), (330.00, '2026-06-28 16:15:00', 72, 43), (335.00, '2026-06-28 16:30:00', 72, 44),
(340.00, '2026-06-28 16:45:00', 72, 45), (345.00, '2026-06-28 17:00:00', 72, 46), (350.00, '2026-06-28 17:15:00', 72, 47), (355.00, '2026-06-28 17:30:00', 72, 48), (360.00, '2026-06-28 17:45:00', 72, 49),
-- Ronda 3
(365.00, '2026-06-29 13:00:00', 72, 30), (370.00, '2026-06-29 13:15:00', 72, 31), (375.00, '2026-06-29 13:30:00', 72, 32), (380.00, '2026-06-29 13:45:00', 72, 33), (385.00, '2026-06-29 14:00:00', 72, 34),
(390.00, '2026-06-29 14:15:00', 72, 35), (395.00, '2026-06-29 14:30:00', 72, 36), (400.00, '2026-06-29 14:45:00', 72, 37), (405.00, '2026-06-29 15:00:00', 72, 38), (410.00, '2026-06-29 15:15:00', 72, 39),
(415.00, '2026-06-29 15:30:00', 72, 40), (420.00, '2026-06-29 15:45:00', 72, 41), (425.00, '2026-06-29 16:00:00', 72, 42), (430.00, '2026-06-29 16:15:00', 72, 43), (435.00, '2026-06-29 16:30:00', 72, 44),
(440.00, '2026-06-29 16:45:00', 72, 45), (445.00, '2026-06-29 17:00:00', 72, 46), (450.00, '2026-06-29 17:15:00', 72, 47), (455.00, '2026-06-29 17:30:00', 72, 48), (460.00, '2026-06-29 17:45:00', 72, 49),

-- ==========================================
-- SUBASTA 73 (Base: 190.00 | Inicio: 2026-06-26 18:00:00 | Cierre: 2026-07-03 18:00:00)
-- Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(195.00, '2026-06-27 18:00:00', 73, 50), (200.00, '2026-06-27 18:15:00', 73, 51), (205.00, '2026-06-27 18:30:00', 73, 52), (210.00, '2026-06-27 18:45:00', 73, 53), (215.00, '2026-06-27 19:00:00', 73, 54),
(220.00, '2026-06-27 19:15:00', 73, 55), (225.00, '2026-06-27 19:30:00', 73, 56), (230.00, '2026-06-27 19:45:00', 73, 57), (235.00, '2026-06-27 20:00:00', 73, 58), (240.00, '2026-06-27 20:15:00', 73, 59),
(245.00, '2026-06-27 20:30:00', 73, 60), (250.00, '2026-06-27 20:45:00', 73, 61), (255.00, '2026-06-27 21:00:00', 73, 62), (260.00, '2026-06-27 21:15:00', 73, 63), (265.00, '2026-06-27 21:30:00', 73, 64),
(270.00, '2026-06-27 21:45:00', 73, 65), (275.00, '2026-06-27 22:00:00', 73, 66), (280.00, '2026-06-27 22:15:00', 73, 67), (285.00, '2026-06-27 22:30:00', 73, 68), (290.00, '2026-06-27 22:45:00', 73, 69),
-- Ronda 2
(295.00, '2026-06-28 18:00:00', 73, 50), (300.00, '2026-06-28 18:15:00', 73, 51), (305.00, '2026-06-28 18:30:00', 73, 52), (310.00, '2026-06-28 18:45:00', 73, 53), (315.00, '2026-06-28 19:00:00', 73, 54),
(320.00, '2026-06-28 19:15:00', 73, 55), (325.00, '2026-06-28 19:30:00', 73, 56), (330.00, '2026-06-28 19:45:00', 73, 57), (335.00, '2026-06-28 20:00:00', 73, 58), (340.00, '2026-06-28 20:15:00', 73, 59),
(345.00, '2026-06-28 20:30:00', 73, 60), (350.00, '2026-06-28 20:45:00', 73, 61), (355.00, '2026-06-28 21:00:00', 73, 62), (360.00, '2026-06-28 21:15:00', 73, 63), (365.00, '2026-06-28 21:30:00', 73, 64),
(370.00, '2026-06-28 21:45:00', 73, 65), (375.00, '2026-06-28 22:00:00', 73, 66), (380.00, '2026-06-28 22:15:00', 73, 67), (385.00, '2026-06-28 22:30:00', 73, 68), (390.00, '2026-06-28 22:45:00', 73, 69),
-- Ronda 3
(395.00, '2026-06-29 18:00:00', 73, 50), (400.00, '2026-06-29 18:15:00', 73, 51), (405.00, '2026-06-29 18:30:00', 73, 52), (410.00, '2026-06-29 18:45:00', 73, 53), (415.00, '2026-06-29 19:00:00', 73, 54),
(420.00, '2026-06-29 19:15:00', 73, 55), (425.00, '2026-06-29 19:30:00', 73, 56), (430.00, '2026-06-29 19:45:00', 73, 57), (435.00, '2026-06-29 20:00:00', 73, 58), (440.00, '2026-06-29 20:15:00', 73, 59),
(445.00, '2026-06-29 20:30:00', 73, 60), (450.00, '2026-06-29 20:45:00', 73, 61), (455.00, '2026-06-29 21:00:00', 73, 62), (460.00, '2026-06-29 21:15:00', 73, 63), (465.00, '2026-06-29 21:30:00', 73, 64),
(470.00, '2026-06-29 21:45:00', 73, 65), (475.00, '2026-06-29 22:00:00', 73, 66), (480.00, '2026-06-29 22:15:00', 73, 67), (485.00, '2026-06-29 22:30:00', 73, 68), (490.00, '2026-06-29 22:45:00', 73, 69),

-- ==========================================
-- SUBASTA 74 (Base: 110.00 | Inicio: 2026-06-27 09:15:00 | Cierre: 2026-07-02 09:15:00)
-- Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(115.00, '2026-06-28 09:15:00', 74, 70), (120.00, '2026-06-28 09:30:00', 74, 71), (125.00, '2026-06-28 09:45:00', 74, 72), (130.00, '2026-06-28 10:00:00', 74, 73), (135.00, '2026-06-28 10:15:00', 74, 74),
(140.00, '2026-06-28 10:30:00', 74, 75), (145.00, '2026-06-28 10:45:00', 74, 76), (150.00, '2026-06-28 11:00:00', 74, 77), (155.00, '2026-06-28 11:15:00', 74, 78), (160.00, '2026-06-28 11:30:00', 74, 79),
(165.00, '2026-06-28 11:45:00', 74, 80), (170.00, '2026-06-28 12:00:00', 74, 81), (175.00, '2026-06-28 12:15:00', 74, 82), (180.00, '2026-06-28 12:30:00', 74, 83), (185.00, '2026-06-28 12:45:00', 74, 84),
(190.00, '2026-06-28 13:00:00', 74, 85), (195.00, '2026-06-28 13:15:00', 74, 86), (200.00, '2026-06-28 13:30:00', 74, 87), (205.00, '2026-06-28 13:45:00', 74, 88), (210.00, '2026-06-28 14:00:00', 74, 89),
-- Ronda 2
(215.00, '2026-06-29 09:15:00', 74, 70), (220.00, '2026-06-29 09:30:00', 74, 71), (225.00, '2026-06-29 09:45:00', 74, 72), (230.00, '2026-06-29 10:00:00', 74, 73), (235.00, '2026-06-29 10:15:00', 74, 74),
(240.00, '2026-06-29 10:30:00', 74, 75), (245.00, '2026-06-29 10:45:00', 74, 76), (250.00, '2026-06-29 11:00:00', 74, 77), (255.00, '2026-06-29 11:15:00', 74, 78), (260.00, '2026-06-29 11:30:00', 74, 79),
(265.00, '2026-06-29 11:45:00', 74, 80), (270.00, '2026-06-29 12:00:00', 74, 81), (275.00, '2026-06-29 12:15:00', 74, 82), (280.00, '2026-06-29 12:30:00', 74, 83), (285.00, '2026-06-29 12:45:00', 74, 84),
(290.00, '2026-06-29 13:00:00', 74, 85), (295.00, '2026-06-29 13:15:00', 74, 86), (300.00, '2026-06-29 13:30:00', 74, 87), (305.00, '2026-06-29 13:45:00', 74, 88), (310.00, '2026-06-29 14:00:00', 74, 89),
-- Ronda 3
(315.00, '2026-06-30 09:15:00', 74, 70), (320.00, '2026-06-30 09:30:00', 74, 71), (325.00, '2026-06-30 09:45:00', 74, 72), (330.00, '2026-06-30 10:00:00', 74, 73), (335.00, '2026-06-30 10:15:00', 74, 74),
(340.00, '2026-06-30 10:30:00', 74, 75), (345.00, '2026-06-30 10:45:00', 74, 76), (350.00, '2026-06-30 11:00:00', 74, 77), (355.00, '2026-06-30 11:15:00', 74, 78), (360.00, '2026-06-30 11:30:00', 74, 79),
(365.00, '2026-06-30 11:45:00', 74, 80), (370.00, '2026-06-30 12:00:00', 74, 81), (375.00, '2026-06-30 12:15:00', 74, 82), (380.00, '2026-06-30 12:30:00', 74, 83), (385.00, '2026-06-30 12:45:00', 74, 84),
(390.00, '2026-06-30 13:00:00', 74, 85), (395.00, '2026-06-30 13:15:00', 74, 86), (400.00, '2026-06-30 13:30:00', 74, 87), (405.00, '2026-06-30 13:45:00', 74, 88), (410.00, '2026-06-30 14:00:00', 74, 89),

-- ==========================================
-- SUBASTA 75 (Base: 230.00 | Inicio: 2026-06-27 12:00:00 | Cierre: 2026-07-04 12:00:00)
-- Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(235.00, '2026-06-28 12:00:00', 75, 85), (240.00, '2026-06-28 12:15:00', 75, 86), (245.00, '2026-06-28 12:30:00', 75, 87), (250.00, '2026-06-28 12:45:00', 75, 88), (255.00, '2026-06-28 13:00:00', 75, 89),
(260.00, '2026-06-28 13:15:00', 75, 90), (265.00, '2026-06-28 13:30:00', 75, 91), (270.00, '2026-06-28 13:45:00', 75, 92), (275.00, '2026-06-28 14:00:00', 75, 93), (280.00, '2026-06-28 14:15:00', 75, 94),
(285.00, '2026-06-28 14:30:00', 75, 95), (290.00, '2026-06-28 14:45:00', 75, 96), (295.00, '2026-06-28 15:00:00', 75, 97), (300.00, '2026-06-28 15:15:00', 75, 98), (305.00, '2026-06-28 15:30:00', 75, 99),
(310.00, '2026-06-28 15:45:00', 75, 100), (315.00, '2026-06-28 16:00:00', 75, 101), (320.00, '2026-06-28 16:15:00', 75, 102), (325.00, '2026-06-28 16:30:00', 75, 103), (330.00, '2026-06-28 16:45:00', 75, 104),
-- Ronda 2
(335.00, '2026-06-29 12:00:00', 75, 85), (340.00, '2026-06-29 12:15:00', 75, 86), (345.00, '2026-06-29 12:30:00', 75, 87), (350.00, '2026-06-29 12:45:00', 75, 88), (355.00, '2026-06-29 13:00:00', 75, 89),
(360.00, '2026-06-29 13:15:00', 75, 90), (365.00, '2026-06-29 13:30:00', 75, 91), (370.00, '2026-06-29 13:45:00', 75, 92), (375.00, '2026-06-29 14:00:00', 75, 93), (380.00, '2026-06-29 14:15:00', 75, 94),
(385.00, '2026-06-29 14:30:00', 75, 95), (390.00, '2026-06-29 14:45:00', 75, 96), (395.00, '2026-06-29 15:00:00', 75, 97), (400.00, '2026-06-29 15:15:00', 75, 98), (405.00, '2026-06-29 15:30:00', 75, 99),
(410.00, '2026-06-29 15:45:00', 75, 100), (415.00, '2026-06-29 16:00:00', 75, 101), (420.00, '2026-06-29 16:15:00', 75, 102), (425.00, '2026-06-29 16:30:00', 75, 103), (430.00, '2026-06-29 16:45:00', 75, 104),
-- Ronda 3
(435.00, '2026-06-30 12:00:00', 75, 85), (440.00, '2026-06-30 12:15:00', 75, 86), (445.00, '2026-06-30 12:30:00', 75, 87), (450.00, '2026-06-30 12:45:00', 75, 88), (455.00, '2026-06-30 13:00:00', 75, 89),
(460.00, '2026-06-30 13:15:00', 75, 90), (465.00, '2026-06-30 13:30:00', 75, 91), (470.00, '2026-06-30 13:45:00', 75, 92), (475.00, '2026-06-30 14:00:00', 75, 93), (480.00, '2026-06-30 14:15:00', 75, 94),
(485.00, '2026-06-30 14:30:00', 75, 95), (490.00, '2026-06-30 14:45:00', 75, 96), (495.00, '2026-06-30 15:00:00', 75, 97), (500.00, '2026-06-30 15:15:00', 75, 98), (505.00, '2026-06-30 15:30:00', 75, 99),
(510.00, '2026-06-30 15:45:00', 75, 100), (515.00, '2026-06-30 16:00:00', 75, 101), (520.00, '2026-06-30 16:15:00', 75, 102), (525.00, '2026-06-30 16:30:00', 75, 103), (530.00, '2026-06-30 16:45:00', 75, 104),

-- ==========================================
-- SUBASTA 76 (Base: 240.00 | Inicio: 2026-06-27 16:30:00 | Cierre: 2026-07-02 16:30:00)
-- Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(245.00, '2026-06-28 16:30:00', 76, 10), (250.00, '2026-06-28 16:45:00', 76, 11), (255.00, '2026-06-28 17:00:00', 76, 12), (260.00, '2026-06-28 17:15:00', 76, 13), (265.00, '2026-06-28 17:30:00', 76, 14),
(270.00, '2026-06-28 17:45:00', 76, 15), (275.00, '2026-06-28 18:00:00', 76, 16), (280.00, '2026-06-28 18:15:00', 76, 17), (285.00, '2026-06-28 18:30:00', 76, 18), (290.00, '2026-06-28 18:45:00', 76, 19),
(295.00, '2026-06-28 19:00:00', 76, 20), (300.00, '2026-06-28 19:15:00', 76, 21), (305.00, '2026-06-28 19:30:00', 76, 22), (310.00, '2026-06-28 19:45:00', 76, 23), (315.00, '2026-06-28 20:00:00', 76, 24),
(320.00, '2026-06-28 20:15:00', 76, 25), (325.00, '2026-06-28 20:30:00', 76, 26), (330.00, '2026-06-28 20:45:00', 76, 27), (335.00, '2026-06-28 21:00:00', 76, 28), (340.00, '2026-06-28 21:15:00', 76, 29),
-- Ronda 2
(345.00, '2026-06-29 16:30:00', 76, 10), (350.00, '2026-06-29 16:45:00', 76, 11), (355.00, '2026-06-29 17:00:00', 76, 12), (360.00, '2026-06-29 17:15:00', 76, 13), (365.00, '2026-06-29 17:30:00', 76, 14),
(370.00, '2026-06-29 17:45:00', 76, 15), (375.00, '2026-06-29 18:00:00', 76, 16), (380.00, '2026-06-29 18:15:00', 76, 17), (385.00, '2026-06-29 18:30:00', 76, 18), (390.00, '2026-06-29 18:45:00', 76, 19),
(395.00, '2026-06-29 19:00:00', 76, 20), (400.00, '2026-06-29 19:15:00', 76, 21), (405.00, '2026-06-29 19:30:00', 76, 22), (410.00, '2026-06-29 19:45:00', 76, 23), (415.00, '2026-06-29 20:00:00', 76, 24),
(420.00, '2026-06-29 20:15:00', 76, 25), (425.00, '2026-06-29 20:30:00', 76, 26), (430.00, '2026-06-29 20:45:00', 76, 27), (435.00, '2026-06-29 21:00:00', 76, 28), (440.00, '2026-06-29 21:15:00', 76, 29),
-- Ronda 3
(445.00, '2026-06-30 16:30:00', 76, 10), (450.00, '2026-06-30 16:45:00', 76, 11), (455.00, '2026-06-30 17:00:00', 76, 12), (460.00, '2026-06-30 17:15:00', 76, 13), (465.00, '2026-06-30 17:30:00', 76, 14),
(470.00, '2026-06-30 17:45:00', 76, 15), (475.00, '2026-06-30 18:00:00', 76, 16), (480.00, '2026-06-30 18:15:00', 76, 17), (485.00, '2026-06-30 18:30:00', 76, 18), (490.00, '2026-06-30 18:45:00', 76, 19),
(495.00, '2026-06-30 19:00:00', 76, 20), (500.00, '2026-06-30 19:15:00', 76, 21), (505.00, '2026-06-30 19:30:00', 76, 22), (510.00, '2026-06-30 19:45:00', 76, 23), (515.00, '2026-06-30 20:00:00', 76, 24),
(520.00, '2026-06-30 20:15:00', 76, 25), (525.00, '2026-06-30 20:30:00', 76, 26), (530.00, '2026-06-30 20:45:00', 76, 27), (535.00, '2026-06-30 21:00:00', 76, 28), (540.00, '2026-06-30 21:15:00', 76, 29),

-- ==========================================
-- SUBASTA 77 (Base: 80.00 | Inicio: 2026-06-28 08:00:00 | Cierre: 2026-07-05 08:00:00)
-- Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(85.00, '2026-06-29 08:00:00', 77, 30), (90.00, '2026-06-29 08:15:00', 77, 31), (95.00, '2026-06-29 08:30:00', 77, 32), (100.00, '2026-06-29 08:45:00', 77, 33), (105.00, '2026-06-29 09:00:00', 77, 34),
(110.00, '2026-06-29 09:15:00', 77, 35), (115.00, '2026-06-29 09:30:00', 77, 36), (120.00, '2026-06-29 09:45:00', 77, 37), (125.00, '2026-06-29 10:00:00', 77, 38), (130.00, '2026-06-29 10:15:00', 77, 39),
(135.00, '2026-06-29 10:30:00', 77, 40), (140.00, '2026-06-29 10:45:00', 77, 41), (145.00, '2026-06-29 11:00:00', 77, 42), (150.00, '2026-06-29 11:15:00', 77, 43), (155.00, '2026-06-29 11:30:00', 77, 44),
(160.00, '2026-06-29 11:45:00', 77, 45), (165.00, '2026-06-29 12:00:00', 77, 46), (170.00, '2026-06-29 12:15:00', 77, 47), (175.00, '2026-06-29 12:30:00', 77, 48), (180.00, '2026-06-29 12:45:00', 77, 49),
-- Ronda 2
(185.00, '2026-06-30 08:00:00', 77, 30), (190.00, '2026-06-30 08:15:00', 77, 31), (195.00, '2026-06-30 08:30:00', 77, 32), (200.00, '2026-06-30 08:45:00', 77, 33), (205.00, '2026-06-30 09:00:00', 77, 34),
(210.00, '2026-06-30 09:15:00', 77, 35), (215.00, '2026-06-30 09:30:00', 77, 36), (220.00, '2026-06-30 09:45:00', 77, 37), (225.00, '2026-06-30 10:00:00', 77, 38), (230.00, '2026-06-30 10:15:00', 77, 39),
(235.00, '2026-06-30 10:30:00', 77, 40), (240.00, '2026-06-30 10:45:00', 77, 41), (245.00, '2026-06-30 11:00:00', 77, 42), (250.00, '2026-06-30 11:15:00', 77, 43), (255.00, '2026-06-30 11:30:00', 77, 44),
(260.00, '2026-06-30 11:45:00', 77, 45), (265.00, '2026-06-30 12:00:00', 77, 46), (270.00, '2026-06-30 12:15:00', 77, 47), (275.00, '2026-06-30 12:30:00', 77, 48), (280.00, '2026-06-30 12:45:00', 77, 49),
-- Ronda 3
(285.00, '2026-07-01 08:00:00', 77, 30), (290.00, '2026-07-01 08:15:00', 77, 31), (295.00, '2026-07-01 08:30:00', 77, 32), (300.00, '2026-07-01 08:45:00', 77, 33), (305.00, '2026-07-01 09:00:00', 77, 34),
(310.00, '2026-07-01 09:15:00', 77, 35), (315.00, '2026-07-01 09:30:00', 77, 36), (320.00, '2026-07-01 09:45:00', 77, 37), (325.00, '2026-07-01 10:00:00', 77, 38), (330.00, '2026-07-01 10:15:00', 77, 39),
(335.00, '2026-07-01 10:30:00', 77, 40), (340.00, '2026-07-01 10:45:00', 77, 41), (345.00, '2026-07-01 11:00:00', 77, 42), (350.00, '2026-07-01 11:15:00', 77, 43), (355.00, '2026-07-01 11:30:00', 77, 44),
(360.00, '2026-07-01 11:45:00', 77, 45), (365.00, '2026-07-01 12:00:00', 77, 46), (370.00, '2026-07-01 12:15:00', 77, 47), (375.00, '2026-07-01 12:30:00', 77, 48), (380.00, '2026-07-01 12:45:00', 77, 49),

-- ==========================================
-- SUBASTA 78 (Base: 110.00 | Inicio: 2026-06-28 11:00:00 | Cierre: 2026-07-03 11:00:00)
-- Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(115.00, '2026-06-29 11:00:00', 78, 50), (120.00, '2026-06-29 11:15:00', 78, 51), (125.00, '2026-06-29 11:30:00', 78, 52), (130.00, '2026-06-29 11:45:00', 78, 53), (135.00, '2026-06-29 12:00:00', 78, 54),
(140.00, '2026-06-29 12:15:00', 78, 55), (145.00, '2026-06-29 12:30:00', 78, 56), (150.00, '2026-06-29 12:45:00', 78, 57), (155.00, '2026-06-29 13:00:00', 78, 58), (160.00, '2026-06-29 13:15:00', 78, 59),
(165.00, '2026-06-29 13:30:00', 78, 60), (170.00, '2026-06-29 13:45:00', 78, 61), (175.00, '2026-06-29 14:00:00', 78, 62), (180.00, '2026-06-29 14:15:00', 78, 63), (185.00, '2026-06-29 14:30:00', 78, 64),
(190.00, '2026-06-29 14:45:00', 78, 65), (195.00, '2026-06-29 15:00:00', 78, 66), (200.00, '2026-06-29 15:15:00', 78, 67), (205.00, '2026-06-29 15:30:00', 78, 68), (210.00, '2026-06-29 15:45:00', 78, 69),
-- Ronda 2
(215.00, '2026-06-30 11:00:00', 78, 50), (220.00, '2026-06-30 11:15:00', 78, 51), (225.00, '2026-06-30 11:30:00', 78, 52), (230.00, '2026-06-30 11:45:00', 78, 53), (235.00, '2026-06-30 12:00:00', 78, 54),
(240.00, '2026-06-30 12:15:00', 78, 55), (245.00, '2026-06-30 12:30:00', 78, 56), (250.00, '2026-06-30 12:45:00', 78, 57), (255.00, '2026-06-30 13:00:00', 78, 58), (260.00, '2026-06-30 13:15:00', 78, 59),
(265.00, '2026-06-30 13:30:00', 78, 60), (270.00, '2026-06-30 13:45:00', 78, 61), (275.00, '2026-06-30 14:00:00', 78, 62), (280.00, '2026-06-30 14:15:00', 78, 63), (285.00, '2026-06-30 14:30:00', 78, 64),
(290.00, '2026-06-30 14:45:00', 78, 65), (295.00, '2026-06-30 15:00:00', 78, 66), (300.00, '2026-06-30 15:15:00', 78, 67), (305.00, '2026-06-30 15:30:00', 78, 68), (310.00, '2026-06-30 15:45:00', 78, 69),
-- Ronda 3
(315.00, '2026-07-01 11:00:00', 78, 50), (320.00, '2026-07-01 11:15:00', 78, 51), (325.00, '2026-07-01 11:30:00', 78, 52), (330.00, '2026-07-01 11:45:00', 78, 53), (335.00, '2026-07-01 12:00:00', 78, 54),
(340.00, '2026-07-01 12:15:00', 78, 55), (345.00, '2026-07-01 12:30:00', 78, 56), (350.00, '2026-07-01 12:45:00', 78, 57), (355.00, '2026-07-01 13:00:00', 78, 58), (360.00, '2026-07-01 13:15:00', 78, 59),
(365.00, '2026-07-01 13:30:00', 78, 60), (370.00, '2026-07-01 13:45:00', 78, 61), (375.00, '2026-07-01 14:00:00', 78, 62), (380.00, '2026-07-01 14:15:00', 78, 63), (385.00, '2026-07-01 14:30:00', 78, 64),
(390.00, '2026-07-01 14:45:00', 78, 65), (395.00, '2026-07-01 15:00:00', 78, 66), (400.00, '2026-07-01 15:15:00', 78, 67), (405.00, '2026-07-01 15:30:00', 78, 68), (410.00, '2026-07-01 15:45:00', 78, 69),

-- ==========================================
-- SUBASTA 79 (Base: 50.00 | Inicio: 2026-06-28 15:00:00 | Cierre: 2026-07-05 15:00:00)
-- Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(55.00, '2026-06-29 15:00:00', 79, 70), (60.00, '2026-06-29 15:15:00', 79, 71), (65.00, '2026-06-29 15:30:00', 79, 72), (70.00, '2026-06-29 15:45:00', 79, 73), (75.00, '2026-06-29 16:00:00', 79, 74),
(80.00, '2026-06-29 16:15:00', 79, 75), (85.00, '2026-06-29 16:30:00', 79, 76), (90.00, '2026-06-29 16:45:00', 79, 77), (95.00, '2026-06-29 17:00:00', 79, 78), (100.00, '2026-06-29 17:15:00', 79, 79),
(105.00, '2026-06-29 17:30:00', 79, 80), (110.00, '2026-06-29 17:45:00', 79, 81), (115.00, '2026-06-29 18:00:00', 79, 82), (120.00, '2026-06-29 18:15:00', 79, 83), (125.00, '2026-06-29 18:30:00', 79, 84),
(130.00, '2026-06-29 18:45:00', 79, 85), (135.00, '2026-06-29 19:00:00', 79, 86), (140.00, '2026-06-29 19:15:00', 79, 87), (145.00, '2026-06-29 19:30:00', 79, 88), (150.00, '2026-06-29 19:45:00', 79, 89),
-- Ronda 2
(155.00, '2026-06-30 15:00:00', 79, 70), (160.00, '2026-06-30 15:15:00', 79, 71), (165.00, '2026-06-30 15:30:00', 79, 72), (170.00, '2026-06-30 15:45:00', 79, 73), (175.00, '2026-06-30 16:00:00', 79, 74),
(180.00, '2026-06-30 16:15:00', 79, 75), (185.00, '2026-06-30 16:30:00', 79, 76), (190.00, '2026-06-30 16:45:00', 79, 77), (195.00, '2026-06-30 17:00:00', 79, 78), (200.00, '2026-06-30 17:15:00', 79, 79),
(205.00, '2026-06-30 17:30:00', 79, 80), (210.00, '2026-06-30 17:45:00', 79, 81), (215.00, '2026-06-30 18:00:00', 79, 82), (220.00, '2026-06-30 18:15:00', 79, 83), (225.00, '2026-06-30 18:30:00', 79, 84),
(230.00, '2026-06-30 18:45:00', 79, 85), (235.00, '2026-06-30 19:00:00', 79, 86), (240.00, '2026-06-30 19:15:00', 79, 87), (245.00, '2026-06-30 19:30:00', 79, 88), (250.00, '2026-06-30 19:45:00', 79, 89),
-- Ronda 3
(255.00, '2026-07-01 15:00:00', 79, 70), (260.00, '2026-07-01 15:15:00', 79, 71), (265.00, '2026-07-01 15:30:00', 79, 72), (270.00, '2026-07-01 15:45:00', 79, 73), (275.00, '2026-07-01 16:00:00', 79, 74),
(280.00, '2026-07-01 16:15:00', 79, 75), (285.00, '2026-07-01 16:30:00', 79, 76), (290.00, '2026-07-01 16:45:00', 79, 77), (295.00, '2026-07-01 17:00:00', 79, 78), (300.00, '2026-07-01 17:15:00', 79, 79),
(305.00, '2026-07-01 17:30:00', 79, 80), (310.00, '2026-07-01 17:45:00', 79, 81), (315.00, '2026-07-01 18:00:00', 79, 82), (320.00, '2026-07-01 18:15:00', 79, 83), (325.00, '2026-07-01 18:30:00', 79, 84),
(330.00, '2026-07-01 18:45:00', 79, 85), (335.00, '2026-07-01 19:00:00', 79, 86), (340.00, '2026-07-01 19:15:00', 79, 87), (345.00, '2026-07-01 19:30:00', 79, 88), (350.00, '2026-07-01 19:45:00', 79, 89),

-- ==========================================
-- SUBASTA 80 (Base: 180.00 | Inicio: 2026-06-29 10:15:00 | Cierre: 2026-07-04 10:15:00)
-- Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(185.00, '2026-06-30 10:15:00', 80, 85), (190.00, '2026-06-30 10:30:00', 80, 86), (195.00, '2026-06-30 10:45:00', 80, 87), (200.00, '2026-06-30 11:00:00', 80, 88), (205.00, '2026-06-30 11:15:00', 80, 89),
(210.00, '2026-06-30 11:30:00', 80, 90), (215.00, '2026-06-30 11:45:00', 80, 91), (220.00, '2026-06-30 12:00:00', 80, 92), (225.00, '2026-06-30 12:15:00', 80, 93), (230.00, '2026-06-30 12:30:00', 80, 94),
(235.00, '2026-06-30 12:45:00', 80, 95), (240.00, '2026-06-30 13:00:00', 80, 96), (245.00, '2026-06-30 13:15:00', 80, 97), (250.00, '2026-06-30 13:30:00', 80, 98), (255.00, '2026-06-30 13:45:00', 80, 99),
(260.00, '2026-06-30 14:00:00', 80, 100), (265.00, '2026-06-30 14:15:00', 80, 101), (270.00, '2026-06-30 14:30:00', 80, 102), (275.00, '2026-06-30 14:45:00', 80, 103), (280.00, '2026-06-30 15:00:00', 80, 104),
-- Ronda 2
(285.00, '2026-07-01 10:15:00', 80, 85), (290.00, '2026-07-01 10:30:00', 80, 86), (295.00, '2026-07-01 10:45:00', 80, 87), (300.00, '2026-07-01 11:00:00', 80, 88), (305.00, '2026-07-01 11:15:00', 80, 89),
(310.00, '2026-07-01 11:30:00', 80, 90), (315.00, '2026-07-01 11:45:00', 80, 91), (320.00, '2026-07-01 12:00:00', 80, 92), (325.00, '2026-07-01 12:15:00', 80, 93), (330.00, '2026-07-01 12:30:00', 80, 94),
(335.00, '2026-07-01 12:45:00', 80, 95), (340.00, '2026-07-01 13:00:00', 80, 96), (345.00, '2026-07-01 13:15:00', 80, 97), (350.00, '2026-07-01 13:30:00', 80, 98), (355.00, '2026-07-01 13:45:00', 80, 99),
(360.00, '2026-07-01 14:00:00', 80, 100), (365.00, '2026-07-01 14:15:00', 80, 101), (370.00, '2026-07-01 14:30:00', 80, 102), (375.00, '2026-07-01 14:45:00', 80, 103), (380.00, '2026-07-01 15:00:00', 80, 104),
-- Ronda 3
(385.00, '2026-07-02 10:15:00', 80, 85), (390.00, '2026-07-02 10:30:00', 80, 86), (395.00, '2026-07-02 10:45:00', 80, 87), (400.00, '2026-07-02 11:00:00', 80, 88), (405.00, '2026-07-02 11:15:00', 80, 89),
(410.00, '2026-07-02 11:30:00', 80, 90), (415.00, '2026-07-02 11:45:00', 80, 91), (420.00, '2026-07-02 12:00:00', 80, 92), (425.00, '2026-07-02 12:15:00', 80, 93), (430.00, '2026-07-02 12:30:00', 80, 94),
(435.00, '2026-07-02 12:45:00', 80, 95), (440.00, '2026-07-02 13:00:00', 80, 96), (445.00, '2026-07-02 13:15:00', 80, 97), (450.00, '2026-07-02 13:30:00', 80, 98), (455.00, '2026-07-02 13:45:00', 80, 99),
(460.00, '2026-07-02 14:00:00', 80, 100), (465.00, '2026-07-02 14:15:00', 80, 101), (470.00, '2026-07-02 14:30:00', 80, 102), (475.00, '2026-07-02 14:45:00', 80, 103), (480.00, '2026-07-02 15:00:00', 80, 104),

-- ==========================================
-- SUBASTA 81 (Base: 150.00 | Inicio: 2026-06-29 14:00:00 | Cierre: 2026-07-06 14:00:00)
-- Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(155.00, '2026-06-30 14:00:00', 81, 10), (160.00, '2026-06-30 14:15:00', 81, 11), (165.00, '2026-06-30 14:30:00', 81, 12), (170.00, '2026-06-30 14:45:00', 81, 13), (175.00, '2026-06-30 15:00:00', 81, 14),
(180.00, '2026-06-30 15:15:00', 81, 15), (185.00, '2026-06-30 15:30:00', 81, 16), (190.00, '2026-06-30 15:45:00', 81, 17), (195.00, '2026-06-30 16:00:00', 81, 18), (200.00, '2026-06-30 16:15:00', 81, 19),
(205.00, '2026-06-30 16:30:00', 81, 20), (210.00, '2026-06-30 16:45:00', 81, 21), (215.00, '2026-06-30 17:00:00', 81, 22), (220.00, '2026-06-30 17:15:00', 81, 23), (225.00, '2026-06-30 17:30:00', 81, 24),
(230.00, '2026-06-30 17:45:00', 81, 25), (235.00, '2026-06-30 18:00:00', 81, 26), (240.00, '2026-06-30 18:15:00', 81, 27), (245.00, '2026-06-30 18:30:00', 81, 28), (250.00, '2026-06-30 18:45:00', 81, 29),
-- Ronda 2
(255.00, '2026-07-01 14:00:00', 81, 10), (260.00, '2026-07-01 14:15:00', 81, 11), (265.00, '2026-07-01 14:30:00', 81, 12), (270.00, '2026-07-01 14:45:00', 81, 13), (275.00, '2026-07-01 15:00:00', 81, 14),
(280.00, '2026-07-01 15:15:00', 81, 15), (285.00, '2026-07-01 15:30:00', 81, 16), (290.00, '2026-07-01 15:45:00', 81, 17), (295.00, '2026-07-01 16:00:00', 81, 18), (300.00, '2026-07-01 16:15:00', 81, 19),
(305.00, '2026-07-01 16:30:00', 81, 20), (310.00, '2026-07-01 16:45:00', 81, 21), (315.00, '2026-07-01 17:00:00', 81, 22), (320.00, '2026-07-01 17:15:00', 81, 23), (325.00, '2026-07-01 17:30:00', 81, 24),
(330.00, '2026-07-01 17:45:00', 81, 25), (335.00, '2026-07-01 18:00:00', 81, 26), (340.00, '2026-07-01 18:15:00', 81, 27), (345.00, '2026-07-01 18:30:00', 81, 28), (350.00, '2026-07-01 18:45:00', 81, 29),
-- Ronda 3
(355.00, '2026-07-02 14:00:00', 81, 10), (360.00, '2026-07-02 14:15:00', 81, 11), (365.00, '2026-07-02 14:30:00', 81, 12), (370.00, '2026-07-02 14:45:00', 81, 13), (375.00, '2026-07-02 15:00:00', 81, 14),
(380.00, '2026-07-02 15:15:00', 81, 15), (385.00, '2026-07-02 15:30:00', 81, 16), (390.00, '2026-07-02 15:45:00', 81, 17), (395.00, '2026-07-02 16:00:00', 81, 18), (400.00, '2026-07-02 16:15:00', 81, 19),
(405.00, '2026-07-02 16:30:00', 81, 20), (410.00, '2026-07-02 16:45:00', 81, 21), (415.00, '2026-07-02 17:00:00', 81, 22), (420.00, '2026-07-02 17:15:00', 81, 23), (425.00, '2026-07-02 17:30:00', 81, 24),
(430.00, '2026-07-02 17:45:00', 81, 25), (435.00, '2026-07-02 18:00:00', 81, 26), (440.00, '2026-07-02 18:15:00', 81, 27), (445.00, '2026-07-02 18:30:00', 81, 28), (450.00, '2026-07-02 18:45:00', 81, 29),

-- ==========================================
-- SUBASTA 82 (Base: 260.00 | Inicio: 2026-06-29 18:30:00 | Cierre: 2026-07-04 18:30:00)
-- Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(265.00, '2026-06-30 18:30:00', 82, 30), (270.00, '2026-06-30 18:45:00', 82, 31), (275.00, '2026-06-30 19:00:00', 82, 32), (280.00, '2026-06-30 19:15:00', 82, 33), (285.00, '2026-06-30 19:30:00', 82, 34),
(290.00, '2026-06-30 19:45:00', 82, 35), (295.00, '2026-06-30 20:00:00', 82, 36), (300.00, '2026-06-30 20:15:00', 82, 37), (305.00, '2026-06-30 20:30:00', 82, 38), (310.00, '2026-06-30 20:45:00', 82, 39),
(315.00, '2026-06-30 21:00:00', 82, 40), (320.00, '2026-06-30 21:15:00', 82, 41), (325.00, '2026-06-30 21:30:00', 82, 42), (330.00, '2026-06-30 21:45:00', 82, 43), (335.00, '2026-06-30 22:00:00', 82, 44),
(340.00, '2026-06-30 22:15:00', 82, 45), (345.00, '2026-06-30 22:30:00', 82, 46), (350.00, '2026-06-30 22:45:00', 82, 47), (355.00, '2026-06-30 23:00:00', 82, 48), (360.00, '2026-06-30 23:15:00', 82, 49),
-- Ronda 2
(365.00, '2026-07-01 18:30:00', 82, 30), (370.00, '2026-07-01 18:45:00', 82, 31), (375.00, '2026-07-01 19:00:00', 82, 32), (380.00, '2026-07-01 19:15:00', 82, 33), (385.00, '2026-07-01 19:30:00', 82, 34),
(390.00, '2026-07-01 19:45:00', 82, 35), (395.00, '2026-07-01 20:00:00', 82, 36), (400.00, '2026-07-01 20:15:00', 82, 37), (405.00, '2026-07-01 20:30:00', 82, 38), (410.00, '2026-07-01 20:45:00', 82, 39),
(415.00, '2026-07-01 21:00:00', 82, 40), (420.00, '2026-07-01 21:15:00', 82, 41), (425.00, '2026-07-01 21:30:00', 82, 42), (430.00, '2026-07-01 21:45:00', 82, 43), (435.00, '2026-07-01 22:00:00', 82, 44),
(440.00, '2026-07-01 22:15:00', 82, 45), (445.00, '2026-07-01 22:30:00', 82, 46), (450.00, '2026-07-01 22:45:00', 82, 47), (455.00, '2026-07-01 23:00:00', 82, 48), (460.00, '2026-07-01 23:15:00', 82, 49),
-- Ronda 3
(465.00, '2026-07-02 18:30:00', 82, 30), (470.00, '2026-07-02 18:45:00', 82, 31), (475.00, '2026-07-02 19:00:00', 82, 32), (480.00, '2026-07-02 19:15:00', 82, 33), (485.00, '2026-07-02 19:30:00', 82, 34),
(490.00, '2026-07-02 19:45:00', 82, 35), (495.00, '2026-07-02 20:00:00', 82, 36), (500.00, '2026-07-02 20:15:00', 82, 37), (505.00, '2026-07-02 20:30:00', 82, 38), (510.00, '2026-07-02 20:45:00', 82, 39),
(515.00, '2026-07-02 21:00:00', 82, 40), (520.00, '2026-07-02 21:15:00', 82, 41), (525.00, '2026-07-02 21:30:00', 82, 42), (530.00, '2026-07-02 21:45:00', 82, 43), (535.00, '2026-07-02 22:00:00', 82, 44),
(540.00, '2026-07-02 22:15:00', 82, 45), (545.00, '2026-07-02 22:30:00', 82, 46), (550.00, '2026-07-02 22:45:00', 82, 47), (555.00, '2026-07-02 23:00:00', 82, 48), (560.00, '2026-07-02 23:15:00', 82, 49),

-- ==========================================
-- SUBASTA 83 (Base: 50.00 | Inicio: 2026-06-30 09:00:00 | Cierre: 2026-07-07 09:00:00)
-- Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(55.00, '2026-07-01 09:00:00', 83, 50), (60.00, '2026-07-01 09:15:00', 83, 51), (65.00, '2026-07-01 09:30:00', 83, 52), (70.00, '2026-07-01 09:45:00', 83, 53), (75.00, '2026-07-01 10:00:00', 83, 54),
(80.00, '2026-07-01 10:15:00', 83, 55), (85.00, '2026-07-01 10:30:00', 83, 56), (90.00, '2026-07-01 10:45:00', 83, 57), (95.00, '2026-07-01 11:00:00', 83, 58), (100.00, '2026-07-01 11:15:00', 83, 59),
(105.00, '2026-07-01 11:30:00', 83, 60), (110.00, '2026-07-01 11:45:00', 83, 61), (115.00, '2026-07-01 12:00:00', 83, 62), (120.00, '2026-07-01 12:15:00', 83, 63), (125.00, '2026-07-01 12:30:00', 83, 64),
(130.00, '2026-07-01 12:45:00', 83, 65), (135.00, '2026-07-01 13:00:00', 83, 66), (140.00, '2026-07-01 13:15:00', 83, 67), (145.00, '2026-07-01 13:30:00', 83, 68), (150.00, '2026-07-01 13:45:00', 83, 69),
-- Ronda 2
(155.00, '2026-07-02 09:00:00', 83, 50), (160.00, '2026-07-02 09:15:00', 83, 51), (165.00, '2026-07-02 09:30:00', 83, 52), (170.00, '2026-07-02 09:45:00', 83, 53), (175.00, '2026-07-02 10:00:00', 83, 54),
(180.00, '2026-07-02 10:15:00', 83, 55), (185.00, '2026-07-02 10:30:00', 83, 56), (190.00, '2026-07-02 10:45:00', 83, 57), (195.00, '2026-07-02 11:00:00', 83, 58), (200.00, '2026-07-02 11:15:00', 83, 59),
(205.00, '2026-07-02 11:30:00', 83, 60), (210.00, '2026-07-02 11:45:00', 83, 61), (215.00, '2026-07-02 12:00:00', 83, 62), (220.00, '2026-07-02 12:15:00', 83, 63), (225.00, '2026-07-02 12:30:00', 83, 64),
(230.00, '2026-07-02 12:45:00', 83, 65), (235.00, '2026-07-02 13:00:00', 83, 66), (240.00, '2026-07-02 13:15:00', 83, 67), (245.00, '2026-07-02 13:30:00', 83, 68), (250.00, '2026-07-02 13:45:00', 83, 69),
-- Ronda 3
(255.00, '2026-07-03 09:00:00', 83, 50), (260.00, '2026-07-03 09:15:00', 83, 51), (265.00, '2026-07-03 09:30:00', 83, 52), (270.00, '2026-07-03 09:45:00', 83, 53), (275.00, '2026-07-03 10:00:00', 83, 54),
(280.00, '2026-07-03 10:15:00', 83, 55), (285.00, '2026-07-03 10:30:00', 83, 56), (290.00, '2026-07-03 10:45:00', 83, 57), (295.00, '2026-07-03 11:00:00', 83, 58), (300.00, '2026-07-03 11:15:00', 83, 59),
(305.00, '2026-07-03 11:30:00', 83, 60), (310.00, '2026-07-03 11:45:00', 83, 61), (315.00, '2026-07-03 12:00:00', 83, 62), (320.00, '2026-07-03 12:15:00', 83, 63), (325.00, '2026-07-03 12:30:00', 83, 64),
(330.00, '2026-07-03 12:45:00', 83, 65), (335.00, '2026-07-03 13:00:00', 83, 66), (340.00, '2026-07-03 13:15:00', 83, 67), (345.00, '2026-07-03 13:30:00', 83, 68), (350.00, '2026-07-03 13:45:00', 83, 69),

-- ==========================================
-- SUBASTA 84 (Base: 170.00 | Inicio: 2026-06-30 12:00:00 | Cierre: 2026-07-05 12:00:00)
-- Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(175.00, '2026-07-01 12:00:00', 84, 70), (180.00, '2026-07-01 12:15:00', 84, 71), (185.00, '2026-07-01 12:30:00', 84, 72), (190.00, '2026-07-01 12:45:00', 84, 73), (195.00, '2026-07-01 13:00:00', 84, 74),
(200.00, '2026-07-01 13:15:00', 84, 75), (205.00, '2026-07-01 13:30:00', 84, 76), (210.00, '2026-07-01 13:45:00', 84, 77), (215.00, '2026-07-01 14:00:00', 84, 78), (220.00, '2026-07-01 14:15:00', 84, 79),
(225.00, '2026-07-01 14:30:00', 84, 80), (230.00, '2026-07-01 14:45:00', 84, 81), (235.00, '2026-07-01 15:00:00', 84, 82), (240.00, '2026-07-01 15:15:00', 84, 83), (245.00, '2026-07-01 15:30:00', 84, 84),
(250.00, '2026-07-01 15:45:00', 84, 85), (255.00, '2026-07-01 16:00:00', 84, 86), (260.00, '2026-07-01 16:15:00', 84, 87), (265.00, '2026-07-01 16:30:00', 84, 88), (270.00, '2026-07-01 16:45:00', 84, 89),
-- Ronda 2
(275.00, '2026-07-02 12:00:00', 84, 70), (280.00, '2026-07-02 12:15:00', 84, 71), (285.00, '2026-07-02 12:30:00', 84, 72), (290.00, '2026-07-02 12:45:00', 84, 73), (295.00, '2026-07-02 13:00:00', 84, 74),
(300.00, '2026-07-02 13:15:00', 84, 75), (305.00, '2026-07-02 13:30:00', 84, 76), (310.00, '2026-07-02 13:45:00', 84, 77), (315.00, '2026-07-02 14:00:00', 84, 78), (320.00, '2026-07-02 14:15:00', 84, 79),
(325.00, '2026-07-02 14:30:00', 84, 80), (330.00, '2026-07-02 14:45:00', 84, 81), (335.00, '2026-07-02 15:00:00', 84, 82), (340.00, '2026-07-02 15:15:00', 84, 83), (345.00, '2026-07-02 15:30:00', 84, 84),
(350.00, '2026-07-02 15:45:00', 84, 85), (355.00, '2026-07-02 16:00:00', 84, 86), (360.00, '2026-07-02 16:15:00', 84, 87), (365.00, '2026-07-02 16:30:00', 84, 88), (370.00, '2026-07-02 16:45:00', 84, 89),
-- Ronda 3
(375.00, '2026-07-03 12:00:00', 84, 70), (380.00, '2026-07-03 12:15:00', 84, 71), (385.00, '2026-07-03 12:30:00', 84, 72), (390.00, '2026-07-03 12:45:00', 84, 73), (395.00, '2026-07-03 13:00:00', 84, 74),
(400.00, '2026-07-03 13:15:00', 84, 75), (405.00, '2026-07-03 13:30:00', 84, 76), (410.00, '2026-07-03 13:45:00', 84, 77), (415.00, '2026-07-03 14:00:00', 84, 78), (420.00, '2026-07-03 14:15:00', 84, 79),
(425.00, '2026-07-03 14:30:00', 84, 80), (430.00, '2026-07-03 14:45:00', 84, 81), (435.00, '2026-07-03 15:00:00', 84, 82), (440.00, '2026-07-03 15:15:00', 84, 83), (445.00, '2026-07-03 15:30:00', 84, 84),
(450.00, '2026-07-03 15:45:00', 84, 85), (455.00, '2026-07-03 16:00:00', 84, 86), (460.00, '2026-07-03 16:15:00', 84, 87), (465.00, '2026-07-03 16:30:00', 84, 88), (470.00, '2026-07-03 16:45:00', 84, 89),

-- ==========================================
-- SUBASTA 85 (Base: 270.00 | Inicio: 2026-06-30 16:00:00 | Cierre: 2026-07-07 16:00:00)
-- Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(275.00, '2026-07-01 16:00:00', 85, 85), (280.00, '2026-07-01 16:15:00', 85, 86), (285.00, '2026-07-01 16:30:00', 85, 87), (290.00, '2026-07-01 16:45:00', 85, 88), (295.00, '2026-07-01 17:00:00', 85, 89),
(300.00, '2026-07-01 17:15:00', 85, 90), (305.00, '2026-07-01 17:30:00', 85, 91), (310.00, '2026-07-01 17:45:00', 85, 92), (315.00, '2026-07-01 18:00:00', 85, 93), (320.00, '2026-07-01 18:15:00', 85, 94),
(325.00, '2026-07-01 18:30:00', 85, 95), (330.00, '2026-07-01 18:45:00', 85, 96), (335.00, '2026-07-01 19:00:00', 85, 97), (340.00, '2026-07-01 19:15:00', 85, 98), (345.00, '2026-07-01 19:30:00', 85, 99),
(350.00, '2026-07-01 19:45:00', 85, 100), (355.00, '2026-07-01 20:00:00', 85, 101), (360.00, '2026-07-01 20:15:00', 85, 102), (365.00, '2026-07-01 20:30:00', 85, 103), (370.00, '2026-07-01 20:45:00', 85, 104),
-- Ronda 2
(375.00, '2026-07-02 16:00:00', 85, 85), (380.00, '2026-07-02 16:15:00', 85, 86), (385.00, '2026-07-02 16:30:00', 85, 87), (390.00, '2026-07-02 16:45:00', 85, 88), (395.00, '2026-07-02 17:00:00', 85, 89),
(400.00, '2026-07-02 17:15:00', 85, 90), (405.00, '2026-07-02 17:30:00', 85, 91), (410.00, '2026-07-02 17:45:00', 85, 92), (415.00, '2026-07-02 18:00:00', 85, 93), (420.00, '2026-07-02 18:15:00', 85, 94),
(425.00, '2026-07-02 18:30:00', 85, 95), (430.00, '2026-07-02 18:45:00', 85, 96), (435.00, '2026-07-02 19:00:00', 85, 97), (440.00, '2026-07-02 19:15:00', 85, 98), (445.00, '2026-07-02 19:30:00', 85, 99),
(450.00, '2026-07-02 19:45:00', 85, 100), (455.00, '2026-07-02 20:00:00', 85, 101), (460.00, '2026-07-02 20:15:00', 85, 102), (465.00, '2026-07-02 20:30:00', 85, 103), (470.00, '2026-07-02 20:45:00', 85, 104),
-- Ronda 3
(475.00, '2026-07-03 16:00:00', 85, 85), (480.00, '2026-07-03 16:15:00', 85, 86), (485.00, '2026-07-03 16:30:00', 85, 87), (490.00, '2026-07-03 16:45:00', 85, 88), (495.00, '2026-07-03 17:00:00', 85, 89),
(500.00, '2026-07-03 17:15:00', 85, 90), (505.00, '2026-07-03 17:30:00', 85, 91), (510.00, '2026-07-03 17:45:00', 85, 92), (515.00, '2026-07-03 18:00:00', 85, 93), (520.00, '2026-07-03 18:15:00', 85, 94),
(525.00, '2026-07-03 18:30:00', 85, 95), (530.00, '2026-07-03 18:45:00', 85, 96), (535.00, '2026-07-03 19:00:00', 85, 97), (540.00, '2026-07-03 19:15:00', 85, 98), (545.00, '2026-07-03 19:30:00', 85, 99),
(550.00, '2026-07-03 19:45:00', 85, 100), (555.00, '2026-07-03 20:00:00', 85, 101), (560.00, '2026-07-03 20:15:00', 85, 102), (565.00, '2026-07-03 20:30:00', 85, 103), (570.00, '2026-07-03 20:45:00', 85, 104),

-- ==========================================
-- SUBASTA 86 (Base: 190.00 | Inicio: 2026-07-01 10:00:00 | Cierre: 2026-07-06 10:00:00)
-- Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(195.00, '2026-07-02 10:00:00', 86, 10), (200.00, '2026-07-02 10:15:00', 86, 11), (205.00, '2026-07-02 10:30:00', 86, 12), (210.00, '2026-07-02 10:45:00', 86, 13), (215.00, '2026-07-02 11:00:00', 86, 14),
(220.00, '2026-07-02 11:15:00', 86, 15), (225.00, '2026-07-02 11:30:00', 86, 16), (230.00, '2026-07-02 11:45:00', 86, 17), (235.00, '2026-07-02 12:00:00', 86, 18), (240.00, '2026-07-02 12:15:00', 86, 19),
(245.00, '2026-07-02 12:30:00', 86, 20), (250.00, '2026-07-02 12:45:00', 86, 21), (255.00, '2026-07-02 13:00:00', 86, 22), (260.00, '2026-07-02 13:15:00', 86, 23), (265.00, '2026-07-02 13:30:00', 86, 24),
(270.00, '2026-07-02 13:45:00', 86, 25), (275.00, '2026-07-02 14:00:00', 86, 26), (280.00, '2026-07-02 14:15:00', 86, 27), (285.00, '2026-07-02 14:30:00', 86, 28), (290.00, '2026-07-02 14:45:00', 86, 29),
-- Ronda 2
(295.00, '2026-07-03 10:00:00', 86, 10), (300.00, '2026-07-03 10:15:00', 86, 11), (305.00, '2026-07-03 10:30:00', 86, 12), (310.00, '2026-07-03 10:45:00', 86, 13), (315.00, '2026-07-03 11:00:00', 86, 14),
(320.00, '2026-07-03 11:15:00', 86, 15), (325.00, '2026-07-03 11:30:00', 86, 16), (330.00, '2026-07-03 11:45:00', 86, 17), (335.00, '2026-07-03 12:00:00', 86, 18), (340.00, '2026-07-03 12:15:00', 86, 19),
(345.00, '2026-07-03 12:30:00', 86, 20), (350.00, '2026-07-03 12:45:00', 86, 21), (355.00, '2026-07-03 13:00:00', 86, 22), (360.00, '2026-07-03 13:15:00', 86, 23), (365.00, '2026-07-03 13:30:00', 86, 24),
(370.00, '2026-07-03 13:45:00', 86, 25), (375.00, '2026-07-03 14:00:00', 86, 26), (380.00, '2026-07-03 14:15:00', 86, 27), (385.00, '2026-07-03 14:30:00', 86, 28), (390.00, '2026-07-03 14:45:00', 86, 29),
-- Ronda 3
(395.00, '2026-07-04 10:00:00', 86, 10), (400.00, '2026-07-04 10:15:00', 86, 11), (405.00, '2026-07-04 10:30:00', 86, 12), (410.00, '2026-07-04 10:45:00', 86, 13), (415.00, '2026-07-04 11:00:00', 86, 14),
(420.00, '2026-07-04 11:15:00', 86, 15), (425.00, '2026-07-04 11:30:00', 86, 16), (430.00, '2026-07-04 11:45:00', 86, 17), (435.00, '2026-07-04 12:00:00', 86, 18), (440.00, '2026-07-04 12:15:00', 86, 19),
(445.00, '2026-07-04 12:30:00', 86, 20), (450.00, '2026-07-04 12:45:00', 86, 21), (455.00, '2026-07-04 13:00:00', 86, 22), (460.00, '2026-07-04 13:15:00', 86, 23), (465.00, '2026-07-04 13:30:00', 86, 24),
(470.00, '2026-07-04 13:45:00', 86, 25), (475.00, '2026-07-04 14:00:00', 86, 26), (480.00, '2026-07-04 14:15:00', 86, 27), (485.00, '2026-07-04 14:30:00', 86, 28), (490.00, '2026-07-04 14:45:00', 86, 29),

-- ==========================================
-- SUBASTA 87 (Base: 85.00 | Inicio: 2026-07-01 13:30:00 | Cierre: 2026-07-08 13:30:00)
-- Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(90.00, '2026-07-02 13:30:00', 87, 30), (95.00, '2026-07-02 13:45:00', 87, 31), (100.00, '2026-07-02 14:00:00', 87, 32), (105.00, '2026-07-02 14:15:00', 87, 33), (110.00, '2026-07-02 14:30:00', 87, 34),
(115.00, '2026-07-02 14:45:00', 87, 35), (120.00, '2026-07-02 15:00:00', 87, 36), (125.00, '2026-07-02 15:15:00', 87, 37), (130.00, '2026-07-02 15:30:00', 87, 38), (135.00, '2026-07-02 15:45:00', 87, 39),
(140.00, '2026-07-02 16:00:00', 87, 40), (145.00, '2026-07-02 16:15:00', 87, 41), (150.00, '2026-07-02 16:30:00', 87, 42), (155.00, '2026-07-02 16:45:00', 87, 43), (160.00, '2026-07-02 17:00:00', 87, 44),
(165.00, '2026-07-02 17:15:00', 87, 45), (170.00, '2026-07-02 17:30:00', 87, 46), (175.00, '2026-07-02 17:45:00', 87, 47), (180.00, '2026-07-02 18:00:00', 87, 48), (185.00, '2026-07-02 18:15:00', 87, 49),
-- Ronda 2
(190.00, '2026-07-03 13:30:00', 87, 30), (195.00, '2026-07-03 13:45:00', 87, 31), (200.00, '2026-07-03 14:00:00', 87, 32), (205.00, '2026-07-03 14:15:00', 87, 33), (210.00, '2026-07-03 14:30:00', 87, 34),
(215.00, '2026-07-03 14:45:00', 87, 35), (220.00, '2026-07-03 15:00:00', 87, 36), (225.00, '2026-07-03 15:15:00', 87, 37), (230.00, '2026-07-03 15:30:00', 87, 38), (235.00, '2026-07-03 15:45:00', 87, 39),
(240.00, '2026-07-03 16:00:00', 87, 40), (245.00, '2026-07-03 16:15:00', 87, 41), (250.00, '2026-07-03 16:30:00', 87, 42), (255.00, '2026-07-03 16:45:00', 87, 43), (260.00, '2026-07-03 17:00:00', 87, 44),
(265.00, '2026-07-03 17:15:00', 87, 45), (270.00, '2026-07-03 17:30:00', 87, 46), (275.00, '2026-07-03 17:45:00', 87, 47), (280.00, '2026-07-03 18:00:00', 87, 48), (285.00, '2026-07-03 18:15:00', 87, 49),
-- Ronda 3
(290.00, '2026-07-04 13:30:00', 87, 30), (295.00, '2026-07-04 13:45:00', 87, 31), (300.00, '2026-07-04 14:00:00', 87, 32), (305.00, '2026-07-04 14:15:00', 87, 33), (310.00, '2026-07-04 14:30:00', 87, 34),
(315.00, '2026-07-04 14:45:00', 87, 35), (320.00, '2026-07-04 15:00:00', 87, 36), (325.00, '2026-07-04 15:15:00', 87, 37), (330.00, '2026-07-04 15:30:00', 87, 38), (335.00, '2026-07-04 15:45:00', 87, 39),
(340.00, '2026-07-04 16:00:00', 87, 40), (345.00, '2026-07-04 16:15:00', 87, 41), (350.00, '2026-07-04 16:30:00', 87, 42), (355.00, '2026-07-04 16:45:00', 87, 43), (360.00, '2026-07-04 17:00:00', 87, 44),
(365.00, '2026-07-04 17:15:00', 87, 45), (370.00, '2026-07-04 17:30:00', 87, 46), (375.00, '2026-07-04 17:45:00', 87, 47), (380.00, '2026-07-04 18:00:00', 87, 48), (385.00, '2026-07-04 18:15:00', 87, 49),

-- ==========================================
-- SUBASTA 88 (Base: 110.00 | Inicio: 2026-07-01 17:00:00 | Cierre: 2026-07-06 17:00:00)
-- Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(115.00, '2026-07-02 17:00:00', 88, 50), (120.00, '2026-07-02 17:15:00', 88, 51), (125.00, '2026-07-02 17:30:00', 88, 52), (130.00, '2026-07-02 17:45:00', 88, 53), (135.00, '2026-07-02 18:00:00', 88, 54),
(140.00, '2026-07-02 18:15:00', 88, 55), (145.00, '2026-07-02 18:30:00', 88, 56), (150.00, '2026-07-02 18:45:00', 88, 57), (155.00, '2026-07-02 19:00:00', 88, 58), (160.00, '2026-07-02 19:15:00', 88, 59),
(165.00, '2026-07-02 19:30:00', 88, 60), (170.00, '2026-07-02 19:45:00', 88, 61), (175.00, '2026-07-02 20:00:00', 88, 62), (180.00, '2026-07-02 20:15:00', 88, 63), (185.00, '2026-07-02 20:30:00', 88, 64),
(190.00, '2026-07-02 20:45:00', 88, 65), (195.00, '2026-07-02 21:00:00', 88, 66), (200.00, '2026-07-02 21:15:00', 88, 67), (205.00, '2026-07-02 21:30:00', 88, 68), (210.00, '2026-07-02 21:45:00', 88, 69),
-- Ronda 2
(215.00, '2026-07-03 17:00:00', 88, 50), (220.00, '2026-07-03 17:15:00', 88, 51), (225.00, '2026-07-03 17:30:00', 88, 52), (230.00, '2026-07-03 17:45:00', 88, 53), (235.00, '2026-07-03 18:00:00', 88, 54),
(240.00, '2026-07-03 18:15:00', 88, 55), (245.00, '2026-07-03 18:30:00', 88, 56), (250.00, '2026-07-03 18:45:00', 88, 57), (255.00, '2026-07-03 19:00:00', 88, 58), (260.00, '2026-07-03 19:15:00', 88, 59),
(265.00, '2026-07-03 19:30:00', 88, 60), (270.00, '2026-07-03 19:45:00', 88, 61), (275.00, '2026-07-03 20:00:00', 88, 62), (280.00, '2026-07-03 20:15:00', 88, 63), (285.00, '2026-07-03 20:30:00', 88, 64),
(290.00, '2026-07-03 20:45:00', 88, 65), (295.00, '2026-07-03 21:00:00', 88, 66), (300.00, '2026-07-03 21:15:00', 88, 67), (305.00, '2026-07-03 21:30:00', 88, 68), (310.00, '2026-07-03 21:45:00', 88, 69),
-- Ronda 3
(315.00, '2026-07-04 17:00:00', 88, 50), (320.00, '2026-07-04 17:15:00', 88, 51), (325.00, '2026-07-04 17:30:00', 88, 52), (330.00, '2026-07-04 17:45:00', 88, 53), (335.00, '2026-07-04 18:00:00', 88, 54),
(340.00, '2026-07-04 18:15:00', 88, 55), (345.00, '2026-07-04 18:30:00', 88, 56), (350.00, '2026-07-04 18:45:00', 88, 57), (355.00, '2026-07-04 19:00:00', 88, 58), (360.00, '2026-07-04 19:15:00', 88, 59),
(365.00, '2026-07-04 19:30:00', 88, 60), (370.00, '2026-07-04 19:45:00', 88, 61), (375.00, '2026-07-04 20:00:00', 88, 62), (380.00, '2026-07-04 20:15:00', 88, 63), (385.00, '2026-07-04 20:30:00', 88, 64),
(390.00, '2026-07-04 20:45:00', 88, 65), (395.00, '2026-07-04 21:00:00', 88, 66), (400.00, '2026-07-04 21:15:00', 88, 67), (405.00, '2026-07-04 21:30:00', 88, 68), (410.00, '2026-07-04 21:45:00', 88, 69),

-- ==========================================
-- SUBASTA 89 (Base: 150.00 | Inicio: 2026-07-02 08:45:00 | Cierre: 2026-07-09 08:45:00)
-- Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(155.00, '2026-07-03 08:45:00', 89, 70), (160.00, '2026-07-03 09:00:00', 89, 71), (165.00, '2026-07-03 09:15:00', 89, 72), (170.00, '2026-07-03 09:30:00', 89, 73), (175.00, '2026-07-03 09:45:00', 89, 74),
(180.00, '2026-07-03 10:00:00', 89, 75), (185.00, '2026-07-03 10:15:00', 89, 76), (190.00, '2026-07-03 10:30:00', 89, 77), (195.00, '2026-07-03 10:45:00', 89, 78), (200.00, '2026-07-03 11:00:00', 89, 79),
(205.00, '2026-07-03 11:15:00', 89, 80), (210.00, '2026-07-03 11:30:00', 89, 81), (215.00, '2026-07-03 11:45:00', 89, 82), (220.00, '2026-07-03 12:00:00', 89, 83), (225.00, '2026-07-03 12:15:00', 89, 84),
(230.00, '2026-07-03 12:30:00', 89, 85), (235.00, '2026-07-03 12:45:00', 89, 86), (240.00, '2026-07-03 13:00:00', 89, 87), (245.00, '2026-07-03 13:15:00', 89, 88), (250.00, '2026-07-03 13:30:00', 89, 89),
-- Ronda 2
(255.00, '2026-07-04 08:45:00', 89, 70), (260.00, '2026-07-04 09:00:00', 89, 71), (265.00, '2026-07-04 09:15:00', 89, 72), (270.00, '2026-07-04 09:30:00', 89, 73), (275.00, '2026-07-04 09:45:00', 89, 74),
(280.00, '2026-07-04 10:00:00', 89, 75), (285.00, '2026-07-04 10:15:00', 89, 76), (290.00, '2026-07-04 10:30:00', 89, 77), (295.00, '2026-07-04 10:45:00', 89, 78), (300.00, '2026-07-04 11:00:00', 89, 79),
(305.00, '2026-07-04 11:15:00', 89, 80), (310.00, '2026-07-04 11:30:00', 89, 81), (315.00, '2026-07-04 11:45:00', 89, 82), (320.00, '2026-07-04 12:00:00', 89, 83), (325.00, '2026-07-04 12:15:00', 89, 84),
(330.00, '2026-07-04 12:30:00', 89, 85), (335.00, '2026-07-04 12:45:00', 89, 86), (340.00, '2026-07-04 13:00:00', 89, 87), (345.00, '2026-07-04 13:15:00', 89, 88), (350.00, '2026-07-04 13:30:00', 89, 89),
-- Ronda 3
(355.00, '2026-07-05 08:45:00', 89, 70), (360.00, '2026-07-05 09:00:00', 89, 71), (365.00, '2026-07-05 09:15:00', 89, 72), (370.00, '2026-07-05 09:30:00', 89, 73), (375.00, '2026-07-05 09:45:00', 89, 74),
(380.00, '2026-07-05 10:00:00', 89, 75), (385.00, '2026-07-05 10:15:00', 89, 76), (390.00, '2026-07-05 10:30:00', 89, 77), (395.00, '2026-07-05 10:45:00', 89, 78), (400.00, '2026-07-05 11:00:00', 89, 79),
(405.00, '2026-07-05 11:15:00', 89, 80), (410.00, '2026-07-05 11:30:00', 89, 81), (415.00, '2026-07-05 11:45:00', 89, 82), (420.00, '2026-07-05 12:00:00', 89, 83), (425.00, '2026-07-05 12:15:00', 89, 84),
(430.00, '2026-07-05 12:30:00', 89, 85), (435.00, '2026-07-05 12:45:00', 89, 86), (440.00, '2026-07-05 13:00:00', 89, 87), (445.00, '2026-07-05 13:15:00', 89, 88), (450.00, '2026-07-05 13:30:00', 89, 89),

-- ==========================================
-- SUBASTA 90 (Base: 40.00 | Inicio: 2026-07-02 11:00:00 | Cierre: 2026-07-07 11:00:00)
-- Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(45.00, '2026-07-03 11:00:00', 90, 85), (50.00, '2026-07-03 11:15:00', 90, 86), (55.00, '2026-07-03 11:30:00', 90, 87), (60.00, '2026-07-03 11:45:00', 90, 88), (65.00, '2026-07-03 12:00:00', 90, 89),
(70.00, '2026-07-03 12:15:00', 90, 90), (75.00, '2026-07-03 12:30:00', 90, 91), (80.00, '2026-07-03 12:45:00', 90, 92), (85.00, '2026-07-03 13:00:00', 90, 93), (90.00, '2026-07-03 13:15:00', 90, 94),
(95.00, '2026-07-03 13:30:00', 90, 95), (100.00, '2026-07-03 13:45:00', 90, 96), (105.00, '2026-07-03 14:00:00', 90, 97), (110.00, '2026-07-03 14:15:00', 90, 98), (115.00, '2026-07-03 14:30:00', 90, 99),
(120.00, '2026-07-03 14:45:00', 90, 100), (125.00, '2026-07-03 15:00:00', 90, 101), (130.00, '2026-07-03 15:15:00', 90, 102), (135.00, '2026-07-03 15:30:00', 90, 103), (140.00, '2026-07-03 15:45:00', 90, 104),
-- Ronda 2
(145.00, '2026-07-04 11:00:00', 90, 85), (150.00, '2026-07-04 11:15:00', 90, 86), (155.00, '2026-07-04 11:30:00', 90, 87), (160.00, '2026-07-04 11:45:00', 90, 88), (165.00, '2026-07-04 12:00:00', 90, 89),
(170.00, '2026-07-04 12:15:00', 90, 90), (175.00, '2026-07-04 12:30:00', 90, 91), (180.00, '2026-07-04 12:45:00', 90, 92), (185.00, '2026-07-04 13:00:00', 90, 93), (190.00, '2026-07-04 13:15:00', 90, 94),
(195.00, '2026-07-04 13:30:00', 90, 95), (200.00, '2026-07-04 13:45:00', 90, 96), (205.00, '2026-07-04 14:00:00', 90, 97), (210.00, '2026-07-04 14:15:00', 90, 98), (215.00, '2026-07-04 14:30:00', 90, 99),
(220.00, '2026-07-04 14:45:00', 90, 100), (225.00, '2026-07-04 15:00:00', 90, 101), (230.00, '2026-07-04 15:15:00', 90, 102), (235.00, '2026-07-04 15:30:00', 90, 103), (240.00, '2026-07-04 15:45:00', 90, 104),
-- Ronda 3
(245.00, '2026-07-05 11:00:00', 90, 85), (250.00, '2026-07-05 11:15:00', 90, 86), (255.00, '2026-07-05 11:30:00', 90, 87), (260.00, '2026-07-05 11:45:00', 90, 88), (265.00, '2026-07-05 12:00:00', 90, 89),
(270.00, '2026-07-05 12:15:00', 90, 90), (275.00, '2026-07-05 12:30:00', 90, 91), (280.00, '2026-07-05 12:45:00', 90, 92), (285.00, '2026-07-05 13:00:00', 90, 93), (290.00, '2026-07-05 13:15:00', 90, 94),
(295.00, '2026-07-05 13:30:00', 90, 95), (300.00, '2026-07-05 13:45:00', 90, 96), (305.00, '2026-07-05 14:00:00', 90, 97), (310.00, '2026-07-05 14:15:00', 90, 98), (315.00, '2026-07-05 14:30:00', 90, 99),
(320.00, '2026-07-05 14:45:00', 90, 100), (325.00, '2026-07-05 15:00:00', 90, 101), (330.00, '2026-07-05 15:15:00', 90, 102), (335.00, '2026-07-05 15:30:00', 90, 103), (340.00, '2026-07-05 15:45:00', 90, 104),

-- ==========================================
-- SUBASTA 91 (Base: 160.00 | Inicio: 2026-07-02 15:15:00 | Cierre: 2026-07-09 15:15:00)
-- Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(165.00, '2026-07-03 15:15:00', 91, 10), (170.00, '2026-07-03 15:30:00', 91, 11), (175.00, '2026-07-03 15:45:00', 91, 12), (180.00, '2026-07-03 16:00:00', 91, 13), (185.00, '2026-07-03 16:15:00', 91, 14),
(190.00, '2026-07-03 16:30:00', 91, 15), (195.00, '2026-07-03 16:45:00', 91, 16), (200.00, '2026-07-03 17:00:00', 91, 17), (205.00, '2026-07-03 17:15:00', 91, 18), (210.00, '2026-07-03 17:30:00', 91, 19),
(215.00, '2026-07-03 17:45:00', 91, 20), (220.00, '2026-07-03 18:00:00', 91, 21), (225.00, '2026-07-03 18:15:00', 91, 22), (230.00, '2026-07-03 18:30:00', 91, 23), (235.00, '2026-07-03 18:45:00', 91, 24),
(240.00, '2026-07-03 19:00:00', 91, 25), (245.00, '2026-07-03 19:15:00', 91, 26), (250.00, '2026-07-03 19:30:00', 91, 27), (255.00, '2026-07-03 19:45:00', 91, 28), (260.00, '2026-07-03 20:00:00', 91, 29),
-- Ronda 2
(265.00, '2026-07-04 15:15:00', 91, 10), (270.00, '2026-07-04 15:30:00', 91, 11), (275.00, '2026-07-04 15:45:00', 91, 12), (280.00, '2026-07-04 16:00:00', 91, 13), (285.00, '2026-07-04 16:15:00', 91, 14),
(290.00, '2026-07-04 16:30:00', 91, 15), (295.00, '2026-07-04 16:45:00', 91, 16), (300.00, '2026-07-04 17:00:00', 91, 17), (305.00, '2026-07-04 17:15:00', 91, 18), (310.00, '2026-07-04 17:30:00', 91, 19),
(315.00, '2026-07-04 17:45:00', 91, 20), (320.00, '2026-07-04 18:00:00', 91, 21), (325.00, '2026-07-04 18:15:00', 91, 22), (330.00, '2026-07-04 18:30:00', 91, 23), (335.00, '2026-07-04 18:45:00', 91, 24),
(340.00, '2026-07-04 19:00:00', 91, 25), (345.00, '2026-07-04 19:15:00', 91, 26), (350.00, '2026-07-04 19:30:00', 91, 27), (355.00, '2026-07-04 19:45:00', 91, 28), (360.00, '2026-07-04 20:00:00', 91, 29),
-- Ronda 3
(365.00, '2026-07-05 15:15:00', 91, 10), (370.00, '2026-07-05 15:30:00', 91, 11), (375.00, '2026-07-05 15:45:00', 91, 12), (380.00, '2026-07-05 16:00:00', 91, 13), (385.00, '2026-07-05 16:15:00', 91, 14),
(390.00, '2026-07-05 16:30:00', 91, 15), (395.00, '2026-07-05 16:45:00', 91, 16), (400.00, '2026-07-05 17:00:00', 91, 17), (405.00, '2026-07-05 17:15:00', 91, 18), (410.00, '2026-07-05 17:30:00', 91, 19),
(415.00, '2026-07-05 17:45:00', 91, 20), (420.00, '2026-07-05 18:00:00', 91, 21), (425.00, '2026-07-05 18:15:00', 91, 22), (430.00, '2026-07-05 18:30:00', 91, 23), (435.00, '2026-07-05 18:45:00', 91, 24),
(440.00, '2026-07-05 19:00:00', 91, 25), (445.00, '2026-07-05 19:15:00', 91, 26), (450.00, '2026-07-05 19:30:00', 91, 27), (455.00, '2026-07-05 19:45:00', 91, 28), (460.00, '2026-07-05 20:00:00', 91, 29),

-- ==========================================
-- SUBASTA 92 (Base: 70.00 | Inicio: 2026-07-03 09:00:00 | Cierre: 2026-07-08 09:00:00)
-- Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(75.00, '2026-07-04 09:00:00', 92, 30), (80.00, '2026-07-04 09:15:00', 92, 31), (85.00, '2026-07-04 09:30:00', 92, 32), (90.00, '2026-07-04 09:45:00', 92, 33), (95.00, '2026-07-04 10:00:00', 92, 34),
(100.00, '2026-07-04 10:15:00', 92, 35), (105.00, '2026-07-04 10:30:00', 92, 36), (110.00, '2026-07-04 10:45:00', 92, 37), (115.00, '2026-07-04 11:00:00', 92, 38), (120.00, '2026-07-04 11:15:00', 92, 39),
(125.00, '2026-07-04 11:30:00', 92, 40), (130.00, '2026-07-04 11:45:00', 92, 41), (135.00, '2026-07-04 12:00:00', 92, 42), (140.00, '2026-07-04 12:15:00', 92, 43), (145.00, '2026-07-04 12:30:00', 92, 44),
(150.00, '2026-07-04 12:45:00', 92, 45), (155.00, '2026-07-04 13:00:00', 92, 46), (160.00, '2026-07-04 13:15:00', 92, 47), (165.00, '2026-07-04 13:30:00', 92, 48), (170.00, '2026-07-04 13:45:00', 92, 49),
-- Ronda 2
(175.00, '2026-07-05 09:00:00', 92, 30), (180.00, '2026-07-05 09:15:00', 92, 31), (185.00, '2026-07-05 09:30:00', 92, 32), (190.00, '2026-07-05 09:45:00', 92, 33), (195.00, '2026-07-05 10:00:00', 92, 34),
(200.00, '2026-07-05 10:15:00', 92, 35), (205.00, '2026-07-05 10:30:00', 92, 36), (210.00, '2026-07-05 10:45:00', 92, 37), (215.00, '2026-07-05 11:00:00', 92, 38), (220.00, '2026-07-05 11:15:00', 92, 39),
(225.00, '2026-07-05 11:30:00', 92, 40), (230.00, '2026-07-05 11:45:00', 92, 41), (235.00, '2026-07-05 12:00:00', 92, 42), (240.00, '2026-07-05 12:15:00', 92, 43), (245.00, '2026-07-05 12:30:00', 92, 44),
(250.00, '2026-07-05 12:45:00', 92, 45), (255.00, '2026-07-05 13:00:00', 92, 46), (260.00, '2026-07-05 13:15:00', 92, 47), (265.00, '2026-07-05 13:30:00', 92, 48), (270.00, '2026-07-05 13:45:00', 92, 49),
-- Ronda 3
(275.00, '2026-07-06 09:00:00', 92, 30), (280.00, '2026-07-06 09:15:00', 92, 31), (285.00, '2026-07-06 09:30:00', 92, 32), (290.00, '2026-07-06 09:45:00', 92, 33), (295.00, '2026-07-06 10:00:00', 92, 34),
(300.00, '2026-07-06 10:15:00', 92, 35), (305.00, '2026-07-06 10:30:00', 92, 36), (310.00, '2026-07-06 10:45:00', 92, 37), (315.00, '2026-07-06 11:00:00', 92, 38), (320.00, '2026-07-06 11:15:00', 92, 39),
(325.00, '2026-07-06 11:30:00', 92, 40), (330.00, '2026-07-06 11:45:00', 92, 41), (335.00, '2026-07-06 12:00:00', 92, 42), (340.00, '2026-07-06 12:15:00', 92, 43), (345.00, '2026-07-06 12:30:00', 92, 44),
(350.00, '2026-07-06 12:45:00', 92, 45), (355.00, '2026-07-06 13:00:00', 92, 46), (360.00, '2026-07-06 13:15:00', 92, 47), (365.00, '2026-07-06 13:30:00', 92, 48), (370.00, '2026-07-06 13:45:00', 92, 49),

-- ==========================================
-- SUBASTA 93 (Base: 190.00 | Inicio: 2026-07-03 13:00:00 | Cierre: 2026-07-10 13:00:00)
-- Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(195.00, '2026-07-04 13:00:00', 93, 50), (200.00, '2026-07-04 13:15:00', 93, 51), (205.00, '2026-07-04 13:30:00', 93, 52), (210.00, '2026-07-04 13:45:00', 93, 53), (215.00, '2026-07-04 14:00:00', 93, 54),
(220.00, '2026-07-04 14:15:00', 93, 55), (225.00, '2026-07-04 14:30:00', 93, 56), (230.00, '2026-07-04 14:45:00', 93, 57), (235.00, '2026-07-04 15:00:00', 93, 58), (240.00, '2026-07-04 15:15:00', 93, 59),
(245.00, '2026-07-04 15:30:00', 93, 60), (250.00, '2026-07-04 15:45:00', 93, 61), (255.00, '2026-07-04 16:00:00', 93, 62), (260.00, '2026-07-04 16:15:00', 93, 63), (265.00, '2026-07-04 16:30:00', 93, 64),
(270.00, '2026-07-04 16:45:00', 93, 65), (275.00, '2026-07-04 17:00:00', 93, 66), (280.00, '2026-07-04 17:15:00', 93, 67), (285.00, '2026-07-04 17:30:00', 93, 68), (290.00, '2026-07-04 17:45:00', 93, 69),
-- Ronda 2
(295.00, '2026-07-05 13:00:00', 93, 50), (300.00, '2026-07-05 13:15:00', 93, 51), (305.00, '2026-07-05 13:30:00', 93, 52), (310.00, '2026-07-05 13:45:00', 93, 53), (315.00, '2026-07-05 14:00:00', 93, 54),
(320.00, '2026-07-05 14:15:00', 93, 55), (325.00, '2026-07-05 14:30:00', 93, 56), (330.00, '2026-07-05 14:45:00', 93, 57), (335.00, '2026-07-05 15:00:00', 93, 58), (340.00, '2026-07-05 15:15:00', 93, 59),
(345.00, '2026-07-05 15:30:00', 93, 60), (350.00, '2026-07-05 15:45:00', 93, 61), (355.00, '2026-07-05 16:00:00', 93, 62), (360.00, '2026-07-05 16:15:00', 93, 63), (365.00, '2026-07-05 16:30:00', 93, 64),
(370.00, '2026-07-05 16:45:00', 93, 65), (375.00, '2026-07-05 17:00:00', 93, 66), (380.00, '2026-07-05 17:15:00', 93, 67), (385.00, '2026-07-05 17:30:00', 93, 68), (390.00, '2026-07-05 17:45:00', 93, 69),
-- Ronda 3
(395.00, '2026-07-06 13:00:00', 93, 50), (400.00, '2026-07-06 13:15:00', 93, 51), (405.00, '2026-07-06 13:30:00', 93, 52), (410.00, '2026-07-06 13:45:00', 93, 53), (415.00, '2026-07-06 14:00:00', 93, 54),
(420.00, '2026-07-06 14:15:00', 93, 55), (425.00, '2026-07-06 14:30:00', 93, 56), (430.00, '2026-07-06 14:45:00', 93, 57), (435.00, '2026-07-06 15:00:00', 93, 58), (440.00, '2026-07-06 15:15:00', 93, 59),
(445.00, '2026-07-06 15:30:00', 93, 60), (450.00, '2026-07-06 15:45:00', 93, 61), (455.00, '2026-07-06 16:00:00', 93, 62), (460.00, '2026-07-06 16:15:00', 93, 63), (465.00, '2026-07-06 16:30:00', 93, 64),
(470.00, '2026-07-06 16:45:00', 93, 65), (475.00, '2026-07-06 17:00:00', 93, 66), (480.00, '2026-07-06 17:15:00', 93, 67), (485.00, '2026-07-06 17:30:00', 93, 68), (490.00, '2026-07-06 17:45:00', 93, 69),

-- ==========================================
-- SUBASTA 94 (Base: 65.00 | Inicio: 2026-07-03 17:45:00 | Cierre: 2026-07-08 17:45:00)
-- Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(70.00, '2026-07-04 17:45:00', 94, 70), (75.00, '2026-07-04 18:00:00', 94, 71), (80.00, '2026-07-04 18:15:00', 94, 72), (85.00, '2026-07-04 18:30:00', 94, 73), (90.00, '2026-07-04 18:45:00', 94, 74),
(95.00, '2026-07-04 19:00:00', 94, 75), (100.00, '2026-07-04 19:15:00', 94, 76), (105.00, '2026-07-04 19:30:00', 94, 77), (110.00, '2026-07-04 19:45:00', 94, 78), (115.00, '2026-07-04 20:00:00', 94, 79),
(120.00, '2026-07-04 20:15:00', 94, 80), (125.00, '2026-07-04 20:30:00', 94, 81), (130.00, '2026-07-04 20:45:00', 94, 82), (135.00, '2026-07-04 21:00:00', 94, 83), (140.00, '2026-07-04 21:15:00', 94, 84),
(145.00, '2026-07-04 21:30:00', 94, 85), (150.00, '2026-07-04 21:45:00', 94, 86), (155.00, '2026-07-04 22:00:00', 94, 87), (160.00, '2026-07-04 22:15:00', 94, 88), (165.00, '2026-07-04 22:30:00', 94, 89),
-- Ronda 2
(170.00, '2026-07-05 17:45:00', 94, 70), (175.00, '2026-07-05 18:00:00', 94, 71), (180.00, '2026-07-05 18:15:00', 94, 72), (185.00, '2026-07-05 18:30:00', 94, 73), (190.00, '2026-07-05 18:45:00', 94, 74),
(195.00, '2026-07-05 19:00:00', 94, 75), (200.00, '2026-07-05 19:15:00', 94, 76), (205.00, '2026-07-05 19:30:00', 94, 77), (210.00, '2026-07-05 19:45:00', 94, 78), (215.00, '2026-07-05 20:00:00', 94, 79),
(220.00, '2026-07-05 20:15:00', 94, 80), (225.00, '2026-07-05 20:30:00', 94, 81), (230.00, '2026-07-05 20:45:00', 94, 82), (235.00, '2026-07-05 21:00:00', 94, 83), (240.00, '2026-07-05 21:15:00', 94, 84),
(245.00, '2026-07-05 21:30:00', 94, 85), (250.00, '2026-07-05 21:45:00', 94, 86), (255.00, '2026-07-05 22:00:00', 94, 87), (260.00, '2026-07-05 22:15:00', 94, 88), (265.00, '2026-07-05 22:30:00', 94, 89),
-- Ronda 3
(270.00, '2026-07-06 17:45:00', 94, 70), (275.00, '2026-07-06 18:00:00', 94, 71), (280.00, '2026-07-06 18:15:00', 94, 72), (285.00, '2026-07-06 18:30:00', 94, 73), (290.00, '2026-07-06 18:45:00', 94, 74),
(295.00, '2026-07-06 19:00:00', 94, 75), (300.00, '2026-07-06 19:15:00', 94, 76), (305.00, '2026-07-06 19:30:00', 94, 77), (310.00, '2026-07-06 19:45:00', 94, 78), (315.00, '2026-07-06 20:00:00', 94, 79),
(320.00, '2026-07-06 20:15:00', 94, 80), (325.00, '2026-07-06 20:30:00', 94, 81), (330.00, '2026-07-06 20:45:00', 94, 82), (335.00, '2026-07-06 21:00:00', 94, 83), (340.00, '2026-07-06 21:15:00', 94, 84),
(345.00, '2026-07-06 21:30:00', 94, 85), (350.00, '2026-07-06 21:45:00', 94, 86), (355.00, '2026-07-06 22:00:00', 94, 87), (360.00, '2026-07-06 22:15:00', 94, 88), (365.00, '2026-07-06 22:30:00', 94, 89),

-- ==========================================
-- SUBASTA 95 (Base: 180.00 | Inicio: 2026-07-04 10:00:00 | Cierre: 2026-07-11 10:00:00)
-- Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(185.00, '2026-07-05 10:00:00', 95, 85), (190.00, '2026-07-05 10:15:00', 95, 86), (195.00, '2026-07-05 10:30:00', 95, 87), (200.00, '2026-07-05 10:45:00', 95, 88), (205.00, '2026-07-05 11:00:00', 95, 89),
(210.00, '2026-07-05 11:15:00', 95, 90), (215.00, '2026-07-05 11:30:00', 95, 91), (220.00, '2026-07-05 11:45:00', 95, 92), (225.00, '2026-07-05 12:00:00', 95, 93), (230.00, '2026-07-05 12:15:00', 95, 94),
(235.00, '2026-07-05 12:30:00', 95, 95), (240.00, '2026-07-05 12:45:00', 95, 96), (245.00, '2026-07-05 13:00:00', 95, 97), (250.00, '2026-07-05 13:15:00', 95, 98), (255.00, '2026-07-05 13:30:00', 95, 99),
(260.00, '2026-07-05 13:45:00', 95, 100), (265.00, '2026-07-05 14:00:00', 95, 101), (270.00, '2026-07-05 14:15:00', 95, 102), (275.00, '2026-07-05 14:30:00', 95, 103), (280.00, '2026-07-05 14:45:00', 95, 104),
-- Ronda 2
(285.00, '2026-07-06 10:00:00', 95, 85), (290.00, '2026-07-06 10:15:00', 95, 86), (295.00, '2026-07-06 10:30:00', 95, 87), (300.00, '2026-07-06 10:45:00', 95, 88), (305.00, '2026-07-06 11:00:00', 95, 89),
(310.00, '2026-07-06 11:15:00', 95, 90), (315.00, '2026-07-06 11:30:00', 95, 91), (320.00, '2026-07-06 11:45:00', 95, 92), (325.00, '2026-07-06 12:00:00', 95, 93), (330.00, '2026-07-06 12:15:00', 95, 94),
(335.00, '2026-07-06 12:30:00', 95, 95), (340.00, '2026-07-06 12:45:00', 95, 96), (345.00, '2026-07-06 13:00:00', 95, 97), (350.00, '2026-07-06 13:15:00', 95, 98), (355.00, '2026-07-06 13:30:00', 95, 99),
(360.00, '2026-07-06 13:45:00', 95, 100), (365.00, '2026-07-06 14:00:00', 95, 101), (370.00, '2026-07-06 14:15:00', 95, 102), (375.00, '2026-07-06 14:30:00', 95, 103), (380.00, '2026-07-06 14:45:00', 95, 104),
-- Ronda 3
(385.00, '2026-07-07 10:00:00', 95, 85), (390.00, '2026-07-07 10:15:00', 95, 86), (395.00, '2026-07-07 10:30:00', 95, 87), (400.00, '2026-07-07 10:45:00', 95, 88), (405.00, '2026-07-07 11:00:00', 95, 89),
(410.00, '2026-07-07 11:15:00', 95, 90), (415.00, '2026-07-07 11:30:00', 95, 91), (420.00, '2026-07-07 11:45:00', 95, 92), (425.00, '2026-07-07 12:00:00', 95, 93), (430.00, '2026-07-07 12:15:00', 95, 94),
(435.00, '2026-07-07 12:30:00', 95, 95), (440.00, '2026-07-07 12:45:00', 95, 96), (445.00, '2026-07-07 13:00:00', 95, 97), (450.00, '2026-07-07 13:15:00', 95, 98), (455.00, '2026-07-07 13:30:00', 95, 99),
(460.00, '2026-07-07 13:45:00', 95, 100), (465.00, '2026-07-07 14:00:00', 95, 101), (470.00, '2026-07-07 14:15:00', 95, 102), (475.00, '2026-07-07 14:30:00', 95, 103), (480.00, '2026-07-07 14:45:00', 95, 104),

-- ==========================================
-- SUBASTA 96 (Base: 190.00 | Inicio: 2026-07-04 14:00:00 | Cierre: 2026-07-09 14:00:00)
-- Usuarios: 10 al 29
-- ==========================================
-- Ronda 1
(195.00, '2026-07-05 14:00:00', 96, 10), (200.00, '2026-07-05 14:15:00', 96, 11), (205.00, '2026-07-05 14:30:00', 96, 12), (210.00, '2026-07-05 14:45:00', 96, 13), (215.00, '2026-07-05 15:00:00', 96, 14),
(220.00, '2026-07-05 15:15:00', 96, 15), (225.00, '2026-07-05 15:30:00', 96, 16), (230.00, '2026-07-05 15:45:00', 96, 17), (235.00, '2026-07-05 16:00:00', 96, 18), (240.00, '2026-07-05 16:15:00', 96, 19),
(245.00, '2026-07-05 16:30:00', 96, 20), (250.00, '2026-07-05 16:45:00', 96, 21), (255.00, '2026-07-05 17:00:00', 96, 22), (260.00, '2026-07-05 17:15:00', 96, 23), (265.00, '2026-07-05 17:30:00', 96, 24),
(270.00, '2026-07-05 17:45:00', 96, 25), (275.00, '2026-07-05 18:00:00', 96, 26), (280.00, '2026-07-05 18:15:00', 96, 27), (285.00, '2026-07-05 18:30:00', 96, 28), (290.00, '2026-07-05 18:45:00', 96, 29),
-- Ronda 2
(295.00, '2026-07-06 14:00:00', 96, 10), (300.00, '2026-07-06 14:15:00', 96, 11), (305.00, '2026-07-06 14:30:00', 96, 12), (310.00, '2026-07-06 14:45:00', 96, 13), (315.00, '2026-07-06 15:00:00', 96, 14),
(320.00, '2026-07-06 15:15:00', 96, 15), (325.00, '2026-07-06 15:30:00', 96, 16), (330.00, '2026-07-06 15:45:00', 96, 17), (335.00, '2026-07-06 16:00:00', 96, 18), (340.00, '2026-07-06 16:15:00', 96, 19),
(345.00, '2026-07-06 16:30:00', 96, 20), (350.00, '2026-07-06 16:45:00', 96, 21), (355.00, '2026-07-06 17:00:00', 96, 22), (360.00, '2026-07-06 17:15:00', 96, 23), (365.00, '2026-07-06 17:30:00', 96, 24),
(370.00, '2026-07-06 17:45:00', 96, 25), (375.00, '2026-07-06 18:00:00', 96, 26), (380.00, '2026-07-06 18:15:00', 96, 27), (385.00, '2026-07-06 18:30:00', 96, 28), (390.00, '2026-07-06 18:45:00', 96, 29),
-- Ronda 3
(395.00, '2026-07-07 14:00:00', 96, 10), (400.00, '2026-07-07 14:15:00', 96, 11), (405.00, '2026-07-07 14:30:00', 96, 12), (410.00, '2026-07-07 14:45:00', 96, 13), (415.00, '2026-07-07 15:00:00', 96, 14),
(420.00, '2026-07-07 15:15:00', 96, 15), (425.00, '2026-07-07 15:30:00', 96, 16), (430.00, '2026-07-07 15:45:00', 96, 17), (435.00, '2026-07-07 16:00:00', 96, 18), (440.00, '2026-07-07 16:15:00', 96, 19),
(445.00, '2026-07-07 16:30:00', 96, 20), (450.00, '2026-07-07 16:45:00', 96, 21), (455.00, '2026-07-07 17:00:00', 96, 22), (460.00, '2026-07-07 17:15:00', 96, 23), (465.00, '2026-07-07 17:30:00', 96, 24),
(470.00, '2026-07-07 17:45:00', 96, 25), (475.00, '2026-07-07 18:00:00', 96, 26), (480.00, '2026-07-07 18:15:00', 96, 27), (485.00, '2026-07-07 18:30:00', 96, 28), (490.00, '2026-07-07 18:45:00', 96, 29),

-- ==========================================
-- SUBASTA 97 (Base: 75.00 | Inicio: 2026-07-04 19:00:00 | Cierre: 2026-07-11 19:00:00)
-- Usuarios: 30 al 49
-- ==========================================
-- Ronda 1
(80.00, '2026-07-05 19:00:00', 97, 30), (85.00, '2026-07-05 19:15:00', 97, 31), (90.00, '2026-07-05 19:30:00', 97, 32), (95.00, '2026-07-05 19:45:00', 97, 33), (100.00, '2026-07-05 20:00:00', 97, 34),
(105.00, '2026-07-05 20:15:00', 97, 35), (110.00, '2026-07-05 20:30:00', 97, 36), (115.00, '2026-07-05 20:45:00', 97, 37), (120.00, '2026-07-05 21:00:00', 97, 38), (125.00, '2026-07-05 21:15:00', 97, 39),
(130.00, '2026-07-05 21:30:00', 97, 40), (135.00, '2026-07-05 21:45:00', 97, 41), (140.00, '2026-07-05 22:00:00', 97, 42), (145.00, '2026-07-05 22:15:00', 97, 43), (150.00, '2026-07-05 22:30:00', 97, 44),
(155.00, '2026-07-05 22:45:00', 97, 45), (160.00, '2026-07-05 23:00:00', 97, 46), (165.00, '2026-07-05 23:15:00', 97, 47), (170.00, '2026-07-05 23:30:00', 97, 48), (175.00, '2026-07-05 23:45:00', 97, 49),
-- Ronda 2
(180.00, '2026-07-06 19:00:00', 97, 30), (185.00, '2026-07-06 19:15:00', 97, 31), (190.00, '2026-07-06 19:30:00', 97, 32), (195.00, '2026-07-06 19:45:00', 97, 33), (200.00, '2026-07-06 20:00:00', 97, 34),
(205.00, '2026-07-06 20:15:00', 97, 35), (210.00, '2026-07-06 20:30:00', 97, 36), (215.00, '2026-07-06 20:45:00', 97, 37), (220.00, '2026-07-06 21:00:00', 97, 38), (225.00, '2026-07-06 21:15:00', 97, 39),
(230.00, '2026-07-06 21:30:00', 97, 40), (235.00, '2026-07-06 21:45:00', 97, 41), (240.00, '2026-07-06 22:00:00', 97, 42), (245.00, '2026-07-06 22:15:00', 97, 43), (250.00, '2026-07-06 22:30:00', 97, 44),
(255.00, '2026-07-06 22:45:00', 97, 45), (260.00, '2026-07-06 23:00:00', 97, 46), (265.00, '2026-07-06 23:15:00', 97, 47), (270.00, '2026-07-06 23:30:00', 97, 48), (275.00, '2026-07-06 23:45:00', 97, 49),
-- Ronda 3
(280.00, '2026-07-07 19:00:00', 97, 30), (285.00, '2026-07-07 19:15:00', 97, 31), (290.00, '2026-07-07 19:30:00', 97, 32), (295.00, '2026-07-07 19:45:00', 97, 33), (300.00, '2026-07-07 20:00:00', 97, 34),
(305.00, '2026-07-07 20:15:00', 97, 35), (310.00, '2026-07-07 20:30:00', 97, 36), (315.00, '2026-07-07 20:45:00', 97, 37), (320.00, '2026-07-07 21:00:00', 97, 38), (325.00, '2026-07-07 21:15:00', 97, 39),
(330.00, '2026-07-07 21:30:00', 97, 40), (335.00, '2026-07-07 21:45:00', 97, 41), (340.00, '2026-07-07 22:00:00', 97, 42), (345.00, '2026-07-07 22:15:00', 97, 43), (350.00, '2026-07-07 22:30:00', 97, 44),
(355.00, '2026-07-07 22:45:00', 97, 45), (360.00, '2026-07-07 23:00:00', 97, 46), (365.00, '2026-07-07 23:15:00', 97, 47), (370.00, '2026-07-07 23:30:00', 97, 48), (375.00, '2026-07-07 23:45:00', 97, 49),

-- ==========================================
-- SUBASTA 98 (Base: 65.00 | Inicio: 2026-07-05 08:30:00 | Cierre: 2026-07-10 08:30:00)
-- Usuarios: 50 al 69
-- ==========================================
-- Ronda 1
(70.00, '2026-07-06 08:30:00', 98, 50), (75.00, '2026-07-06 08:45:00', 98, 51), (80.00, '2026-07-06 09:00:00', 98, 52), (85.00, '2026-07-06 09:15:00', 98, 53), (90.00, '2026-07-06 09:30:00', 98, 54),
(95.00, '2026-07-06 09:45:00', 98, 55), (100.00, '2026-07-06 10:00:00', 98, 56), (105.00, '2026-07-06 10:15:00', 98, 57), (110.00, '2026-07-06 10:30:00', 98, 58), (115.00, '2026-07-06 10:45:00', 98, 59),
(120.00, '2026-07-06 11:00:00', 98, 60), (125.00, '2026-07-06 11:15:00', 98, 61), (130.00, '2026-07-06 11:30:00', 98, 62), (135.00, '2026-07-06 11:45:00', 98, 63), (140.00, '2026-07-06 12:00:00', 98, 64),
(145.00, '2026-07-06 12:15:00', 98, 65), (150.00, '2026-07-06 12:30:00', 98, 66), (155.00, '2026-07-06 12:45:00', 98, 67), (160.00, '2026-07-06 13:00:00', 98, 68), (165.00, '2026-07-06 13:15:00', 98, 69),
-- Ronda 2
(170.00, '2026-07-07 08:30:00', 98, 50), (175.00, '2026-07-07 08:45:00', 98, 51), (180.00, '2026-07-07 09:00:00', 98, 52), (185.00, '2026-07-07 09:15:00', 98, 53), (190.00, '2026-07-07 09:30:00', 98, 54),
(195.00, '2026-07-07 09:45:00', 98, 55), (200.00, '2026-07-07 10:00:00', 98, 56), (205.00, '2026-07-07 10:15:00', 98, 57), (210.00, '2026-07-07 10:30:00', 98, 58), (215.00, '2026-07-07 10:45:00', 98, 59),
(220.00, '2026-07-07 11:00:00', 98, 60), (225.00, '2026-07-07 11:15:00', 98, 61), (230.00, '2026-07-07 11:30:00', 98, 62), (235.00, '2026-07-07 11:45:00', 98, 63), (240.00, '2026-07-07 12:00:00', 98, 64),
(245.00, '2026-07-07 12:15:00', 98, 65), (250.00, '2026-07-07 12:30:00', 98, 66), (255.00, '2026-07-07 12:45:00', 98, 67), (260.00, '2026-07-07 13:00:00', 98, 68), (265.00, '2026-07-07 13:15:00', 98, 69),
-- Ronda 3
(270.00, '2026-07-08 08:30:00', 98, 50), (275.00, '2026-07-08 08:45:00', 98, 51), (280.00, '2026-07-08 09:00:00', 98, 52), (285.00, '2026-07-08 09:15:00', 98, 53), (290.00, '2026-07-08 09:30:00', 98, 54),
(295.00, '2026-07-08 09:45:00', 98, 55), (300.00, '2026-07-08 10:00:00', 98, 56), (305.00, '2026-07-08 10:15:00', 98, 57), (310.00, '2026-07-08 10:30:00', 98, 58), (315.00, '2026-07-08 10:45:00', 98, 59),
(320.00, '2026-07-08 11:00:00', 98, 60), (325.00, '2026-07-08 11:15:00', 98, 61), (330.00, '2026-07-08 11:30:00', 98, 62), (335.00, '2026-07-08 11:45:00', 98, 63), (340.00, '2026-07-08 12:00:00', 98, 64),
(345.00, '2026-07-08 12:15:00', 98, 65), (350.00, '2026-07-08 12:30:00', 98, 66), (355.00, '2026-07-08 12:45:00', 98, 67), (360.00, '2026-07-08 13:00:00', 98, 68), (365.00, '2026-07-08 13:15:00', 98, 69),

-- ==========================================
-- SUBASTA 99 (Base: 45.00 | Inicio: 2026-07-05 12:00:00 | Cierre: 2026-07-12 12:00:00)
-- Usuarios: 70 al 89
-- ==========================================
-- Ronda 1
(50.00, '2026-07-06 12:00:00', 99, 70), (55.00, '2026-07-06 12:15:00', 99, 71), (60.00, '2026-07-06 12:30:00', 99, 72), (65.00, '2026-07-06 12:45:00', 99, 73), (70.00, '2026-07-06 13:00:00', 99, 74),
(75.00, '2026-07-06 13:15:00', 99, 75), (80.00, '2026-07-06 13:30:00', 99, 76), (85.00, '2026-07-06 13:45:00', 99, 77), (90.00, '2026-07-06 14:00:00', 99, 78), (95.00, '2026-07-06 14:15:00', 99, 79),
(100.00, '2026-07-06 14:30:00', 99, 80), (105.00, '2026-07-06 14:45:00', 99, 81), (110.00, '2026-07-06 15:00:00', 99, 82), (115.00, '2026-07-06 15:15:00', 99, 83), (120.00, '2026-07-06 15:30:00', 99, 84),
(125.00, '2026-07-06 15:45:00', 99, 85), (130.00, '2026-07-06 16:00:00', 99, 86), (135.00, '2026-07-06 16:15:00', 99, 87), (140.00, '2026-07-06 16:30:00', 99, 88), (145.00, '2026-07-06 16:45:00', 99, 89),
-- Ronda 2
(150.00, '2026-07-07 12:00:00', 99, 70), (155.00, '2026-07-07 12:15:00', 99, 71), (160.00, '2026-07-07 12:30:00', 99, 72), (165.00, '2026-07-07 12:45:00', 99, 73), (170.00, '2026-07-07 13:00:00', 99, 74),
(175.00, '2026-07-07 13:15:00', 99, 75), (180.00, '2026-07-07 13:30:00', 99, 76), (185.00, '2026-07-07 13:45:00', 99, 77), (190.00, '2026-07-07 14:00:00', 99, 78), (195.00, '2026-07-07 14:15:00', 99, 79),
(200.00, '2026-07-07 14:30:00', 99, 80), (205.00, '2026-07-07 14:45:00', 99, 81), (210.00, '2026-07-07 15:00:00', 99, 82), (215.00, '2026-07-07 15:15:00', 99, 83), (220.00, '2026-07-07 15:30:00', 99, 84),
(225.00, '2026-07-07 15:45:00', 99, 85), (230.00, '2026-07-07 16:00:00', 99, 86), (235.00, '2026-07-07 16:15:00', 99, 87), (240.00, '2026-07-07 16:30:00', 99, 88), (245.00, '2026-07-07 16:45:00', 99, 89),
-- Ronda 3
(250.00, '2026-07-08 12:00:00', 99, 70), (255.00, '2026-07-08 12:15:00', 99, 71), (260.00, '2026-07-08 12:30:00', 99, 72), (265.00, '2026-07-08 12:45:00', 99, 73), (270.00, '2026-07-08 13:00:00', 99, 74),
(275.00, '2026-07-08 13:15:00', 99, 75), (280.00, '2026-07-08 13:30:00', 99, 76), (285.00, '2026-07-08 13:45:00', 99, 77), (290.00, '2026-07-08 14:00:00', 99, 78), (295.00, '2026-07-08 14:15:00', 99, 79),
(300.00, '2026-07-08 14:30:00', 99, 80), (305.00, '2026-07-08 14:45:00', 99, 81), (310.00, '2026-07-08 15:00:00', 99, 82), (315.00, '2026-07-08 15:15:00', 99, 83), (320.00, '2026-07-08 15:30:00', 99, 84),
(325.00, '2026-07-08 15:45:00', 99, 85), (330.00, '2026-07-08 16:00:00', 99, 86), (335.00, '2026-07-08 16:15:00', 99, 87), (340.00, '2026-07-08 16:30:00', 99, 88), (345.00, '2026-07-08 16:45:00', 99, 89),

-- ==========================================
-- SUBASTA 100 (Base: 55.00 | Inicio: 2026-07-05 16:00:00 | Cierre: 2026-07-10 16:00:00)
-- Usuarios: 85 al 104
-- ==========================================
-- Ronda 1
(60.00, '2026-07-06 16:00:00', 100, 85), (65.00, '2026-07-06 16:15:00', 100, 86), (70.00, '2026-07-06 16:30:00', 100, 87), (75.00, '2026-07-06 16:45:00', 100, 88), (80.00, '2026-07-06 17:00:00', 100, 89),
(85.00, '2026-07-06 17:15:00', 100, 90), (90.00, '2026-07-06 17:30:00', 100, 91), (95.00, '2026-07-06 17:45:00', 100, 92), (100.00, '2026-07-06 18:00:00', 100, 93), (105.00, '2026-07-06 18:15:00', 100, 94),
(110.00, '2026-07-06 18:30:00', 100, 95), (115.00, '2026-07-06 18:45:00', 100, 96), (120.00, '2026-07-06 19:00:00', 100, 97), (125.00, '2026-07-06 19:15:00', 100, 98), (130.00, '2026-07-06 19:30:00', 100, 99),
(135.00, '2026-07-06 19:45:00', 100, 100), (140.00, '2026-07-06 20:00:00', 100, 101), (145.00, '2026-07-06 20:15:00', 100, 102), (150.00, '2026-07-06 20:30:00', 100, 103), (155.00, '2026-07-06 20:45:00', 100, 104),
-- Ronda 2
(160.00, '2026-07-07 16:00:00', 100, 85), (165.00, '2026-07-07 16:15:00', 100, 86), (170.00, '2026-07-07 16:30:00', 100, 87), (175.00, '2026-07-07 16:45:00', 100, 88), (180.00, '2026-07-07 17:00:00', 100, 89),
(185.00, '2026-07-07 17:15:00', 100, 90), (190.00, '2026-07-07 17:30:00', 100, 91), (195.00, '2026-07-07 17:45:00', 100, 92), (200.00, '2026-07-07 18:00:00', 100, 93), (205.00, '2026-07-07 18:15:00', 100, 94),
(210.00, '2026-07-07 18:30:00', 100, 95), (215.00, '2026-07-07 18:45:00', 100, 96), (220.00, '2026-07-07 19:00:00', 100, 97), (225.00, '2026-07-07 19:15:00', 100, 98), (230.00, '2026-07-07 19:30:00', 100, 99),
(235.00, '2026-07-07 19:45:00', 100, 100), (240.00, '2026-07-07 20:00:00', 100, 101), (245.00, '2026-07-07 20:15:00', 100, 102), (250.00, '2026-07-07 20:30:00', 100, 103), (255.00, '2026-07-07 20:45:00', 100, 104),
-- Ronda 3
(260.00, '2026-07-08 16:00:00', 100, 85), (265.00, '2026-07-08 16:15:00', 100, 86), (270.00, '2026-07-08 16:30:00', 100, 87), (275.00, '2026-07-08 16:45:00', 100, 88), (280.00, '2026-07-08 17:00:00', 100, 89),
(285.00, '2026-07-08 17:15:00', 100, 90), (290.00, '2026-07-08 17:30:00', 100, 91), (295.00, '2026-07-08 17:45:00', 100, 92), (300.00, '2026-07-08 18:00:00', 100, 93), (305.00, '2026-07-08 18:15:00', 100, 94),
(310.00, '2026-07-08 18:30:00', 100, 95), (315.00, '2026-07-08 18:45:00', 100, 96), (320.00, '2026-07-08 19:00:00', 100, 97), (325.00, '2026-07-08 19:15:00', 100, 98), (330.00, '2026-07-08 19:30:00', 100, 99),
(335.00, '2026-07-08 19:45:00', 100, 100), (340.00, '2026-07-08 20:00:00', 100, 101), (345.00, '2026-07-08 20:15:00', 100, 102), (350.00, '2026-07-08 20:30:00', 100, 103), (355.00, '2026-07-08 20:45:00', 100, 104);