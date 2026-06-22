ALTER TABLE Lote_Produccion 
ALTER COLUMN Control_Calidad_CC_id DROP NOT NULL;


ALTER TABLE Control_Calidad ADD COLUMN Lote_Produccion_LP_id INTEGER NOT NULL;

ALTER TABLE Lote_Produccion DROP COLUMN IF EXISTS Control_Calidad_CC_id;

ALTER TABLE mercado_secundario
  ADD COLUMN producto_final_pf_id integer;

ALTER TABLE mercado_secundario
  ADD CONSTRAINT mercado_secundario_producto_final_fk
  FOREIGN KEY (producto_final_pf_id)
  REFERENCES producto_final(pf_id);

ALTER TABLE producto_final
  DROP CONSTRAINT producto_final_mercado_secundario_fk;

ALTER TABLE producto_final
  ALTER COLUMN mercado_secundario_ms_id DROP NOT NULL;