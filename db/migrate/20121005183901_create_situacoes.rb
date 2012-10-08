class CreateSituacoes < ActiveRecord::Migration
  def change
    create_table :situacoes do |t|
      t.integer :codigo
      t.string  :nome

      t.timestamps
    end
    add_index( :situacoes, :codigo, {:unique => true})
  end
end
