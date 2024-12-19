class PrefecturesController < ApplicationController
  def quiz
    @prefecture = Prefecture.order("RANDOM()").first
  end

  def check
    @prefecture = Prefecture.find(params[:prefecture_id])
    @answer = params[:answer]

    if @prefecture.name == @answer
      @result = "Correct! 🎉"
    else
      @result = "Wrong... 😢 The correct answer is #{@prefecture.name}."
    end

    render :result
  end
end
