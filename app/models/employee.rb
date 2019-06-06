class Employee < ApplicationRecord
  validates_with RUTValidator
  
  has_many :periods
end
