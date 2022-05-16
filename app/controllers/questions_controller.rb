class QuestionsController < ApplicationController
  def ask
    params[:question]
  end

  def answer
    client_question = params[:question]
    if client_question == 'I am going to work'
      @coach_answer = 'Great!'
    elsif client_question.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!."
    end
  end
end
