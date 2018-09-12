class Post < ApplicationRecord
	belongs_to :user
	validates :content, presence: true 
	validates :title, presence: true 
	acts_as_taggable_on :tags
	has_and_belongs_to_many :categories
	has_ancestry
end
