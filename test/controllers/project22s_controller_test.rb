require "test_helper"

class Project22sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project22 = project22s(:one)
  end

  test "should get index" do
    get project22s_url
    assert_response :success
  end

  test "should get new" do
    get new_project22_url
    assert_response :success
  end

  test "should create project22" do
    assert_difference("Project22.count") do
      post project22s_url, params: { project22: {  } }
    end

    assert_redirected_to project22_url(Project22.last)
  end

  test "should show project22" do
    get project22_url(@project22)
    assert_response :success
  end

  test "should get edit" do
    get edit_project22_url(@project22)
    assert_response :success
  end

  test "should update project22" do
    patch project22_url(@project22), params: { project22: {  } }
    assert_redirected_to project22_url(@project22)
  end

  test "should destroy project22" do
    assert_difference("Project22.count", -1) do
      delete project22_url(@project22)
    end

    assert_redirected_to project22s_url
  end
end
