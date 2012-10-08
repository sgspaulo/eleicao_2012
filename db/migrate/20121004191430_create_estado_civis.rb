class CreateEstadoCivis < ActiveRecord::Migration
  def change
    create_table :estado_civis do |t|
      t.integer :codigo
      t.string  :nome

      t.timestamps
    end
    add_index( :estado_civis, :codigo, {:unique => true})
  end
end
