class SurveysController < ApplicationController
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

  private

  def survey_params
    params.require(:survey).permit(:name, :address, :role, :meeting_feel, :comments)
  end
end
