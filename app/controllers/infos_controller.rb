class InfosController < ApplicationController
  before_action :find_quiet, only: [:edit, :update, :destroy]
  
  def create
  end

  def edit
  end

  private

  def find_quiet
    @quiet = Quiet.find(params[:id])
  end

end
