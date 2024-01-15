class QuestionsController < ApplicationController
  def create
    @question = 'Ask!'
  end

  def couch_reply
    @couch_answer = if @answer == 'i am going to work'
                      'Great!'
                    elsif @answer[-1] == ('?')
                      'Silly question, get dressed and go to work!'
                    else
                      "I don't care, get dressed and go to work!"
                    end
  end

  def display
    @answer = params[:answer].downcase
    couch_reply
  end
end
