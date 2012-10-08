class Candidato < ActiveRecord::Base
  attr_accessible :cidade_id, :cargo_id, :nome, :sequencial, :numero, :nome_urna, :situacao_id, 
  				  :partido_id, :profissao_id, :data_nascimento, :titulo_eleitoral, :sexo_id, :grau_estudo_id, 
  				  :estado_civil_id, :nacionalidade_id, :naturalidade_id, :gasto_maximo

  # belongs_to :cidade, :cargo, :situacao, :partido, :profissao, :sexo, :grau_estudo, :estado_civil, 
  # 			 :nacionalidade, :naturalidade
end
