class WelcomeController < ApplicationController
  # caches_action :index

  def index
      user = ["", "nacho"].sample
      puts 'START GET TREATMENT'
      @test_1_ruby = Rails.application.config.split_client.get_treatment(user, "test_1_ruby")
      puts 'END GET TREATMENT'
      puts 'START GET TREATMENTS'
      splits_names = (1..1).map{|n| "test_#{n}_ruby" }
      @test_1_ruby = Rails.application.config.split_client.get_treatments(user, splits_names)
      puts 'END GET TREATMENTS'
  end
end
