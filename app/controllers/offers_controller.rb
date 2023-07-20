class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offers = Offer.find(params[:id])
  end

  def article_params
    params.require(:offer).permit(:cuisine, :photo)
  end
end
