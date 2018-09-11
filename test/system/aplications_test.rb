require "application_system_test_case"

class AplicationsTest < ApplicationSystemTestCase
  setup do
    @aplication = aplications(:one)
  end

  test "visiting the index" do
    visit aplications_url
    assert_selector "h1", text: "Aplications"
  end

  test "creating a Aplication" do
    visit aplications_url
    click_on "New Aplication"

    fill_in "Developer", with: @aplication.developer_id
    fill_in "Project", with: @aplication.project_id
    click_on "Create Aplication"

    assert_text "Aplication was successfully created"
    click_on "Back"
  end

  test "updating a Aplication" do
    visit aplications_url
    click_on "Edit", match: :first

    fill_in "Developer", with: @aplication.developer_id
    fill_in "Project", with: @aplication.project_id
    click_on "Update Aplication"

    assert_text "Aplication was successfully updated"
    click_on "Back"
  end

  test "destroying a Aplication" do
    visit aplications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aplication was successfully destroyed"
  end
end
