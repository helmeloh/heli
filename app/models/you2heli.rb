class You2heli < ActiveRecord::Base
<<<<<<< HEAD
=======
  attr_accessible :content, :user_id
>>>>>>> 854e7be69d4ac660ade22592dd15f26fbd7aeb65
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
