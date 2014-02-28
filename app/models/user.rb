class User < ActiveRecord::Base
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name,
                  :last_name, :password_hash, :stage_name, :twitter_handle, :verified,
                  :tagline, :city, :state, :country, :genre, :story, :profile_image_url


  def highlight_youtube_url
    self.posts.first.youtube_url
  end

end
