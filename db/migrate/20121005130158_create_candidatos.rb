class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|
      t.references :cidade
      t.references :cargo
      t.string     :nome
      t.string     :sequencial
      t.integer    :numero
      t.string     :nome_urna
      t.references :situacao
      t.references :partido
      t.references :profissao
      t.date       :data_nascimento
      t.string     :titulo_eleitoral
      t.references :sexo
      t.references :grau_estudo
      t.references :estado_civil
      t.references :nacionalidade
      t.references :naturalidade
      t.decimal    :gasto_maximo, :precision => 8, :scale => 2

      t.timestamps
    end
    add_index(:candidatos, :sequencial, {:unique => true})
  end
end
