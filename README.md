# ScrivitoPictureWidget
A scrivito gem to add a widget for an image using the picture tag. So the image can be defined for different viewports to be responsive.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'scrivito_picture_widget'
```

And then execute:
```bash
$ bundle
```

## Localization

The following code represents the default localization for English. Copy it to your `en.yml` and change it if necessary:

```yaml
en:
  scrivito_picture_widget:
    thumbnail:
      title: Picture
      description: A widget with an responsive image
    details:
      crop: Crop
      image: Image
      mobile_image: Mobile image
      tablet_image:  Tablet image
      transform_info: Set if the automatic transformed image does not fit
```

## Configuration

Add an initializer to define breakpoints or the srcsets for every image version:

```ruby
ScrivitoIconBoxWidget.configure do |config|
  config.image_fallback_size = 1170
  config.mobile_breakpoint = 700
  config.mobile_srcsets = [900, 700, 500, 300]
  config.tablet_breakpoint = 992
  config.tablet_srcsets = [1300, 1000, 800, 500]
  config.desktop_srcsets = [1900, 1600, 1400, 1200]
end
```

`image_fallback_size` is for older browser with no support for the picture tag.
`tablet_breakpoint` is the max viewport width. The min width is the mobile_breakpoint + 1

## License
The gem is available as open source under the terms of the [LPGL-3.0](http://www.gnu.org/licenses/lgpl-3.0.html)).
