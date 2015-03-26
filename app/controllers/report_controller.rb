class ReportController < ApplicationController
  before_filter :login_required,
                :only => [:new, :create, :edit, :update]

  # TODO: maybe scope this under admin
  # TODO: Requires admin
  def new

  end

  # TODO: Requires admin
  def create

  end

  # TODO: Requires admin
  def edit

  end

  # TODO: Requires admin
  def update

  end
end
