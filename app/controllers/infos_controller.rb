class InfosController < ApplicationController
  # before_action :find_quiet, only: [:new, :create, :edit, :update, :destroy]
  
  def new
    @info = Info.new
  end

  def create
    @info = Info.new(info_params)

    # if @info.save
    #   redirect_to infos_url, notice: "yes,success"
    # else
    #   render 'new'
    # end
  end

  # def create
  #   @info = @quiet.info.create(info_params)

  #   if @info.save
  #       redirect_to quiet_path(@quiet)
  #   else
  #       render 'edit'
  #   end
  # end
  

  def edit
  end



  private

  def info_params
    params.require(:info).permit(:name, :description, :road, :quiet_id)
  end

  # def find_quiet
  #   @quiet = Quiet.find(params[:id])
  # end
  
end
