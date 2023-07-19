require "application_system_test_case"

class NewProjectsTest < ApplicationSystemTestCase
  setup do
    @new_project = new_projects(:one)
  end

  test "visiting the index" do
    visit new_projects_url
    assert_selector "h1", text: "New projects"
  end

  test "should create new project" do
    visit new_projects_url
    click_on "New new project"

    click_on "Create New project"

    assert_text "New project was successfully created"
    click_on "Back"
  end

  test "should update New project" do
    visit new_project_url(@new_project)
    click_on "Edit this new project", match: :first

    click_on "Update New project"

    assert_text "New project was successfully updated"
    click_on "Back"
  end

  test "should destroy New project" do
    visit new_project_url(@new_project)
    click_on "Destroy this new project", match: :first

    assert_text "New project was successfully destroyed"
  end
end
