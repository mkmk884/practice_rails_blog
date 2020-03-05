class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(categories_params)
    if @category.save
      redirect_to new_post_path
    else
      render 'new'
    end
  end

  private
    def categories_params
      params.require(:category).permit(:category)
    end
end
