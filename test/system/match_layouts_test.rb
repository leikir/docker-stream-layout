require "application_system_test_case"

class MatchLayoutsTest < ApplicationSystemTestCase
  setup do
    @match_layout = match_layouts(:one)
  end

  test "visiting the index" do
    visit match_layouts_url
    assert_selector "h1", text: "Match Layouts"
  end

  test "creating a Match layout" do
    visit match_layouts_url
    click_on "New Match Layout"

    check "Is playing" if @match_layout.is_playing
    fill_in "Match name", with: @match_layout.match_name
    fill_in "Player1 name", with: @match_layout.player1_name
    fill_in "Player1 score", with: @match_layout.player1_score
    fill_in "Player2 name", with: @match_layout.player2_name
    fill_in "Player2 score", with: @match_layout.player2_score
    click_on "Create Match layout"

    assert_text "Match layout was successfully created"
    click_on "Back"
  end

  test "updating a Match layout" do
    visit match_layouts_url
    click_on "Edit", match: :first

    check "Is playing" if @match_layout.is_playing
    fill_in "Match name", with: @match_layout.match_name
    fill_in "Player1 name", with: @match_layout.player1_name
    fill_in "Player1 score", with: @match_layout.player1_score
    fill_in "Player2 name", with: @match_layout.player2_name
    fill_in "Player2 score", with: @match_layout.player2_score
    click_on "Update Match layout"

    assert_text "Match layout was successfully updated"
    click_on "Back"
  end

  test "destroying a Match layout" do
    visit match_layouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Match layout was successfully destroyed"
  end
end
