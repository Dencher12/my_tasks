class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if project_params[:id].present?
      @project = Project.find(project_params[:id])
    else
      @project = Project.new(title: project_params[:title])
    end
    @project.todos << Todo.new(text: todo_params[:text])
    @project.save
  end

  def update
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:todo_id])
    @todo.is_completed = !@todo.is_completed
    @todo.save
  end

  private

  def project_params
    params.require(:project).permit(:id, :title)
  end

  def todo_params
    params.require(:todo).permit(:text)
  end
end