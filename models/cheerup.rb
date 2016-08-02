class Cheerup < ActiveRecord::Base
  # validates :content, presence: true, allow_blank: false, length: {maximum: 140}
  # too_long: "%{count} characters is the maximum allowed" end
  # validates :image, presence: true, allow_Blank: false,
  validate :content_or_image
  belongs_to :user
  has_many :cheerup_tags
  has_many :tags, :through => :cheerup_tags

# binding.pry
def content_or_image
  if content.present? && image.present? #, but not both
    errors.add(:content, "must contain words OR image")
  end

  if !content.present? && !image.present?
    errors.add(:content, "must contain words OR image")
  end
end

#error messages not working
# too long isn't working

def too_long
  if (content.length > 140)
    errors.add("Maximum 140 characters")
  end
end

end
