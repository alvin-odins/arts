class Post < ActiveRecord::Base
  belongs_to :category

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]
  validates_uniqueness_of :image_file_name

  validates :title, presence: true, uniqueness: true


end
