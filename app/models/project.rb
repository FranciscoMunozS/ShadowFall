class Project < ApplicationRecord
  extend Enumerize

  has_many :periods

  belongs_to :user

  enumerize :stage, in: [ :ejecucion, :diseño, :prefactibilidad, :estudio, :programa ]

  enumerize :ubication, in: [ :corral, :lanco, :los_lagos, :mafil, :mariquina, :paillaco, :panguipulli, :valdivia, :futrono, :la_union, :lago_ranco, :rio_bueno ]
end
