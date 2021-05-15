module ApplicationHelper
	include Pagy::Frontend

	def active?(path)
		"active" if current_page?(path)
	end
	
	def admin?
		admin_types.include?(current_user.type)
	end

	def admin_types
		['AdminUser']
	end

	def employee?
		current_user.type == 'Employee'
	end

	def status_badge status
		status_span_generator status
	end

	private
	def status_span_generator status
		case status
		when 'submitted'
			content_tag(:span, status.titleize, class: 'badge badge-primary')
		when 'approved'
			content_tag(:span, status.titleize, class: 'badge badge-success')
		when 'rejected'
			content_tag(:span, status.titleize, class: 'badge badge-danger')
		when 'pending'
			content_tag(:span, status.titleize, class: 'badge badge-primary')
		when 'confirmed'
			content_tag(:span, status.titleize, class: 'badge badge-success')
		end
	end

end
