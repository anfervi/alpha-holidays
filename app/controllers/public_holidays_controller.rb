# PublicHolidaysController
class PublicHolidaysController < ApplicationController
  before_action :set_public_holiday, only: %i[show edit update destroy]

  def index
    @public_holidays = PublicHoliday.all
  end

  def show() end

  def new
    @public_holiday = PublicHoliday.new
  end

  def edit() end

  def create
    @public_holiday = PublicHoliday.new(public_holiday_params)

    respond_to do |format|
      if @public_holiday.save
        format.html { redirect_to @public_holiday, notice: 'Public holiday was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @public_holiday.update(public_holiday_params)
        format.html { redirect_to @public_holiday, notice: 'Public holiday was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @public_holiday.destroy
    respond_to do |format|
      format.html { redirect_to public_holidays_url, notice: 'Public holiday was successfully destroyed.' }
    end
  end

  private

  def set_public_holiday
    @public_holiday = PublicHoliday.find(params[:id])
  end

  def public_holiday_params
    params.require(:public_holiday).permit(:name, :day, :work_calendar_id)
  end
end
