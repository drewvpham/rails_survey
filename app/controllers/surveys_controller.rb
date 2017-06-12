class SurveysController < ApplicationController
  def index
    session[:views] ||=0
  end

  def process_survey
    session[:views] += 1
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{ session[:views] } time(s) now."
    session[:result] = params[:survey]
    redirect_to '/surveys/result'
  
  end

  def result
    @result = session[:result]

  end
end
