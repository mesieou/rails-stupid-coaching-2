class QuestionsController < ApplicationController
  def create
    @question = 'Ask!'
  end

  def couch_reply(answer)
    if @answer == 'i am going to work'
      @couch_answer = 'Great!'
      @couch_answer
    elsif @answer[-1] == ('?')
      @couch_answer = 'Silly question, get dressed and go to work!'
      @couch_answer
    else
      @couch_answer = "I don't care, get dressed and go to work!"
    end
  end

  def display
    @answer = params[:answer].downcase
    couch_reply(@answer)
  end
end
