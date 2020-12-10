class House < ApplicationRecord

  belongs_to :suburb, optional:true

  has_and_belongs_to_many :transports

  has_many :applications

  belongs_to :user, optional: true

  after_validation :geocode
  
  geocoded_by :address

end
