class Candidato < ActiveRecord::Base
  attr_accessible :cidade_id, :cargo_id, :nome, :sequencial, :numero, :nome_urna, :situacao_id, 
  				  :partido_id, :profissao_id, :data_nascimento, :titulo_eleitoral, :sexo_id, :grau_estudo_id, 
  				  :estado_civil_id, :nacionalidade_id, :naturalidade_id, :gasto_maximo

  belongs_to :cargo
  belongs_to :cidade
  belongs_to :situacao
  belongs_to :partido
  belongs_to :profissao
  belongs_to :sexo
  belongs_to :grau_estudo
  belongs_to :estado_civil
  belongs_to :nacionalidade
  belongs_to :naturalidade 
end
