class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	extend FriendlyId
  	friendly_id :titile, use: :slugged

  	validates_presence_of :titile, :body

  	belongs_to :topic
end
