module ScrivitoPictureWidgetHelper
  def image_srcset(widget)
    widths = ScrivitoPictureWidget.configuration.desktop_srcsets

    image_srcset_for(widget, widget.image, widths)
  end

  def mobile_image_srcset(widget)
    widths = ScrivitoPictureWidget.configuration.mobile_srcsets

    image_srcset_for(widget, widget.mobile_image || widget.image, widths, :crop)
  end

  def tablet_image_srcset(widget)
    widths = ScrivitoPictureWidget.configuration.tablet_srcsets

    image_srcset_for(widget, widget.tablet_image || widget.image, widths, :crop)
  end

  private
  def image_srcset_for(widget, obj, widths, fit=nil)
    image = obj.try(:binary)
    return unless image

    widths.map do |width|
      if(fit && obj.id == widget.image.id)
        height = (width*image.meta_data[:height])/widths.map(&:to_i).max
        transformed_image = image.transform(width: width, height: height, fit: fit, crop: widget.crop)
      else
        transformed_image = image.transform(width: width)
      end
      url = scrivito_url(transformed_image)

      "#{url} #{width}w"
    end.join(", ")
  end
end
