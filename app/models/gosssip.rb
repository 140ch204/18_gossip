class Gosssip < ApplicationRecord
  belongs_to :user
  has_many :tags, through: :tag_gossip_links
end
