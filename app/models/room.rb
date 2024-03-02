class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages # roomsテーブルに対して、messagesテーブルは、１対多の関係

  validates :name, presence: true #ルーム名が存在(presence)している場合のみ作成可(true)

end