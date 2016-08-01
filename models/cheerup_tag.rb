class CheerupTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :cheerup

end
