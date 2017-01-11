module ScrivitoPictureWidget
  class Configuration
    attr_accessor :image_fallback_size
    attr_accessor :mobile_breakpoint
    attr_accessor :mobile_srcsets
    attr_accessor :tablet_breakpoint
    attr_accessor :tablet_srcsets
    attr_accessor :desktop_srcsets


    def initialize
      @image_fallback_size = 1170
      @mobile_breakpoint = 700
      @mobile_srcsets = [900, 700, 500, 300]
      @tablet_breakpoint = 992
      @tablet_srcsets = [1300, 1000, 800, 500]
      @desktop_srcsets = [1900, 1600, 1400, 1200]
    end
  end
end
