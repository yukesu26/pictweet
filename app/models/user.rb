class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :comments  # commentsテーブルとのアソシエーション
  # imageも空で投稿できないように追記
  validates :text, :image, presence: true
  validates :nickname, presence: true, length: { maximum: 6 }

end