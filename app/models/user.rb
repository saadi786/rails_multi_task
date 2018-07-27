class User < ApplicationRecord
	include Authentication
	has_many :posts, dependent: :destroy
	#active record validation helper
	validates :name, presence: true
	validates :name, uniqueness: true
	validates_associated :posts
	#legnth
	validates :name, length: {minimum: 6}
	#for check box of terms and agrement
	# validates :terms_of_service, acceptence: true

	#custom callback defiened in authentication Module called here
	after_destroy :user_after_destroy
	after_create :after_created_user
	after_update :before_update_user
	#custom callback
    
    #scopes
    scope :sorted, -> {order('name ASC')}	
 

end
