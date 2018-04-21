require 'test_helper'

class ActivitiesDonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activities_done = activities_dones(:one)
  end

  test "should get index" do
    get activities_dones_url
    assert_response :success
  end

  test "should get new" do
    get new_activities_done_url
    assert_response :success
  end

  test "should create activities_done" do
    assert_difference('ActivitiesDone.count') do
      post activities_dones_url, params: { activities_done: { activities_id: @activities_done.activities_id, user_id: @activities_done.user_id } }
    end

    assert_redirected_to activities_done_url(ActivitiesDone.last)
  end

  test "should show activities_done" do
    get activities_done_url(@activities_done)
    assert_response :success
  end

  test "should get edit" do
    get edit_activities_done_url(@activities_done)
    assert_response :success
  end

  test "should update activities_done" do
    patch activities_done_url(@activities_done), params: { activities_done: { activities_id: @activities_done.activities_id, user_id: @activities_done.user_id } }
    assert_redirected_to activities_done_url(@activities_done)
  end

  test "should destroy activities_done" do
    assert_difference('ActivitiesDone.count', -1) do
      delete activities_done_url(@activities_done)
    end

    assert_redirected_to activities_dones_url
  end
end
