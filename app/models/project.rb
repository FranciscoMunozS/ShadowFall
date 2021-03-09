class Project < ApplicationRecord
  extend Enumerize

  has_many :periods

  belongs_to :user

  enumerize :stage, in: [ :ejecucion, :diseño, :prefactibilidad, :estudio, :programa ]
end
