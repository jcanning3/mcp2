require 'test_helper'

class TeamMusiciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_musician = team_musicians(:one)
  end

  test "should get index" do
    get team_musicians_url
    assert_response :success
  end

  test "should get new" do
    get new_team_musician_url
    assert_response :success
  end

  test "should create team_musician" do
    assert_difference('TeamMusician.count') do
      post team_musicians_url, params: { team_musician: { musician_id: @team_musician.musician_id, team_id: @team_musician.team_id } }
    end

    assert_redirected_to team_musician_url(TeamMusician.last)
  end

  test "should show team_musician" do
    get team_musician_url(@team_musician)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_musician_url(@team_musician)
    assert_response :success
  end

  test "should update team_musician" do
    patch team_musician_url(@team_musician), params: { team_musician: { musician_id: @team_musician.musician_id, team_id: @team_musician.team_id } }
    assert_redirected_to team_musician_url(@team_musician)
  end

  test "should destroy team_musician" do
    assert_difference('TeamMusician.count', -1) do
      delete team_musician_url(@team_musician)
    end

    assert_redirected_to team_musicians_url
  end
end
