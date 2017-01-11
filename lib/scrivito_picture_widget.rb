require "scrivito_picture_widget/engine"
require "scrivito_picture_widget/configuration"

module ScrivitoPictureWidget
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end

end
