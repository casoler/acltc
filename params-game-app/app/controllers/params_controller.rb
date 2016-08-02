class ParamsController < ApplicationController

  def params_game_app
    @my_name = params[:my_name]
    puts @my_name[0]
    if @my_name[0].downcase == 'c'
      @my_message = 'Hey, your name starts with the third letter of the alphabet!'
    end
  end

  def guess_number
    if params[:guess].to_i > 36
      @my_guess = 'lower'
    elsif params[:guess].to_i < 36
      @my_guess = 'higher'
    else
      @my_guess = 'you win!'
    end
  end

  def guess_number_again
    if params[:guess].to_i > 36
      @my_guess = 'lower'
    elsif params[:guess].to_i < 36
      @my_guess = 'higher'
    else
      @my_guess = 'you win!'
    end
  end

  def form_show
  end

  def form_return
    if params[:guess].to_i > 36
      @my_guess = 'lower'
    elsif params[:guess].to_i < 36
      @my_guess = 'higher'
    else
      @my_guess = 'you win!'
    end
    render :form_show
  end
end
