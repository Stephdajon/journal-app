class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def find_title
    @category = Category.find_by(title: params[:title])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    
    if @category.save
      redirect_to categories_path(@category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to category_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    
    @category.destroy
    @category.save

    redirect_to categories_path, :notice => "Your category has been deleted."
  end

  private
  def category_params
    params.require(:category).permit(:title, :body)
  end
end
