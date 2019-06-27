class Employee < ApplicationRecord
  validates_with RUTValidator
  extend Enumerize

  has_many :periods

  enumerize :person_type, in: [:natural, :juridica]

end
