class Landmark < ActiveRecord::Base

  has_many :landmarks
  has_many :title

end
