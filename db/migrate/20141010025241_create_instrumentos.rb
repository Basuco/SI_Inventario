class CreateInstrumentos < ActiveRecord::Migration
  def change
    create_table :instrumentos do |t|
      t.string :nombre
      t.string :marca
      t.string :modelo
      t.string :unidad_medida
      t.float :capacidad
      t.string :material
      t.string :uso
      t.string :estado
      t.string :ubicacion
      t.date :ultima_calibracion
      t.string :responsable
      t.integer :no_bien_nac

      t.boolean :Investigacion
      t.boolean :Docencia
      t.boolean :Extension
      t.boolean :Gestion

      t.timestamps
    end
  end
end
