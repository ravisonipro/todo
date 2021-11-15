class TasksController < ApplicationController
  
  def new 
  end

  def create
   
    @task = task.new(params.require(:task).permit(:title, :description, :status))

    @task.save
    redirect_to @task
  end
      
  private
  def task_params
    params.require(:task).permit(:title, :description, :status)
  end
end