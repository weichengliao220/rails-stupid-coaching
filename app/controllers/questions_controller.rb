class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:question]
    @answer = ''
    if params[:question] == 'I am going to work.'
      @answer = 'Great!'
    elsif params[:question].end_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end
