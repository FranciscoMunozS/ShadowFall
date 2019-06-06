class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @periods = Period.all
    @employees = Employee.all
    @companies = Company.all
    @projects = Project.all 
  end
end
