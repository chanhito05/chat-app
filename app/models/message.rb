class Message < ApplicationRecord
  belongs_to :room # チャットルームに存在します
  belongs_to :user # 一人のユーザーから送信されます
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
