require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Assets Audio", with: @project.assets_audio
    fill_in "Assets Database", with: @project.assets_database
    fill_in "Assets Images", with: @project.assets_images
    fill_in "Assets Text", with: @project.assets_text
    fill_in "Assets Videos", with: @project.assets_videos
    fill_in "Developer", with: @project.developer_id
    fill_in "Due Date Less Then Month", with: @project.due_date_less_then_month
    fill_in "Due Date One Month", with: @project.due_date_one_month
    fill_in "Due Date Plus Three Month", with: @project.due_date_plus_three_month
    fill_in "Due Date Three Month", with: @project.due_date_three_month
    fill_in "Employer", with: @project.employer_id
    fill_in "Pages Landing Pages", with: @project.pages_landing_pages
    fill_in "Pages Two Pages", with: @project.pages_two_pages
    fill_in "Platform Tablet", with: @project.platform_tablet
    fill_in "Plattform Desktop", with: @project.plattform_desktop
    fill_in "Plattform Mobile", with: @project.plattform_mobile
    fill_in "Project Description", with: @project.project_description
    fill_in "Project Name", with: @project.project_name
    fill_in "Project Review", with: @project.project_review
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Assets Audio", with: @project.assets_audio
    fill_in "Assets Database", with: @project.assets_database
    fill_in "Assets Images", with: @project.assets_images
    fill_in "Assets Text", with: @project.assets_text
    fill_in "Assets Videos", with: @project.assets_videos
    fill_in "Developer", with: @project.developer_id
    fill_in "Due Date Less Then Month", with: @project.due_date_less_then_month
    fill_in "Due Date One Month", with: @project.due_date_one_month
    fill_in "Due Date Plus Three Month", with: @project.due_date_plus_three_month
    fill_in "Due Date Three Month", with: @project.due_date_three_month
    fill_in "Employer", with: @project.employer_id
    fill_in "Pages Landing Pages", with: @project.pages_landing_pages
    fill_in "Pages Two Pages", with: @project.pages_two_pages
    fill_in "Platform Tablet", with: @project.platform_tablet
    fill_in "Plattform Desktop", with: @project.plattform_desktop
    fill_in "Plattform Mobile", with: @project.plattform_mobile
    fill_in "Project Description", with: @project.project_description
    fill_in "Project Name", with: @project.project_name
    fill_in "Project Review", with: @project.project_review
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
