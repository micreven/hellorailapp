class CourseTablesController < ApplicationController
  before_action :set_course_table, only: [:show, :edit, :update, :destroy]

  # GET /course_tables
  # GET /course_tables.json
  def index
    @course_tables = CourseTable.all
  end

  # GET /course_tables/1
  # GET /course_tables/1.json
  def show
  end

  # GET /course_tables/new
  def new
    @course_table = CourseTable.new
  end

  # GET /course_tables/1/edit
  def edit
  end

  # POST /course_tables
  # POST /course_tables.json
  def create
    @course_table = CourseTable.new(course_table_params)

    respond_to do |format|
      if @course_table.save
        format.html { redirect_to @course_table, notice: 'Course table was successfully created.' }
        format.json { render :show, status: :created, location: @course_table }
      else
        format.html { render :new }
        format.json { render json: @course_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_tables/1
  # PATCH/PUT /course_tables/1.json
  def update
    respond_to do |format|
      if @course_table.update(course_table_params)
        format.html { redirect_to @course_table, notice: 'Course table was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_table }
      else
        format.html { render :edit }
        format.json { render json: @course_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_tables/1
  # DELETE /course_tables/1.json
  def destroy
    @course_table.destroy
    respond_to do |format|
      format.html { redirect_to course_tables_url, notice: 'Course table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_table
      @course_table = CourseTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_table_params
      params.require(:course_table).permit(:coursename, :teachername, :coursenum, :courseroom, :avaliablenums)
    end
end
