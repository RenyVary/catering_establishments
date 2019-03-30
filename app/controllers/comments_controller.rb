class CommentsController < ApplicationController
  def create
    @estabilishment = CateringEstabilishment.find(params[:catering_estabilishemnt_id])
    @comment = @estabilishment.comments.create(comment_params)

    redirect_to @estabilishment
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end

end
