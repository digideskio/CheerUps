class Tag < ActiveRecord::Base
  validates :theme, presence:true, allow_blank: false
  has_many :cheerup_tags
  has_many :cheerups, through: :cheerup_tags
end
