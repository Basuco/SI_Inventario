class CreateSustanciaQuimicas < ActiveRecord::Migration
  def change
    create_table :sustancia_quimicas do |t|
      t.string :nombre
      t.string :pureza
      t.string :estado_materia
      t.boolean :controlado
      t.string :regimen_legal
      t.string :cantidad
      t.string :CAS
      t.string :uso
      t.string :status
      t.string :responsable
      t.string :ubicacion
      t.date :caducidad
      t.string :peligro
      t.boolean :RI7
      t.boolean :RI4
      t.boolean :Investigacion2
      t.boolean :Docencia2
      t.boolean :Extension2
      t.boolean :Gestion2
      t.boolean :Toxico
      t.boolean :Comburente
      t.boolean :Explosivo
      t.boolean :Irritante
      t.boolean :Inflamable
      t.boolean :Corrosivo
      t.boolean :Nocivo

      t.timestamps
    end
  end
end
