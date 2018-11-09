class CocktailsController < ApplicationController

  before_action :find_cocktail, only: [:show, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    @cocktail = Cocktail.new
    if @cocktail.save
      redirect_to edit_cocktail_path(@cocktail)
    else
      render :edit
    end
  end

  def show
  end

  def update
    if @cocktail.update(cocktails_params)
      redirect_to edit_cocktail_path(@cocktail)
    else
      render :edit
    end
  end

  def destroy
    @cocktails.destroy
    redirect_to cocktails_path
  end

private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end
