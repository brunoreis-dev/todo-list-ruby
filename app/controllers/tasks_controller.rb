class TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy]

  def index
    if params[:completed].present?
      @tasks = Task.where(completed: params[:completed])
    else
      @tasks = Task.all
    end
    render json: @tasks
  end

  def create
    @task = Task.new(task_params.merge(completed: false))

    if @task.save
      render json: @task, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      render json: @task, status: :ok
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.permit(:task, :completed)
    end
end
