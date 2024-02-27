class TasksController < ApplicationController=
  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    render plain: "Hello, world! :Create"
  end

  def update
    render plain: "Hello, world! :Update"
  end

  def destroy
    render plain: "Hello, world! :Destroy"
  end
end
