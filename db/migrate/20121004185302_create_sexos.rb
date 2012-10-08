class CreateSexos < ActiveRecord::Migration
  def change
    create_table :sexos do |t|
      t.integer :codigo
      t.string  :nome

      t.timestamps
    end
    add_index(:sexos, :codigo, {:unique => true})
  end
end
