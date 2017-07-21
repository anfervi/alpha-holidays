# EducationsController
class EducationsController < ApplicationController
  before_action :set_education, only: %i[show edit update destroy]

  def index
    @educations = Education.all
    @q = Education.ransack(params[:q])
    @educations = @q.result(distinct: true)
    respond_to do |format|
      format.html
    end
  end

  def show
    @education = Education.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
    @education = Education.new
  end

  def edit
    @education = Education.find(params[:id])
  end

  def create
    @education = Education.new(education_params)
    @education.save
    respond_to do |format|
      if @education.save
        format.html { redirect_to @education, notice: 'Education was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to @education, notice: 'Education was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @education.destroy
    respond_to do |format|
      format.html { redirect_to educations_url, notice: 'Education was successfully destroyed.' }
    end
  end

  private

  def set_education
    @education = Education.find(params[:education_id]).first if params[:education_id]
  end

  def education_params
    params.require(:education).permit(:type, :start_date, :end_date, :title, :center, :city, :duration, :curriculum_id)
  end
end
