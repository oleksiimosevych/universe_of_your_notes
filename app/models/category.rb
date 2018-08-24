class Category < ApplicationRecord
	#add all categories childer tree
	has_ancestry
	has_and_belongs_to_many :posts
end
