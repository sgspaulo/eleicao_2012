class CreateNacionalidades < ActiveRecord::Migration
  def change
    create_table :nacionalidades do |t|
      t.integer :codigo
      t.string  :nome

      t.timestamps
    end
    add_index( :nacionalidades, :codigo, {:unique => true})
  end
end
