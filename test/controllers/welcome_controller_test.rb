require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get players" do
    get welcome_players_url
    assert_response :success
  end

end
