class HolidaysController < ApplicationController
  before_action :set_holiday, only: [:show, :edit, :update, :destroy]
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def index
    @q = Holiday.ransack(params[:q])
    @holidays = @q.result(distinct:true)
  end

  def show
    @holiday = Holiday.find(params[:id])
  end

  def new
    @holiday = Holiday.new
  end

  def edit
    @holiday = Holiday.find(params[:id])
  end

  def create
    @holiday = Holiday.new(holiday_params)
    @holiday.save

    respond_to do |format|
      if @holiday.save
        format.html { redirect_to @holiday, notice: 'Holiday was successfully created.' }
        format.json { render :show, status: :created, location: @holiday }
      else
        format.html { render :new }
        format.json { render json: @holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @holiday.update(holiday_params)
        format.html { redirect_to @holiday, notice: 'Holiday was successfully updated.' }
        format.json { render :show, status: :ok, location: @holiday }
      else
        format.html { render :edit }
        format.json { render json: @holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @holiday.destroy
    respond_to do |format|
      format.html { redirect_to holidays_url, notice: 'Holiday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def validate
    @holiday = authorize Holiday.find(params[:id])
    authorize @holiday
    if @holiday.status
      if @holiday.status = 1
        @holiday.status = 0
        @holiday.save
      end
    else
      @requested_holidays.status = 0
      @requested_holidays.save
    end
    respond_to do |format|
      format.html { redirect_to holidays_url, notice: 'Holiday was successfully validated.' }
      format.json { head :no_content }
    end

  end

  def reject
    @holiday = authorize Holiday.find(params[:id])
    authorize @holiday
    if @holiday.status
      if @holiday.status = 0
        @holiday.status = 1
        @holiday.save
      end
    else
      @requested_holidays.status = 1
      @requested_holidays.save
    end
    respond_to do |format|
      format.html { redirect_to holidays_url, notice: 'Holiday was successfully rejected.' }
      format.json { head :no_content }
    end

  end

  private

    def set_holiday
      @holiday = Holiday.find(params[:holiday_id]).first if params[:holiday_id]
    end

    def user_not_authorized
      flash[:error] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end

    def holiday_params
      params.require(:holiday).permit(:year, :status, :validator_id, :validated_at, :title, :description, :start_day, :end_day, :user_id)
    end
end
