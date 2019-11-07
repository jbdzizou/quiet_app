class QuietsController < ApplicationController
  def index
    @quiets = Quiet.all 
  end

  def show 
  end

  def new
    @quiet = Quiets.new
  end

  def create
  end

  def edit
  end
end
