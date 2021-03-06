# WorkSchedulesController
class WorkSchedulesController < ApplicationController
  before_action :set_work_schedule, only: %i[show edit update destroy]

  def index
    @work_schedules = WorkSchedule.all
  end

  def show() end

  def new
    @work_schedule = WorkSchedule.new
  end

  def edit() end

  def create
    @work_schedule = WorkSchedule.new(work_schedule_params)

    respond_to do |format|
      if @work_schedule.save
        format.html { redirect_to @work_schedule, notice: 'Work schedule was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @work_schedule.update(work_schedule_params)
        format.html { redirect_to @work_schedule, notice: 'Work schedule was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @work_schedule.destroy
    respond_to do |format|
      format.html { redirect_to work_schedules_url, notice: 'Work schedule was successfully destroyed.' }
    end
  end

  private

  def set_work_schedule
    @work_schedule = WorkSchedule.find(params[:id])
  end

  def work_schedule_params
    params.require(:work_schedule).permit(:name, :company, :year, :holiday_id)
  end
end
