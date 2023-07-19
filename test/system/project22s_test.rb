require "application_system_test_case"

class Project22sTest < ApplicationSystemTestCase
  setup do
    @project22 = project22s(:one)
  end

  test "visiting the index" do
    visit project22s_url
    assert_selector "h1", text: "Project22s"
  end

  test "should create project22" do
    visit project22s_url
    click_on "New project22"

    click_on "Create Project22"

    assert_text "Project22 was successfully created"
    click_on "Back"
  end

  test "should update Project22" do
    visit project22_url(@project22)
    click_on "Edit this project22", match: :first

    click_on "Update Project22"

    assert_text "Project22 was successfully updated"
    click_on "Back"
  end

  test "should destroy Project22" do
    visit project22_url(@project22)
    click_on "Destroy this project22", match: :first

    assert_text "Project22 was successfully destroyed"
  end
end
