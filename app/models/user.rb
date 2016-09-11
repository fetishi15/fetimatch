class User < ActiveRecord::Base
	has_many:kininaru, foreign_key: :follower_id
	has_many :followings, through: :kininaru


	has_many :inverse_follows, foreign_key: :following_id, class_name: kininaru
	has_many :followers, through: :inverse_follows

 # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
