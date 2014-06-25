class Web::CommentsController < ApplicationController
  def create
    @comment = Comment.new params[:comment]
    if @comment.save
      redirect_to number_path(@comment.number), flash: :success
    else
      redirect_to number_path(params[:comment][:number_id]), flash: :error
    end
  end
end
