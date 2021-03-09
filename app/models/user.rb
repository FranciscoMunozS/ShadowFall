class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :projects
  has_many :teams
  has_many :companies
  has_many :analists
  has_many :periods
  has_many :employees
end
