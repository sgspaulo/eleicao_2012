class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.integer :codigo
      t.string  :nome

      t.timestamps
    end
    add_index :cargos, :codigo, :unique => true
  end
end
