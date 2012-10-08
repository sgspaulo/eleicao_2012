class Cargo < ActiveRecord::Base
  attr_accessible :codigo, :nome

  has_many :candidatos
end
