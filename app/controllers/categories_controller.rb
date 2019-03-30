class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_index_path
    else
      render 'new'
    end
  end

  def destroy
    Category.destroy(params[:id])
    redirect_to categories_path
  end

  def category_params
    params.require(:category).permit(:title)
  end
end
