class Song < ActiveRecord::Base
  belongs_to :state
  has_many :selections

# a method to query API and call state songs


end
