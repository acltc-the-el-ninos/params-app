class PagesController < ApplicationController
  @@answer = rand(1..100)

  def home
  end

  def params_example
    @message = params[:message]
    @second_message = params[:second_message]
  end

  def name
    if params[:name]
      @name = params[:name].upcase
      if @name.start_with?("A")
        @message = "I don't know if you knew this, but your name starts with a"
      end
    else
      @name = "you didn't give me a name man!"
    end
  end

  def number
    guess = params[:guess].to_i
    if guess > @@answer
      @message = "Your guess was too high!"
    elsif guess < @@answer
      @message = "Your guess was too low!"
    else
      @message = "Your guess was juuuust right!"
    end
  end

  def url_params_example
    @message = params[:de_stuff]
  end

  def form_display
  end

  def form_result
    @the_message = params[:message]
  end
end
