class Category < ApplicationRecord
	#add all categories childer tree
	has_ancestry
	has_many :posts
end
