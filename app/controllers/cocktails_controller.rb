class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktails = Cocktail.find(params[:id])
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
    @cocktails = Cocktail.new(cocktail_params)
    @cocktails.save

    redirect_to index(@cocktail)
  end

  private

    def cocktail_params
      params.require(:cocktail).permit(:name)
    end
end
