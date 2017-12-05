class CreatePassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string :nombre
      t.string :telefono
      t.string :email
      t.integer :cantidad
      t.string :hostal
      t.string :documento
      t.string :idioma
      t.string :booking
      t.boolean :estado_disponibilidad

      t.timestamps
    end
  end
end
