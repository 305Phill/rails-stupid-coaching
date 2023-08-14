class QuestionsController < ApplicationController
  def ask

  end

  def answer
    # if question is == "i am going to work" return "great!"
    # elsif question.last == "?"
    # return "silly question, get dressed and go to work!"
    # else
    # @answer = "i dont care, get dressed and go to work!"
    @question = params[:question]

    if @question == "i am going to work"
      @answer = "great!"
    elsif @question.include? "?"
      @answer = "silly question, get dressed and go to work!"
    else
      @answer = "i dont care, get dressed and go to work!"
    end
  end

end
