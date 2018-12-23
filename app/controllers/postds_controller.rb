class PostdsController < ApplicationController
  before_action :set_postd, only: [:show, :edit, :update, :destroy]

  def index
    @postds = Postd.all
  end

  def show
  end

  def new
    @postd = Postd.new
  end

  def create
    @postd = Postd.new(postd_params)
    if (@postd.save)
      redirect_to @postd
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @postd.update_attributes(postd_params)
      redirect_to @postd
    else
      render :edit
    end
  end

  def destroy
    @postd.destroy
    redirect_to postds_path
  end

  private

  def postd_params
    params.require(:postd).permit(:title, :summary, :body, :image)
  end

  def set_postd
    @postd = Postd.find(params[:id])
  end
end