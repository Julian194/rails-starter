RubyLLM.configure do |config|
  config.openrouter_api_key = ENV.fetch('OPENROUTER_API_KEY', nil)
  config.default_model = "google/gemini-2.5-flash"
end
