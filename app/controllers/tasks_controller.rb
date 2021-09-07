class TasksController < ApplicationController
  before_action :get_category

  # def create
  #   @category = Category.find(params[:categpry_id])
  #   @category = @category.tasks.create(task_params)
  #   redirect_to category_path(@category)
  # end

  # private
  #   def task_params
  #     params.require(:task).permit(:category_id, :body)
  #   end

  def index
    @tasks = @category.tasks
  end

  def new
    @task = @category.tasks.build
  end

  def create
    @task = @category.tasks.build(task_params)
    if @task.save
      redirect_to category_tasks_path
    else
      render :new
    end
  end

  private
  def get_category
    @category = Category.find(params[:category_id])
  end
  def task_params
    params.require(:task).permit(:body, :category_id)
  end
end
