class HomeController < ApplicationController
  def show

  end

  def search

  end

  def detail
    @ad = Advert.find(params[:advert_id])
  end
end
