class QuestionsController < ApplicationController
  before_action :set_question, only: [:show]
  
  def show
    @question
    session[:current_question_id] = @question.id
  end

  def answer
    choice = Choice.find(params[:choice_id])
    Answer.create(choice: choice)
    redirect_to quiz_path(set_next_question)
  end

  private

  def set_question
    @question = Question.find(params[:id])
    #@question = Question.first
    #@question = Question.find(session[:current_question_id] || Question.first.id)
  end

  def set_next_question
    next_question = Question.where('id > ?', session[:current_question_id]).first
    next_question || Question.first
  end
end
