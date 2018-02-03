class Landmark < ActiveRecord::Base

  has_and_belongs_to_many :landmarks
  has_many :titles

end
