class MathWorksController < ApplicationController
  before_action :set_math_work, only: [:show, :edit, :update, :destroy]

  # GET /math_works
  # GET /math_works.json
  def index
    @math_works = MathWork.all
    @math_work = MathWork.new
  end

  # GET /math_works/1
  # GET /math_works/1.json
  def show
  end

  # GET /math_works/new
  def new
    @math_work = MathWork.new
  end

  # GET /math_works/1/edit
  def edit
  end

  # POST /math_works
  # POST /math_works.json
  def create
    @math_work = MathWork.new(math_work_params)

    respond_to do |format|
      if @math_work.save
        format.html { redirect_to math_works_url, notice: '新しい問題を追加しました' }
        format.json { render :show, status: :created, location: @math_work }
      else
        format.html { render :new }
        format.json { render json: @math_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /math_works/1
  # PATCH/PUT /math_works/1.json
  def update
    respond_to do |format|
      if @math_work.update(math_work_params)
        format.html { redirect_to @math_work, notice: 'Math work was successfully updated.' }
        format.json { render :show, status: :ok, location: @math_work }
      else
        format.html { render :edit }
        format.json { render json: @math_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /math_works/1
  # DELETE /math_works/1.json
  def destroy
    @math_work.destroy
    respond_to do |format|
      format.html { redirect_to math_works_url, notice: 'Math work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_math_work
      @math_work = MathWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def math_work_params
      params.require(:math_work).permit(:digit1, :digit2, :operator, :times, :id)
    end
end
