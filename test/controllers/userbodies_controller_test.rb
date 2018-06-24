require 'test_helper'

class UserbodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userbody = userbodies(:one)
  end

  test "should get index" do
    get userbodies_url
    assert_response :success
  end

  test "should get new" do
    get new_userbody_url
    assert_response :success
  end

  test "should create userbody" do
    assert_difference('Userbody.count') do
      post userbodies_url, params: { userbody: { bodyfat: @userbody.bodyfat, date: @userbody.date, weight: @userbody.weight } }
    end

    assert_redirected_to userbody_url(Userbody.last)
  end

  test "should show userbody" do
    get userbody_url(@userbody)
    assert_response :success
  end

  test "should get edit" do
    get edit_userbody_url(@userbody)
    assert_response :success
  end

  test "should update userbody" do
    patch userbody_url(@userbody), params: { userbody: { bodyfat: @userbody.bodyfat, date: @userbody.date, weight: @userbody.weight } }
    assert_redirected_to userbody_url(@userbody)
  end

  test "should destroy userbody" do
    assert_difference('Userbody.count', -1) do
      delete userbody_url(@userbody)
    end

    assert_redirected_to userbodies_url
  end
end
