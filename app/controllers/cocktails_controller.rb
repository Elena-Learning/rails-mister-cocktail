class CocktailsController < ApplicationController

  before_action :set_cocktails, only: [:show]
  def index
    @cocktails = Cocktail.all
  end

  def show
    set_cocktails
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktails
    @cocktail = Cocktail.find(params[:id])
  end
end
