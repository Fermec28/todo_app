class TasksController < ApplicationController
  def index
    @task = Task.new
    @to_do =  Task.to_do(current_user)
    @done = Task.done(current_user)
  end

  def create
    @task = Task.new(task_parameter)
    @task.user_id = current_user.id
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_parameter)
  end

  def done
    @task = Task.find(params[:id])
    @task.update(done: true)
  end

  def to_do
    @task = Task.find(params[:id])
    @task.update(done: false)
  end

  def play_pause
    @task = Task.find(params[:id])
    @task.play_pause
  end

  def destroy
    @task = Task.find(params[:id])
    @id = @task.id
    @task.destroy
  end
  private
  
  def task_parameter
    params.require(:task).permit(:title,:description)
  end
end
