class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	extend FriendlyId
  	friendly_id :titile, use: :slugged

  	validates_presence_of :titile, :body

  	after_initialize :set_defaults

  	belongs_to :topic

  	def set_defaults
  		self.topic_id ||= 1
  	end

  	def self.special_blogs
  		all
  	end

    def self.featured_blogs
      limit(2)
    end
end
