class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nome

      t.timestamps
    end
    add_index( :estados, :nome, { :unique => true })
  end
end
