class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :nombre
      t.string :marca
      t.string :modelo
      t.string :serial
      t.integer :no_bien_nac
      t.string :status
      t.date :ultima_calibracion
      t.string :uso
      t.string :responsable
      t.string :ubicacion
      t.date :fecha_adquisicion
      t.string :orden_compra
      t.float :costo
      t.string :factura
      t.boolean :Investigacion
      t.boolean :Docencia
      t.boolean :Extension
      t.boolean :Gestion
      t.string :Calibrado

      t.timestamps
    end
  end
end
