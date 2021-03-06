# HolidaysController
class HolidaysController < ApplicationController
  before_action :set_holiday, only: %i[show edit update destroy]

  def index
    @q = Holiday.ransack(params[:q])
    @holidays = @q.result(distinct: true)
    respond_to do |format|
      format.html
      format.csv { send_data @holidays.as_csv }
      format.pdf do
        html = render_to_string template: 'holidays/index.pdf.slim'
        pdf = PDFKit.new(html, encoding: 'UTF-8')
        send_data pdf.to_pdf, type: 'application/pdf'
      end
    end
  end

  def show
    @holiday = Holiday.find(params[:id])
    authorize @holiday
    respond_to do |format|
      format.html
      format.pdf do
        html = render_to_string template: 'holidays/show.pdf.slim'
        pdf = PDFKit.new(html, encoding: 'UTF-8')
        send_data pdf.to_pdf, type: 'application/pdf'
      end
    end
  end

  def new
    @holiday = Holiday.new
    authorize @holiday
  end

  def edit
    @holiday = Holiday.find(params[:id])
    authorize @holiday
  end

  def create
    @holiday = Holiday.new(holiday_params)
    authorize @holiday
    @holiday.save
    respond_to do |format|
      if @holiday.save
        format.html { redirect_to @holiday, notice: 'Holiday was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    authorize @holiday
    respond_to do |format|
      if @holiday.update(holiday_params)
        format.html { redirect_to @holiday, notice: 'Holiday was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    authorize @holiday
    @holiday.destroy
    respond_to do |format|
      format.html { redirect_to holidays_url, notice: 'Holiday was successfully destroyed.' }
    end
  end

  def validate
    @holiday = Holiday.find(params[:id])
    authorize @holiday
    @holiday.status = 0
    @holiday.save
    respond_to do |format|
      format.html { redirect_to holidays_url, notice: 'Holiday was successfully validated.' }
    end
  end

  def reject
    @holiday = Holiday.find(params[:id])
    authorize @holiday
    @holiday.status = 1
    @holiday.save
    respond_to do |format|
      format.html { redirect_to holidays_url, notice: 'Holiday was successfully rejected.' }
    end
  end

  private

  def set_holiday
    @holiday = Holiday.find(params[:holiday_id]).first if params[:holiday_id]
  end

  def user_not_authorized
    flash[:error] = 'You are not authorized to perform this action.'
    redirect_to(request.referrer || root_path)
  end

  def holiday_params
    params.require(:holiday).permit(:year, :status, :validator_id, :validated_at, :title, :description, :start_day,
                                    :end_day, :user_id)
  end
end
