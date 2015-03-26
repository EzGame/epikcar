class ReportController < ApplicationController
  before_filter :login_required,
                :only => [:new, :create, :edit, :update]

  # TODO: maybe scope this under admin
  # TODO: Requires admin
  def new
    @report_attributes = Report.attributes
  end

  # TODO: Requires admin
  def create
    # redirect to ad page
  end

  # TODO: Requires admin
  def edit

  end

  # TODO: Requires admin
  def update

  end
end
