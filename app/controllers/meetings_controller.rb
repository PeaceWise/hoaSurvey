class MeetingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  # Display a list of all meetings with pagination
  def index
    @meetings = Meeting.order(date: :desc).page(params[:page]).per(5)
  end

  # Display the form for creating a new meeting
  def new
    @meeting = Meeting.new
  end

  # Handle the creation of a new meeting
  def create
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to meetings_path, notice: 'Meeting was successfully created.'
    else
      render :new, alert: 'There was an error creating the meeting.'
    end
  end

  private

  # Strong parameters to only permit the allowed attributes
  def meeting_params
    params.require(:meeting).permit(:date, :topic, :description)
  end
end
