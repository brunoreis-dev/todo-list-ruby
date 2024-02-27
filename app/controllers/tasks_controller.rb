class TasksController < ApplicationController

  def index
    render plain: "Hello, world!"
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
