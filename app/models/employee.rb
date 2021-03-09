class Employee < ApplicationRecord
  validates_with RUTValidator
  extend Enumerize

  belongs_to :user

  has_many :periods
  has_many :teams, inverse_of: :employee

  accepts_nested_attributes_for :teams, reject_if: :all_blank, allow_destroy: true
end
