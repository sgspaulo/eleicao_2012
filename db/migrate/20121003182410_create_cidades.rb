class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.integer :codigo
      t.string  :nome

      t.timestamps
    end
    add_index :cidades, :codigo, :unique => true
  end
end
