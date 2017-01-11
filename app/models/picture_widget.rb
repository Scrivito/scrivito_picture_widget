class PictureWidget < Widget
  attribute :image, :reference, only: Image
  attribute :mobile_image, :reference, only: Image
  attribute :tablet_image, :reference, only: Image
  attribute :crop, :enum, values: ['left','center','right'], default: 'center'
end