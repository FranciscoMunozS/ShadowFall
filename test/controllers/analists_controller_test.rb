require 'test_helper'

class AnalistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analist = analists(:one)
  end

  test "should get index" do
    get analists_url
    assert_response :success
  end

  test "should get new" do
    get new_analist_url
    assert_response :success
  end

  test "should create analist" do
    assert_difference('Analist.count') do
      post analists_url, params: { analist: { name: @analist.name } }
    end

    assert_redirected_to analist_url(Analist.last)
  end

  test "should show analist" do
    get analist_url(@analist)
    assert_response :success
  end

  test "should get edit" do
    get edit_analist_url(@analist)
    assert_response :success
  end

  test "should update analist" do
    patch analist_url(@analist), params: { analist: { name: @analist.name } }
    assert_redirected_to analist_url(@analist)
  end

  test "should destroy analist" do
    assert_difference('Analist.count', -1) do
      delete analist_url(@analist)
    end

    assert_redirected_to analists_url
  end
end
