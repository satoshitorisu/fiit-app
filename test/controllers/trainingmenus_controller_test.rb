require 'test_helper'

class TrainingmenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trainingmenu = trainingmenus(:one)
  end

  test "should get index" do
    get trainingmenus_url
    assert_response :success
  end

  test "should get new" do
    get new_trainingmenu_url
    assert_response :success
  end

  test "should create trainingmenu" do
    assert_difference('Trainingmenu.count') do
      post trainingmenus_url, params: { trainingmenu: { date: @trainingmenu.date } }
    end

    assert_redirected_to trainingmenu_url(Trainingmenu.last)
  end

  test "should show trainingmenu" do
    get trainingmenu_url(@trainingmenu)
    assert_response :success
  end

  test "should get edit" do
    get edit_trainingmenu_url(@trainingmenu)
    assert_response :success
  end

  test "should update trainingmenu" do
    patch trainingmenu_url(@trainingmenu), params: { trainingmenu: { date: @trainingmenu.date } }
    assert_redirected_to trainingmenu_url(@trainingmenu)
  end

  test "should destroy trainingmenu" do
    assert_difference('Trainingmenu.count', -1) do
      delete trainingmenu_url(@trainingmenu)
    end

    assert_redirected_to trainingmenus_url
  end
end
