class CreateProfissoes < ActiveRecord::Migration
  def change
    create_table :profissoes do |t|
      t.integer :codigo
      t.string  :nome

      t.timestamps
    end
    add_index( :profissoes, :codigo, {:unique => true})
  end
end
