require 'kabal'

class Web::NumbersController < Web::ApplicationController
  def new
    @number = Number.new
  end

  def create
    @number = Number.new params[:number]
    if @number.save
      redirect_to number_path(@number), flash: :success
    else
      render :new, flash: :error
    end
  end

  include Kabal

  def show
    @new_number = Number.new
    @number = Number.find params[:id]
    @number_as_words = to_text @number.value.to_i
  end
end
