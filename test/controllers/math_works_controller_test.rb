require 'test_helper'

class MathWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @math_work = math_works(:one)
  end

  test "should get index" do
    get math_works_url
    assert_response :success
  end

  test "should get new" do
    get new_math_work_url
    assert_response :success
  end

  test "should create math_work" do
    assert_difference('MathWork.count') do
      post math_works_url, params: { math_work: { digit1: @math_work.digit1, digit2: @math_work.digit2, operator: @math_work.operator, times: @math_work.times } }
    end

    assert_redirected_to math_work_url(MathWork.last)
  end

  test "should show math_work" do
    get math_work_url(@math_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_math_work_url(@math_work)
    assert_response :success
  end

  test "should update math_work" do
    patch math_work_url(@math_work), params: { math_work: { digit1: @math_work.digit1, digit2: @math_work.digit2, operator: @math_work.operator, times: @math_work.times } }
    assert_redirected_to math_work_url(@math_work)
  end

  test "should destroy math_work" do
    assert_difference('MathWork.count', -1) do
      delete math_work_url(@math_work)
    end

    assert_redirected_to math_works_url
  end
end
