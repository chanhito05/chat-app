class Message < ApplicationRecord
  belongs_to :room # チャットルームに存在します
  belongs_to :user # 一人のユーザーから送信されます
end
