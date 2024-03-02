class Message < ApplicationRecord
  belongs_to :room # チャットルームに存在します
  belongs_to :user # 一人のユーザーから送信されます

  validates :content, presence: true # 空の場合はDBに保存しない
end
