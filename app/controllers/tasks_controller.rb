class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks =  Task.all
  end

  def create
    @task = Task.new(task_parameter)
    @task.save
  end

  def new
    @task = Task.new
  end

  def update
    @task = Task.find(params[:id])
  end
  
  private
  
  def task_parameter
    params.requiere(:task).permit(:title,:description)
  end
end
