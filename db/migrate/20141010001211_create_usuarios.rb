class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :usbid
      t.string :nombre
      t.string :apellido
      t.string :laboratorio

      t.timestamps
    end
  end
end
