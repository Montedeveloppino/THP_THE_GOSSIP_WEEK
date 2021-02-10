class Gossip < ApplicationRecord
  validates :title, 
  presence: true,
  length: { in: 4..14 }
  validates :content,
  presence: true
  
  belongs_to :user
  has_many :comments, dependent: :destroy
end