class You2Heli < ActiveRecord::Base
	  belongs_to :user
	  validates :content, length: { maximum: 140 }
end
