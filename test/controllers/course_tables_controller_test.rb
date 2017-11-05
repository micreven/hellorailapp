require 'test_helper'

class CourseTablesControllerTest < ActionController::TestCase
  setup do
    @course_table = course_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_table" do
    assert_difference('CourseTable.count') do
      post :create, course_table: { avaliablenums: @course_table.avaliablenums, coursename: @course_table.coursename, coursenum: @course_table.coursenum, courseroom: @course_table.courseroom, teachername: @course_table.teachername }
    end

    assert_redirected_to course_table_path(assigns(:course_table))
  end

  test "should show course_table" do
    get :show, id: @course_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_table
    assert_response :success
  end

  test "should update course_table" do
    patch :update, id: @course_table, course_table: { avaliablenums: @course_table.avaliablenums, coursename: @course_table.coursename, coursenum: @course_table.coursenum, courseroom: @course_table.courseroom, teachername: @course_table.teachername }
    assert_redirected_to course_table_path(assigns(:course_table))
  end

  test "should destroy course_table" do
    assert_difference('CourseTable.count', -1) do
      delete :destroy, id: @course_table
    end

    assert_redirected_to course_tables_path
  end
end
