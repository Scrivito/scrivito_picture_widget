module ScrivitoPictureWidget
  class Engine < ::Rails::Engine
    isolate_namespace ScrivitoPictureWidget

    initializer "scrivito.scrivito_picture_widget_helper" do
      ActionView::Base.send :include, ScrivitoPictureWidgetHelper
    end
  end
end
