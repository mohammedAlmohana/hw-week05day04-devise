require 'test_helper'

class Cars1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cars1 = cars1s(:one)
  end

  test "should get index" do
    get cars1s_url
    assert_response :success
  end

  test "should get new" do
    get new_cars1_url
    assert_response :success
  end

  test "should create cars1" do
    assert_difference('Cars1.count') do
      post cars1s_url, params: { cars1: { model: @cars1.model, name: @cars1.name, user_id: @cars1.user_id, year: @cars1.year } }
    end

    assert_redirected_to cars1_url(Cars1.last)
  end

  test "should show cars1" do
    get cars1_url(@cars1)
    assert_response :success
  end

  test "should get edit" do
    get edit_cars1_url(@cars1)
    assert_response :success
  end

  test "should update cars1" do
    patch cars1_url(@cars1), params: { cars1: { model: @cars1.model, name: @cars1.name, user_id: @cars1.user_id, year: @cars1.year } }
    assert_redirected_to cars1_url(@cars1)
  end

  test "should destroy cars1" do
    assert_difference('Cars1.count', -1) do
      delete cars1_url(@cars1)
    end

    assert_redirected_to cars1s_url
  end
end
