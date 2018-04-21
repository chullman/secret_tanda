require 'test_helper'

class ActivityDonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_done = activity_dones(:one)
  end

  test "should get index" do
    get activity_dones_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_done_url
    assert_response :success
  end

  test "should create activity_done" do
    assert_difference('ActivityDone.count') do
      post activity_dones_url, params: { activity_done: { activity_id: @activity_done.activity_id, user_id: @activity_done.user_id } }
    end

    assert_redirected_to activity_done_url(ActivityDone.last)
  end

  test "should show activity_done" do
    get activity_done_url(@activity_done)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_done_url(@activity_done)
    assert_response :success
  end

  test "should update activity_done" do
    patch activity_done_url(@activity_done), params: { activity_done: { activity_id: @activity_done.activity_id, user_id: @activity_done.user_id } }
    assert_redirected_to activity_done_url(@activity_done)
  end

  test "should destroy activity_done" do
    assert_difference('ActivityDone.count', -1) do
      delete activity_done_url(@activity_done)
    end

    assert_redirected_to activity_dones_url
  end
end
