class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,  :validatable
  validates :name, presence: true # nameカラムにpresence: trueを設けることで、空の場合はDBに保存しないというバリデーションの設定

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages # usersテーブルに対して、messagesテーブルは１対多の関係
end
