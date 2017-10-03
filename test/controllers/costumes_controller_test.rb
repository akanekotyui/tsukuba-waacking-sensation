require 'test_helper'

class CostumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @costume = costumes(:one)
  end

  test "should get index" do
    get costumes_url
    assert_response :success
  end

  test "should get new" do
    get new_costume_url
    assert_response :success
  end

  test "should create costume" do
    assert_difference('Costume.count') do
      post costumes_url, params: { costume: { comment: @costume.comment, item: @costume.item, name: @costume.name, url: @costume.url } }
    end

    assert_redirected_to costume_url(Costume.last)
  end

  test "should show costume" do
    get costume_url(@costume)
    assert_response :success
  end

  test "should get edit" do
    get edit_costume_url(@costume)
    assert_response :success
  end

  test "should update costume" do
    patch costume_url(@costume), params: { costume: { comment: @costume.comment, item: @costume.item, name: @costume.name, url: @costume.url } }
    assert_redirected_to costume_url(@costume)
  end

  test "should destroy costume" do
    assert_difference('Costume.count', -1) do
      delete costume_url(@costume)
    end

    assert_redirected_to costumes_url
  end
end
