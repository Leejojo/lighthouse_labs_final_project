module Api
  class QuizzesController < ApiController

    def show
      quiz = Quiz.find(params[:id])
      render json: quiz.as_json(include: {categories: {include: {questions: {include: {choices: {only: :text}}}}}})
    end

  end
end