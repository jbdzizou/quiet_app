class QuietsController < ApplicationController
  def index
    @quiets = Quiet.all 
  end

  def show 
  end

  def new
    @quiet = current_user.quiet.build
  end

  def create
  end

  def edit
  end
end
