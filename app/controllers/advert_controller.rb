class AdvertController < ApplicationController
  def show
    @ad = Advert.find params[:id]
  end
end
