require 'kramdown'

class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
    @body = Kramdown::Document.new(@meal.recipe).to_html.html_safe
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      redirect_to @meal
    else
      render :new
    end
  end

private

  def meal_params
    params.require(:meal).permit(:name, :recipe)
  end
end
