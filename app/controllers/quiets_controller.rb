class QuietsController < ApplicationController
  /before_action :authenticate_user!, only: [:show, :new]/

  def index
    @quiets = Quiet.all.order("created_at DESC")
  end

  def show
  end

  def new
    @quiet = Quiet.new
  end

  def create
    @quiet = Quiet.new(quiet_params)
    if @quiet.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end
end

private

def quiet_params
  params.require(:quiet).permit(:name, :description)
end