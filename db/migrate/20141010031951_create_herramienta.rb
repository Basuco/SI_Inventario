class CreateHerramienta < ActiveRecord::Migration
  def change
    create_table :herramienta do |t|
      t.string :nombre
      t.string :marca
      t.string :tipo
      t.integer :no_bien_nac
      t.string :estado
      t.string :uso
      t.string :responsable
      t.string :ubicacion
      t.string :material
      t.string :factura
      t.boolean :de_un_juego

      t.timestamps
    end
  end
end
