class CreatePartidos < ActiveRecord::Migration
  def change
    create_table :partidos do |t|
      t.integer :codigo
      t.string  :sigla
      t.string  :nome
      t.string  :sequencial
      t.string  :legenda

      t.timestamps
    end
    add_index(:partidos, [:sigla, :sequencial], {:unique => true})
  end
end
