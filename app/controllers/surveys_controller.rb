class SurveysController < ApplicationController

 #This is for the new survey form
  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to new_survey_path, notice: "Thank you for submitting the survey!"
    else
      render :new, alert: "There was a problem with your submission."
    end  
  end

#This is for the viewing page for all of the survey submissions.
  def index
    @surveys = Survey.all
  end
  


  private

  def survey_params
    params.require(:survey).permit(:name, :address, :role, :meeting_feel, :comments)
  end
end
