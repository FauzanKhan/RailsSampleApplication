module ApplicationHelper

	#return a titler om per-page basis
	def title
		base_title = "Ruby on Rails sample App"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	def logo
		image_tag("railstutorial.org/images.sample_app/logo.png", :alt => "Sample App", :class => "round")
	end
	
end
