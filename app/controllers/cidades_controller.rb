# coding: utf-8
require 'csv'

class CidadesController < ApplicationController
    before_filter :find_model

    def index
        
    end

    def importar_candidatos
        Candidato.delete_all
        @csv_linhas = []
        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            Candidato.create(
                :cidade_id        => Cidade.find_by_codigo(row[6]).id, 
                :cargo_id         => Cargo.find_by_codigo(row[8]).id,
                :nome             => row[10],
                :sequencial       => row[11],
                :numero           => row[12],
                :nome_urna        => row[13],
                :situacao_id      => Situacao.find_by_codigo(row[14]).id,
                :partido_id       => Partido.find_by_codigo(row[16]).id,
                :profissao_id     => Profissao.find_by_codigo(row[23]).id,
                :data_nascimento  => row[25],
                :titulo_eleitoral => row[26],
                :sexo_id          => Sexo.find_by_codigo(row[28]).id,
                :grau_estudo_id   => GrauEstudo.find_by_codigo(row[30]).id,
                :estado_civil_id  => EstadoCivil.find_by_codigo(row[32]).id,
                :nacionalidade_id => Nacionalidade.find_by_codigo(row[34]).id,
                :naturalidade_id  => Naturalidade.find_by_estado_id_and_nome(
                                                Estado.find_by_nome(row[36]).id,
                                                row[38]
                                                ).id,
                :gasto_maximo     => row[39]
            )

            @csv_linhas << [row[10], row[11], row[12], row[13]]
        end
        render :index
    end

    def importar_cidades
        Cidade.delete_all
        @csv_linhas = []
        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            
            if Cidade.find_by_codigo(row[6]).nil?
                Cidade.create(
                    :codigo => row[6],
                    :nome => row[7]
                )
                @csv_linhas << [row[6], row[7]]
            end
        end
        render :index
    end

    def importar_cargos
        Cargo.delete_all
        @csv_linhas = []

        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|

            if Cargos.find_by_codigo(row[8]) == nil
                Cargos.create(
                    :codigo => row[8],
                    :nome => row[9]
                )
                @csv_linhas << [row[8], row[9]]
            end
        end
        render :index
    end

    def importar_partidos
        Partido.delete_all
        @csv_linhas = []

        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            
            if Partido.find_by_sequencial(row[16]) == nil
                Partido.create(
                    :codigo => row[16],
                    :sigla => row[17],
                    :nome => row[18],
                    :sequencial => row[19],
                    :legenda => row[21]
                )
                @csv_linhas << [row[16], row[17], row[18], row[19], row[21]]
            end
        end
        render :index
    end

    def importar_profissoes
        Profissao.delete_all
        @csv_linhas = []

        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            
            if Profissao.find_by_codigo(row[23]) == nil
                Profissao.create(
                    :codigo => row[23],
                    :nome => row[24]
                )
                @csv_linhas << [row[23], row[24]]
            end

        end
        render :index
    end

    def importar_estados_civis
        EstadoCivil.delete_all
        @csv_linhas = []

        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            
            if EstadoCivil.find_by_codigo(row[32]) == nil
                EstadoCivil.create(
                    :codigo => row[32],
                    :nome => row[33]
                )
                @csv_linhas << [row[32], row[33]]
            end
        end
        render :index
    end

    def importar_graus_estudo
        GrauEstudo.delete_all
        @csv_linhas = []

        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            
            if GrauEstudo.find_by_codigo(row[30]) == nil
                GrauEstudo.create(
                    :codigo => row[30],
                    :nome => row[31]
                )
                @csv_linhas << [row[30], row[31]]
            end
        end
        render :index
    end

    def importar_nacionalidades
        Nacionalidade.delete_all
        @csv_linhas = []

        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            
            if Nacionalidade.find_by_codigo(row[34]) == nil
                Nacionalidade.create(
                    :codigo => row[34],
                    :nome => row[35]
                )
                @csv_linhas << [row[34], row[35]]
            end
        end
        render :index
    end

    def importar_naturalidades
        
        Naturalidade.delete_all
        @csv_linhas = []

        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            
            if Naturalidade.find_by_estado_id_and_nome( Estado.find_by_nome(row[36]).id, row[38] ) == nil
                Naturalidade.create( :estado_id => Estado.find_by_nome(row[36]).id, :nome => row[38] )
                @csv_linhas << [row[36], row[38]]
            end
        end
        render :index
    end

    def importar_estados
        Estado.delete_all
        @csv_linhas = []
        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            if Estado.find_by_nome(row[36]) == nil
                Estado.create(:nome => row[36])
                @csv_linhas << [row[36]]
            end
        end
        render :index
    end

    def importar_situacoes
        Situacao.delete_all
        @csv_linhas = []
        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            if Situacao.find_by_codigo(row[14]) == nil
                Situacao.create(:codigo => row[14], :nome => row[15])
                @csv_linhas << [row[14], row[15]]
            end
        end
        render :index
    end

    def importar_sexos
        Sexo.delete_all
        @csv_linhas = []

        CSV.foreach(Rails.root + "dados/candidato.csv", {:col_sep => ";", :encoding => "utf-8"}) do |row|
            if Sexo.find_by_codigo(row[28]) == nil
                Sexo.create(:codigo => row[28], :nome => row[29])
                @csv_linhas << [row[28], row[29]]
            end
        end
        render :index
    end

    private
    def find_model
        @model = Import.find(params[:id]) if params[:id]
    end
end
	