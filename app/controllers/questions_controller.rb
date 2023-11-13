class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_question = params[:question]
    @coach_answer = ''
    @stop_message = "I am going to work right now!"
    if @user_question == @stop_message
      @coach_answer = "Great!"
    elsif
      @user_question.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"

    end
  end
end
