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

      t.timestamps
    end
  end
end
