class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    p @question
    p @question.include? '?'
    if @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
      p @answer
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
