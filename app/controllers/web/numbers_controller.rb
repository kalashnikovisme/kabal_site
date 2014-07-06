require 'kabal'

class Web::NumbersController < Web::ApplicationController
  def new
    @number = Number.new
  end

  def create
    number = Number.where value: params[:value], language: params[:language]
    if number.any?
      redirect_to number_path(number.first)
    else
      @number = Number.new params[:number]
      if @number.save
        redirect_to number_path(@number), flash: :success
      else
        render :new, flash: :error
      end
    end
  end

  include Kabal

  def show
    @new_number = Number.new
    @number = Number.find(params[:id]).decorate
    @number_as_words = to_text_in_language @number.value.to_i, @number.language
    @comment = Comment.new
  end

  def wrong
    @number = Number.find params[:id]
    if @number.update_attributes params[:number]
      redirect_to @number, flash: :success
    else
      redirect_to @number, flash: :error
    end
  end
end
