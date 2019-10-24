class Tag < ApplicationRecord
  has_many :gosssips, through: :tag_gossip_links
end
