require "my_rubygem/version"
require "my_rubygem/configuration"


module MyRubygem
  class << self
    def configure
      yeild configuration
    end

    def configuration
      @configuration ||= MyRubygem::Configuration.new
      @configuration.reset_config
    end
  end
end
