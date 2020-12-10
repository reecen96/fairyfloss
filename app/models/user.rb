class User < ApplicationRecord
#user can send many applications
  has_many :applications

#user can list many houses
  has_many :houses

#bcrypt gem - used to encode password
  has_secure_password
  validates :email, presence: true, uniqueness: true #email field cannot be empty
  # validates: :name, length : {minimum: 2}
  validates :name, length: { minimum: 2 }
  #email validation (built into rails)
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  #private messaging gem
  acts_as_messageable
end
