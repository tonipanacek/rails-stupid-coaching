class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    @answer = if @question == "I'm going to work now"
      "Good for you!"
    elsif @question.include?("?")
      "Stupid question, try again"
    else
      "Get off your ass and get to work!"
    end
  end
end


