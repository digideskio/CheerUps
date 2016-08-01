class Cheerup < ActiveRecord::Base
  validates :content, presence: true, allow_blank: false, unless: ->(user){user.image.present?}
  validates :image, presence: true, allow_Blank: false, unless: ->(user){user.content.present?}
  belongs_to :user
  has_many :cheerup_tags
  has_many :tags, :through => :cheerup_tags

end
