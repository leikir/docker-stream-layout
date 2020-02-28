require 'test_helper'

class MatchLayoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match_layout = match_layouts(:one)
  end

  test "should get index" do
    get match_layouts_url
    assert_response :success
  end

  test "should get new" do
    get new_match_layout_url
    assert_response :success
  end

  test "should create match_layout" do
    assert_difference('MatchLayout.count') do
      post match_layouts_url, params: { match_layout: { is_playing: @match_layout.is_playing, match_name: @match_layout.match_name, player1_name: @match_layout.player1_name, player1_score: @match_layout.player1_score, player2_name: @match_layout.player2_name, player2_score: @match_layout.player2_score } }
    end

    assert_redirected_to match_layout_url(MatchLayout.last)
  end

  test "should show match_layout" do
    get match_layout_url(@match_layout)
    assert_response :success
  end

  test "should get edit" do
    get edit_match_layout_url(@match_layout)
    assert_response :success
  end

  test "should update match_layout" do
    patch match_layout_url(@match_layout), params: { match_layout: { is_playing: @match_layout.is_playing, match_name: @match_layout.match_name, player1_name: @match_layout.player1_name, player1_score: @match_layout.player1_score, player2_name: @match_layout.player2_name, player2_score: @match_layout.player2_score } }
    assert_redirected_to match_layout_url(@match_layout)
  end

  test "should destroy match_layout" do
    assert_difference('MatchLayout.count', -1) do
      delete match_layout_url(@match_layout)
    end

    assert_redirected_to match_layouts_url
  end
end
