class WelcomeController < ApplicationController
  # caches_action :index

  def index
      user = ["", "nacho"].sample
      @test_1_ruby = Rails.application.config.split_client.get_treatment(user, "test_1_ruby")
  end
end
