class QuestionsController < ApplicationController
  def index
    @questions = Question.where(location_id: params[:location_id])
  end

  def new
    @question = Question.new
    @question_answer = QuestionAnswer.new
  end

  def create
    @question = Question.new(question_params)
    @question.location_id = params[:location_id]
    if @question.save
      @answer = QuestionAnswer.new(answer_params)
      @answer.question_id = @question.id
      if @answer.save
        redirect_to location_questions_path(location_id: params[:location_id])
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  private

  def question_params
    params.require(:question).permit(:question)
  end

  def answer_params
    params.require(:question_answer).permit(:answer)
  end
end
