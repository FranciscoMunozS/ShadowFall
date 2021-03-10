class Period < ApplicationRecord
  extend Enumerize
  belongs_to :employee
  belongs_to :project

  belongs_to :user

  has_many :permanences, inverse_of: :period
  accepts_nested_attributes_for :permanences, reject_if: :all_blank, allow_destroy: true

  enumerize :working_day, in: [:mañana, :tarde]

  enumerize :quantity, in: [ :'1', :'2', :'3', :'4', :'5', :'6', :'7' ]

end
