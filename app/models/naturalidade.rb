class Naturalidade < ActiveRecord::Base
  attr_accessible :estado_id, :nome
  belongs_to :estado
  has_many :candidatos

  validates_uniqueness_of :nome, :scope => :estado_id
end
