# require "byebug"
class QuestionsController < ApplicationController
  def ask
    @question = params[:question]

  end


  def answers
    if ask == "I am going to work"
      @answers = "Great!"
    elsif ask.end_with?("?")
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work"
    end
  end
end
