class CreatePhases < ActiveRecord::Migration[5.0]
  def change
    create_table :phases do |t|
      t.integer :fase
      t.string :marca
      t.string :num_serie
      t.date :fecha_fabricacion
      t.string :impedencia_max_hx_capacidad
      t.string :impedancia_max_hy_capacidad
      t.string :impedancia_max_xy_capacidad
      t.string :relacion_transformacion
      t.string :capacidad
      t.string :transformacion
      t.integer :masa_embarque
      t.integer :esquema_nucleo
      t.integer :total_aceite
      t.string :sistema_enfriamiento
      t.boolean :mampara
      t.string :cambiador_taps, array: true, default: []
      t.integer :num_taps
      t.string :sistema_contra_incendios
      t.string :fosa_captadora_aceite
      t.string :tension_sistema
      t.string :capacitancia, array: true, default: []
      t.string :clase_exactitud
      t.string :tipo_expancion_aceite
      t.string :tipo_envolvente
      t.string :mva
      t.string :kv_nom_at
      t.string :kv_nom_bt
      t.string :kv_nom_terciario
      t.string :porcentage_z, array: true, default: []
      t.date :fecha_puesta_servicio
      t.belongs_to :transformer, foreign_key: true

      t.timestamps
    end
  end
end