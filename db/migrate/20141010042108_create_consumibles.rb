class CreateConsumibles < ActiveRecord::Migration
  def change
    create_table :consumibles do |t|
      t.string :nombre
      t.string :descripcion
      t.string :dimensiones
      t.string :material
      t.string :cantidad
      t.string :ubicacion
      t.string :uso
      t.string :responsable

      t.boolean :Investigacion
      t.boolean :Docencia
      t.boolean :Extension
      t.boolean :Gestion


      t.timestamps
    end
  end
end
