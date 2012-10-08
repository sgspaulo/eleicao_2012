Eleicao2012c::Application.routes.draw do
  root :to => 'home#index'

  get "cidades" => "cidades#importar_cidades"
  get "cargos" => "cidades#importar_cargos"
  get "partidos" => "cidades#importar_partidos"
  get "profissoes" => "cidades#importar_profissoes"
  get "estados_civis" => "cidades#importar_estados_civis"
  get "graus_estudo" => "cidades#importar_graus_estudo"
  get "naturalidades" => "cidades#importar_naturalidades"
  get "nacionalidades" => "cidades#importar_nacionalidades"
  get "estados" => "cidades#importar_estados"
  get "situacoes" => "cidades#importar_situacoes"
  get "candidatos" => "cidades#importar_candidatos"
  get "sexos" => "cidades#importar_sexos"

end
