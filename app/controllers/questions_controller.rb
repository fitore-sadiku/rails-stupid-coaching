class QuestionsController < ApplicationController
  def ask
    @question_asked = params[:question]
  end

  def answer
    @question_asked = params[:question]
    @answer = if params[:question] == "I am going to work"
            "Great!"
          elsif params[:question][-1] == ("?")
            "Silly question! Get dressed and get back to work!"
          else
            "I don't care, get dressed and go to work!"
          end
  end
end
