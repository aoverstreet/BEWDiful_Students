class Entry < ActiveRecord::Base
	
	belongs_to :user
	

	#validation
	validates :name_item, :description_item, :pickup_date, :street1, :city, :state, :zipcode, :phone, presence: true
	validates :name_item, :description_item, :street1, :city, :state, length: {minimum: 2}
	validates :zipcode, length: {minimum: 5}
	validates :phone, length: {minimum: 10}

	has_attached_file :images,
								 :default_url => "/assets/default.png"

	
	def self.search_for(query)
		#Entry.where("name_item LIKE :query OR description_item LIKE :query OR category LIKE :query", query: "%#{query}%")
		Entry.where("name_item LIKE :query OR description_item LIKE :query", query: "%#{query}%")
	end


end
