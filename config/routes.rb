Eleicao2012c::Application.routes.draw do
  root :to => 'home#index'

  get "cidades" => "importacoes#importar_cidades"
  get "cargos" => "importacoes#importar_cargos"
  get "partidos" => "importacoes#importar_partidos"
  get "profissoes" => "importacoes#importar_profissoes"
  get "estados_civis" => "importacoes#importar_estados_civis"
  get "graus_estudo" => "importacoes#importar_graus_estudo"
  get "naturalidades" => "importacoes#importar_naturalidades"
  get "nacionalidades" => "importacoes#importar_nacionalidades"
  get "estados" => "importacoes#importar_estados"
  get "situacoes" => "importacoes#importar_situacoes"
  get "candidatos_import" => "importacoes#importar_candidatos"
  get "sexos" => "importacoes#importar_sexos"
  get "nada_a_importar" => "importacoes#nada_a_importar"
  # get "prefeitos" => "dashboard#prefeitos"
  # get "vereadores" => "dashboard#vereadores"
  get "candidatos/:nome" => "dashboard#candidatos"

end
