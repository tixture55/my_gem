class MyRubygem::Configuration
  attr_accessor :access_token

  included do
    add_config :ignore_integrity_errors
    add_config :ignore_download_errors
  end

  def reset_config
    config do |config|
      config.ignore_integrity_errors = true
      config.ignore_download_errors = true
    end
  end
end
