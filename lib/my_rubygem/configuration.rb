class MyRubygem::Configuration
  attr_accessor :access_token

  included do
    add_config :ignore_integrity_errors
    add_config :ignore_download_errors
  end


end
