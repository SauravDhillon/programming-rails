require "application_system_test_case"

class ProgrammingRailsTest < ApplicationSystemTestCase
  setup do
    @programming_rail = programming_rails(:one)
  end

  test "visiting the index" do
    visit programming_rails_url
    assert_selector "h1", text: "Programming rails"
  end

  test "should create programming rail" do
    visit programming_rails_url
    click_on "New programming rail"

    fill_in "Description", with: @programming_rail.description
    fill_in "Link", with: @programming_rail.link
    fill_in "Title", with: @programming_rail.title
    click_on "Create Programming rail"

    assert_text "Programming rail was successfully created"
    click_on "Back"
  end

  test "should update Programming rail" do
    visit programming_rail_url(@programming_rail)
    click_on "Edit this programming rail", match: :first

    fill_in "Description", with: @programming_rail.description
    fill_in "Link", with: @programming_rail.link
    fill_in "Title", with: @programming_rail.title
    click_on "Update Programming rail"

    assert_text "Programming rail was successfully updated"
    click_on "Back"
  end

  test "should destroy Programming rail" do
    visit programming_rail_url(@programming_rail)
    click_on "Destroy this programming rail", match: :first

    assert_text "Programming rail was successfully destroyed"
  end
end
