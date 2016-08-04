class Cheerup < ActiveRecord::Base
  # validates :content, length: {within: 1..140,
  #   message: "Message must be between 1-140 characters" }
  validate :content_or_image, :too_long
  # validates :content, length: {within: 1..140,
  #   message: "Message must be between 1-140 characters" }
  belongs_to :user
  has_many :likes
  has_many :users, through: :likes
  has_many :cheerup_tags
  has_many :tags, :through => :cheerup_tags


# validation on content, since both empty is a test, it can just be max 140
  # presence: true, unless: user.image.present?,

   # validates :image, presence: true, unless: user.content.present?
   # validate :content_or_image

def content_or_image
  if content.present? && image.present? #, but not both
    errors.add(:content, "Oops you forgot to populate your CheerUp!")
  end

  if !content.present? && !image.present?
    errors.add(:content, "Oops you forgot to populate your CheerUp!")
  end
end

def too_long
  if (!image.present? && content.length > 140)
    errors.add(:content, "message must be between 1-140 characters")
  end
end


end
