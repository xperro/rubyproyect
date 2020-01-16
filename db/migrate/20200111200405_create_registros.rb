class CreateRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :registros do |t|
      t.string :guia
      t.string :ref
      t.string :estado
      t.string :fecha_salida
      t.string :promesa_de_entrega
      t.string :dias_de_retraso
      t.string :intentos_de_entrega
      t.string :nombre
      t.string :direccion
      t.string :informacion_adicional
      t.string :adicional
      t.string :ind_inter
      t.string :comentarios

      t.timestamps
    end
  end
end
