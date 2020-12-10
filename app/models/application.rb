class Application < ApplicationRecord

  belongs_to :houses, optional: true

  belongs_to :user, optional: true
end
