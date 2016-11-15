class Post < ActiveRecord::Base
  belongs_to :category

  has_attached_file :image, styles: {
    thumb: "150x150>",
    medium: "300x300>",
    large: "600x600>"
  }
  validates_attachment_presence :image
  validates_attachment_size :image, less_than: 2.megabytes
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]
  validates_uniqueness_of :image_file_name

  validates :title, presence: true, uniqueness: true


end
