module ApplicationHelper
	def bootstrap_class_for(flash_type)
		case flash_type
		when "success"
		"alert-success"
		when "error"
		"alert-warning"
		when "alert"
		"alert-danger"
		when "notice"
		"alert-info"
		else
		flash_type.to_s
		end
	end

	def active?(controller_name)
		servlet = params[:controller]
		if servlet == controller_name
			"active"
			else
			""
		end
	end	

	def static_active?(path)
		if current_page?page_path(path)
			"active"
		else
			""
		end
	end	
end
