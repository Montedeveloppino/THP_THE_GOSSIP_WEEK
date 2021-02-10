class Gossip < ApplicationRecord
  validates :title, 
  presence: true,
  length: { in: 4..14 }
  validates :content,
  presence: true

  belongs_to :User
  has_many :comments, dependent: :destroy
end