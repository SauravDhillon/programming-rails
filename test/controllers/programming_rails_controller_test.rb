require "test_helper"

class ProgrammingRailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programming_rail = programming_rails(:one)
  end

  test "should get index" do
    get programming_rails_url
    assert_response :success
  end

  test "should get new" do
    get new_programming_rail_url
    assert_response :success
  end

  test "should create programming_rail" do
    assert_difference("ProgrammingRail.count") do
      post programming_rails_url, params: { programming_rail: { description: @programming_rail.description, link: @programming_rail.link, title: @programming_rail.title } }
    end

    assert_redirected_to programming_rail_url(ProgrammingRail.last)
  end

  test "should show programming_rail" do
    get programming_rail_url(@programming_rail)
    assert_response :success
  end

  test "should get edit" do
    get edit_programming_rail_url(@programming_rail)
    assert_response :success
  end

  test "should update programming_rail" do
    patch programming_rail_url(@programming_rail), params: { programming_rail: { description: @programming_rail.description, link: @programming_rail.link, title: @programming_rail.title } }
    assert_redirected_to programming_rail_url(@programming_rail)
  end

  test "should destroy programming_rail" do
    assert_difference("ProgrammingRail.count", -1) do
      delete programming_rail_url(@programming_rail)
    end

    assert_redirected_to programming_rails_url
  end
end
