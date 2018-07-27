module Authentication

     #callback method
    
    def user_after_destroy
		puts 'destroyed successfully'
	end

	def after_created_user
		puts 'saved successfully'
	end

	def before_update_user
		puts 'updated successfully'
	end

end