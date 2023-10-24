class QuestionsController < ApplicationController
  before_action :set_question, only: [:show]
  def top
    
  end
  
  def show
    @question = Question.find(params[:id])
    session[:current_question_id] = @question.id
  end

  def answer
    choice = Choice.find(params[:choice_id])
    if choice.correct
      # 正解数をカウントアップ
      session[:correct_answers] ||= 0
      session[:correct_answers] += 1
    end
  
    next_path = set_next_question
    if next_path == :result
      redirect_to result_path
    else
      redirect_to question_path(next_path)
    end
  end

  def result
    # セッションから正解数を取得し、ビューに渡す
    @result = session[:correct_answers].to_i
    # セッションをリセット
    session.clear
    #session[:correct_answers] = 0
  end

  def correct_answer
    
  end
  private

  def set_question
    @question = Question.find(params[:id])
  end

  def set_next_question
    session[:count] ||= 1
    session[:count] += 1
  
    if session[:count] > 8
      return :result
    else
      next_question = Question.where('id > ?', session[:current_question_id]).first
      return next_question ? next_question.id : Question.first.id
    end
  end
end
