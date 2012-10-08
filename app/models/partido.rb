class Partido < ActiveRecord::Base
  attr_accessible :sigla, :sequencial, :legenda, :codigo, :nome

  validates_uniqueness_of :sigla, :scope => :sequencial

  has_many :candidatos
end
