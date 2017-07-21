# CurriculumsController
class CurriculumsController < ApplicationController
  before_action :set_curriculum, only: %i[show edit update destroy]

  def index
    @q = Curriculum.ransack(params[:q])
    @curriculums = @q.result(distinct: true)
    respond_to do |format|
      format.html
    end
  end

  def show
    @curriculum = Curriculum.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
    @curriculum = Curriculum.new
  end

  def edit
    @curriculum = Curriculum.find(params[:id])
  end

  def create
    @curriculum = Curriculum.new(curriculum_params)
    @curriculum.save
    respond_to do |format|
      if @curriculum.save
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @curriculum.update(curriculum_params)
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @curriculum.destroy
    respond_to do |format|
      format.html { redirect_to curriculums_url, notice: 'Curriculum was successfully destroyed.' }
    end
  end

  private

  def set_curriculum
    @curriculum = Curriculum.find(params[:curriculum_id]).first if params[:curriculum_id]
  end

  def curriculum_params
    params.require(:curriculum).permit(:adress, :postal_code, :city, :phone, :birthdate, :nationality, :user_id)
  end
end
