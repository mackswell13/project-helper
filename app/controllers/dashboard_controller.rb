class DashboardController < ApplicationController
  def index
    @projects = Current.user.projects
  end

  def show
    @projects = Current.user.projects
  end
end
