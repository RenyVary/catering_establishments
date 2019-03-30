class CateringEstabilishmentsController < ApplicationController
  def index
    @estabilishments = CateringEstabilishment.all
  end

  def new
    @estabilishment = CateringEstabilishment.new
  end

  def show
    @estabilishment = CateringEstabilishment.find(params[:id])
  end
  
  def create
    @estabilishment = CateringEstabilishment.new(catering_estabilishment_params)
    if  @estabilishment.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @estabilishment = CateringEstabilishment.find(params[:id])
    @estabilishment.destroy
    redirect_to root_path
  end

  def catering_estabilishment_params
    params.require(:catering_estabilishment).permit(:title, :description, :category_id, :comment_id, pictures: [])
  end
end
