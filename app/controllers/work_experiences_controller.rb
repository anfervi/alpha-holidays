class WorkExperiencesController < ApplicationController
  before_action :set_work_experience, only: %i[show edit update destroy]

  def index
    @q = WorkExperience.ransack(params[:q])
    @work_experience = @q.result(distinct: true)
    respond_to do |format|
      format.html
    end
  end

  def show
    @work_experience = WorkExperience.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
    @work_experience = WorkExperience.new
  end

  def edit
    @work_experience = WorkExperience.find(params[:id])
  end

  def create
    @work_experience = WorkExperience.new(work_experience_params)
    @work_experience.save
    respond_to do |format|
      if @work_experience.save
        format.html { redirect_to @work_experience, notice: 'Work experience was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @work_experience.update(work_experience_params)
        format.html { redirect_to @work_experience, notice: 'Work experience was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @work_experience.destroy
    respond_to do |format|
      format.html { redirect_to work_experiences_url, notice: 'Work experience was successfully destroyed.' }
    end
  end

  private

  def set_work_experience
    @work_experience = WorkExperience.find(params[:id]).first if params[:work_experience_id]
  end

  def work_experience_params
    params.require(:work_experience).permit(:start_date, :end_date, :position, :company, :city, :activities, :technologies, :curriculum_id)
  end
end
