class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render formats: [:json]
  end
end
