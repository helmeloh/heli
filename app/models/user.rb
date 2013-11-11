class User < ActiveRecord::Base
<<<<<<< HEAD
	  has_many :you2helis
	attr_accessible :name, :email, :password, :password_confirmation
=======
 has_many :you2helis, dependent: :destroy
attr_accessible :name, :email, :password, :password_confirmation
>>>>>>> 854e7be69d4ac660ade22592dd15f26fbd7aeb65
	before_save { self.email = email.downcase }
	validates :name,  presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } 
	has_secure_password
	validates_presence_of :password, :on => :create
	:password_digest
	  has_many :you2helis, dependent: :destroy
	def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  
    def feed
    # This is preliminary. See "Following users" for the full implementation.
    You2heli.where("user_id = ?", id)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
