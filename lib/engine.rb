require 'good_item/config'
module GoodItem
  def self.config
    @config ||= GoodItem::Config.new
  end
 
  def self.configure(&block)
    yield(config) if block_given?
  end
 
  class Engine < ::Rails::Engine
    isolate_namespace GoodItem
  end
end
