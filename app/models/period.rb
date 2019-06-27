class Period < ApplicationRecord
  belongs_to :employee
  belongs_to :project

  has_many :permanences, inverse_of: :period
  accepts_nested_attributes_for :permanences, reject_if: :all_blank, allow_destroy: true
end
