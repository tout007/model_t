require "test_helper"

class CookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cooking = cookings(:one)
  end

  test "should get index" do
    get cookings_url
    assert_response :success
  end

  test "should get new" do
    get new_cooking_url
    assert_response :success
  end

  test "should create cooking" do
    assert_difference('Cooking.count') do
      post cookings_url, params: { cooking: { active: @cooking.active, receipe: @cooking.receipe, title: @cooking.title } }
    end

    assert_redirected_to cooking_url(Cooking.last)
  end

  test "should show cooking" do
    get cooking_url(@cooking)
    assert_response :success
  end

  test "should get edit" do
    get edit_cooking_url(@cooking)
    assert_response :success
  end

  test "should update cooking" do
    patch cooking_url(@cooking), params: { cooking: { active: @cooking.active, receipe: @cooking.receipe, title: @cooking.title } }
    assert_redirected_to cooking_url(@cooking)
  end

  test "should destroy cooking" do
    assert_difference('Cooking.count', -1) do
      delete cooking_url(@cooking)
    end

    assert_redirected_to cookings_url
  end
end
