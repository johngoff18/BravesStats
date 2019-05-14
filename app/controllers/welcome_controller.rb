class WelcomeController < ApplicationController
  def players
    @players = Player.all
  end
end
