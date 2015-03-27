class AdController < ApplicationController
  def show
    @ad = Ad.find params[:id]
    render :layout => "application"
  end
end
