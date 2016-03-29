class TimeEntriesController < ApplicationController
  before_action :set_time_entries, only: [:show, :edit, :update, :destroy]

  def index
    @timeentries = TimeEntry.all
  end

  def new
    @timeentry = TimeEntry.new
  end

  def show
  end

  def create
    @timeentry = TimeEntry.new(timeentry_params)
    if @timeentry.save
      redirect_to @timeentry, notice: 'Time entry was successfully created.'
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @timeentry.destroy
    redirect_to time_entries_url, notice: 'Time entry was successfully destroyed.'
  end

  private
    def set_timeentry
      @timeentry = TimeEntry.find(params[:id])
    end

    def timeentry_params
      params.require(:timeentry).permit(:duration, :date)
    end
end
