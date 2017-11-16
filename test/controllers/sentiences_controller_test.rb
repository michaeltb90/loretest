require 'test_helper'

class SentiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sentience = sentiences(:one)
  end

  test "should get index" do
    get sentiences_url
    assert_response :success
  end

  test "should get new" do
    get new_sentience_url
    assert_response :success
  end

  test "should create sentience" do
    assert_difference('Sentience.count') do
      post sentiences_url, params: { sentience: { name: @sentience.name } }
    end

    assert_redirected_to sentience_url(Sentience.last)
  end

  test "should show sentience" do
    get sentience_url(@sentience)
    assert_response :success
  end

  test "should get edit" do
    get edit_sentience_url(@sentience)
    assert_response :success
  end

  test "should update sentience" do
    patch sentience_url(@sentience), params: { sentience: { name: @sentience.name } }
    assert_redirected_to sentience_url(@sentience)
  end

  test "should destroy sentience" do
    assert_difference('Sentience.count', -1) do
      delete sentience_url(@sentience)
    end

    assert_redirected_to sentiences_url
  end
end
