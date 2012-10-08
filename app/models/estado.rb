class Estado < ActiveRecord::Base
  attr_accessible :nome
  
  has_many :naturalidades
end
