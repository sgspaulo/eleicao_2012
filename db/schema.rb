# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121005183901) do

  create_table "candidatos", :force => true do |t|
    t.integer  "cidade_id"
    t.integer  "cargo_id"
    t.string   "nome"
    t.string   "sequencial"
    t.integer  "numero"
    t.string   "nome_urna"
    t.integer  "situacao_id"
    t.integer  "partido_id"
    t.integer  "profissao_id"
    t.date     "data_nascimento"
    t.string   "titulo_eleitoral"
    t.integer  "sexo_id"
    t.integer  "grau_estudo_id"
    t.integer  "estado_civil_id"
    t.integer  "nacionalidade_id"
    t.integer  "naturalidade_id"
    t.decimal  "gasto_maximo",     :precision => 8, :scale => 2
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  add_index "candidatos", ["sequencial"], :name => "index_candidatos_on_sequencial", :unique => true

  create_table "cargos", :force => true do |t|
    t.integer  "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cargos", ["codigo"], :name => "index_cargos_on_codigo", :unique => true

  create_table "cidades", :force => true do |t|
    t.integer  "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cidades", ["codigo"], :name => "index_cidades_on_codigo", :unique => true

  create_table "estado_civis", :force => true do |t|
    t.integer  "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "estado_civis", ["codigo"], :name => "index_estado_civis_on_codigo", :unique => true

  create_table "estados", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "estados", ["nome"], :name => "index_estados_on_nome", :unique => true

  create_table "grau_estudos", :force => true do |t|
    t.integer  "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "grau_estudos", ["codigo"], :name => "index_grau_estudos_on_codigo", :unique => true

  create_table "nacionalidades", :force => true do |t|
    t.integer  "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "nacionalidades", ["codigo"], :name => "index_nacionalidades_on_codigo", :unique => true

  create_table "naturalidades", :force => true do |t|
    t.integer  "estado_id"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partidos", :force => true do |t|
    t.integer  "codigo"
    t.string   "sigla"
    t.string   "nome"
    t.string   "sequencial"
    t.string   "legenda"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "partidos", ["sigla", "sequencial"], :name => "index_partidos_on_sigla_and_sequencial", :unique => true

  create_table "profissoes", :force => true do |t|
    t.integer  "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "profissoes", ["codigo"], :name => "index_profissoes_on_codigo", :unique => true

  create_table "sexos", :force => true do |t|
    t.integer  "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sexos", ["codigo"], :name => "index_sexos_on_codigo", :unique => true

  create_table "situacoes", :force => true do |t|
    t.integer  "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "situacoes", ["codigo"], :name => "index_situacoes_on_codigo", :unique => true

end
