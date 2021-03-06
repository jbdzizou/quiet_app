class QuietsController < ApplicationController
  /before_action :authenticate_user!, only: [:show, :new]/
  before_action :find_quiet, only: [:show, :edit, :update, :destroy]
  before_action :find_comment, only: [:show]

  def index
    @quiets = Quiet.all.order("created_at DESC")
    @comments = Comment.all.order("created_at DESC")
  end

  def show
  end

  def new
    @quiet = current_user.quiets.build
  end

  def create
    @quiet = current_user.quiets.build(quiet_params)
    if @quiet.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @quiet.update(quiet_params)
      flash[:success] = "Data updated"
      redirect_to quiet_path
    else
      render 'edit'
    end
  end

  def destroy
    @quiet.destroy
    redirect_to root_path
  end

  private

  def quiet_params
    params.require(:quiet).permit(:name, :description, :store, :road, :recommend,:remove_store, :genre)
  end

  def find_quiet
    @quiet = Quiet.find(params[:id])
  end

  def find_comment
    @comment = @quiet.comments.find(params[:id])
end


end