class TasksController < ApplicationController
  def index 
    @tasks = Task.all
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def create 
    @task = Task.create(task_params)
    @save_success = @task.save
  end


  private

    def task_params
      params.permit(:title)
    end
end
