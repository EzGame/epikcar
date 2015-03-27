class ReportController < ApplicationController
  before_filter :login_required,
                :only => [:new, :create, :edit, :update]

  # TODO: maybe scope this under admin
  # TODO: Requires admin
  def new
    @report_attributes = Report.attributes

    render :layout => "application"
  end

  # TODO: Requires admin
  def create
    ad = Ad.find params[:ad_id]
    ad.report = Report.create_from_form params[:report]

    redirect_to ad_url(:id => params[:ad_id]),
                :notice => 'Report has been created!'
  end

  # TODO: Requires admin
  def edit

  end

  # TODO: Requires admin
  def update

  end
end
