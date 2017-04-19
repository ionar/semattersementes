require 'test_helper'

class CultivationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cultivation = cultivations(:one)
  end

  test "should get index" do
    get cultivations_url
    assert_response :success
  end

  test "should get new" do
    get new_cultivation_url
    assert_response :success
  end

  test "should create cultivation" do
    assert_difference('Cultivation.count') do
      post cultivations_url, params: { cultivation: { description: @cultivation.description, name: @cultivation.name } }
    end

    assert_redirected_to cultivation_url(Cultivation.last)
  end

  test "should show cultivation" do
    get cultivation_url(@cultivation)
    assert_response :success
  end

  test "should get edit" do
    get edit_cultivation_url(@cultivation)
    assert_response :success
  end

  test "should update cultivation" do
    patch cultivation_url(@cultivation), params: { cultivation: { description: @cultivation.description, name: @cultivation.name } }
    assert_redirected_to cultivation_url(@cultivation)
  end

  test "should destroy cultivation" do
    assert_difference('Cultivation.count', -1) do
      delete cultivation_url(@cultivation)
    end

    assert_redirected_to cultivations_url
  end
end
