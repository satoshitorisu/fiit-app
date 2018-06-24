require 'test_helper'

class TrainingitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trainingitem = trainingitems(:one)
  end

  test "should get index" do
    get trainingitems_url
    assert_response :success
  end

  test "should get new" do
    get new_trainingitem_url
    assert_response :success
  end

  test "should create trainingitem" do
    assert_difference('Trainingitem.count') do
      post trainingitems_url, params: { trainingitem: { description: @trainingitem.description, name: @trainingitem.name, status: @trainingitem.status } }
    end

    assert_redirected_to trainingitem_url(Trainingitem.last)
  end

  test "should show trainingitem" do
    get trainingitem_url(@trainingitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_trainingitem_url(@trainingitem)
    assert_response :success
  end

  test "should update trainingitem" do
    patch trainingitem_url(@trainingitem), params: { trainingitem: { description: @trainingitem.description, name: @trainingitem.name, status: @trainingitem.status } }
    assert_redirected_to trainingitem_url(@trainingitem)
  end

  test "should destroy trainingitem" do
    assert_difference('Trainingitem.count', -1) do
      delete trainingitem_url(@trainingitem)
    end

    assert_redirected_to trainingitems_url
  end
end
