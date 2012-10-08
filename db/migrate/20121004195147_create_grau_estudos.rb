class CreateGrauEstudos < ActiveRecord::Migration
  def change
    create_table :grau_estudos do |t|
      t.integer :codigo
      t.string  :nome

      t.timestamps
    end
    add_index(:grau_estudos, :codigo, {:unique => true})
  end
end
