# Local override
dotenv = File.expand_path("../.env_overrides.rb", __FILE__)
require dotenv if File.exist?(dotenv)

ENV['SDK_URI']                        ||= ''
ENV['EVENTS_URI']                     ||= ''
ENV['API_KEY']                        ||= ''
