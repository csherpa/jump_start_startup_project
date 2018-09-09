require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { assets_audio: @project.assets_audio, assets_database: @project.assets_database, assets_images: @project.assets_images, assets_text: @project.assets_text, assets_videos: @project.assets_videos, developer_id: @project.developer_id, due_date_less_then_month: @project.due_date_less_then_month, due_date_one_month: @project.due_date_one_month, due_date_plus_three_month: @project.due_date_plus_three_month, due_date_three_month: @project.due_date_three_month, employer_id: @project.employer_id, pages_landing_pages: @project.pages_landing_pages, pages_two_pages: @project.pages_two_pages, platform_tablet: @project.platform_tablet, plattform_desktop: @project.plattform_desktop, plattform_mobile: @project.plattform_mobile, project_description: @project.project_description, project_name: @project.project_name, project_review: @project.project_review } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { assets_audio: @project.assets_audio, assets_database: @project.assets_database, assets_images: @project.assets_images, assets_text: @project.assets_text, assets_videos: @project.assets_videos, developer_id: @project.developer_id, due_date_less_then_month: @project.due_date_less_then_month, due_date_one_month: @project.due_date_one_month, due_date_plus_three_month: @project.due_date_plus_three_month, due_date_three_month: @project.due_date_three_month, employer_id: @project.employer_id, pages_landing_pages: @project.pages_landing_pages, pages_two_pages: @project.pages_two_pages, platform_tablet: @project.platform_tablet, plattform_desktop: @project.plattform_desktop, plattform_mobile: @project.plattform_mobile, project_description: @project.project_description, project_name: @project.project_name, project_review: @project.project_review } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
