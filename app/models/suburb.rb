class Suburb < ApplicationRecord
  has_many :houses

  has_many :transports, through: 'houses '

  
end
