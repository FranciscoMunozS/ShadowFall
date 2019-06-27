class Project < ApplicationRecord
  extend Enumerize

  has_many :periods

  enumerize :stage, in: [ :ejecucion, :diseño, :prefactibilidad, :estudio, :programa ]
end
