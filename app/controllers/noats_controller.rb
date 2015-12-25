class NoatsController < ApplicationController
  def index
    @noats = Noat.all
  end

  def new
    @noat = Noat.new
  end

  def create
    @noat = Noat.create(noat_params)
    redirect_to root_path
  end

  def edit
    @noat = Noat.find(params[:id])
  end

  def update
    @noat = Noat.find(params[:id]) 
    @noat.update(noat_params)
        redirect_to root_path
  end

  def destroy
    @noat = Noat.find(params[:id])
    @noat.destroy
    redirect_to noats_path
  end

  private
    def noat_params
    params.require(:noat).permit(:title, :description)
  end
end