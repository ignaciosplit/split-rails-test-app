require 'test_impressions_listener'

test_impressions_listener = TestImpressionListener.new
options = {
  base_uri: ENV['SDK_URI'],
  events_uri: ENV['EVENTS_URI'],
  read_timeout: 10,
  connection_timeout: 10,
  features_refresh_rate: 30,
  segments_refresh_rate: 30,
  metrics_refresh_rate: 60,
  impressions_refresh_rate: 10,
  debug_enabled: true,
  transport_debug_enabled: true,
  cache_adapter: ENV.fetch('CACHE_ADAPTER', :memory).to_sym,
  mode: ENV.fetch('MODE', :standalone).to_sym,
  impression_listener: test_impressions_listener,
  logger: Logger.new($stdout)
}

factory = SplitIoClient::SplitFactoryBuilder.build(ENV['API_KEY'], options)
Rails.configuration.split_client = factory.client
Rails.configuration.split_factory = factory
Rails.configuration.split_manager = factory.manager
Rails.configuration.split_config = factory.instance_variable_get(:@config)
Rails.configuration.split_impression_listener = test_impressions_listener
Rails.configuration.split_impressions = []
