class QuestionsController < ApplicationController
  def ask
  end


  def answer
    @question = params[:question]
    @response = "I don't care, get dressed and go to work!"

    @response = 'Great!' if @question.include? 'I am going to work'
    @response = 'Silly question, get dressed and go to work!.' if @question.include? '?'
  end

end
