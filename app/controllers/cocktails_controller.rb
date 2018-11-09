class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktails = Cocktail.new(cocktails_params)
    @cocktails.save
  end

  def update
    @cocktails = Cocktail.find(params[:id])
    @cocktails.update(cocktails_params)
    redirect_to cocktails_path(@cocktails)
  end

  def new
    @cocktails = Cocktail.new
    @cocktails.save
  end

  def destroy
    @cocktails = Cocktail.find(params[:id])
    @cocktails.destroy
    redirect_to cocktails_path
  end

private

  def cocktails_params
    params require(:cocktails).permit(:name)
  end
end
