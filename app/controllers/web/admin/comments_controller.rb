class Web::Admin::CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find params[:id]
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def create
    @comment = Comment.new params[:comment]
    if @comment.save
      redirect_to admin_comments_path, flash: :success
    else
      render action: :new, flash: :error
    end
  end

  def update
    @comment = Comment.find params[:id]
    if @comment.update_attributes params[:comment]
      redirect_to admin_comments_path, flash: :success
    else
      render action: :edit, flash: :error
    end
  end

  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
    redirect_to admin_comments_path, flash: :success
  end
end
