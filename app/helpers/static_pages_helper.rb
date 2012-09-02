module StaticPagesHelper
	def full_title(name)
		base_title = 'REmsi'
		if name.blank?
			base_title
		else
			"#{base_title} | name"
		end
	end
	def link_tag(text, actn, ctlr, path = "/#{text.parameterize.underscore}", icon = nil)
		icon_code =  icon ? "<i class=\"#{icon}\"> </i>" : ''
		link_code = "<a href=\"#{path}\">#{icon_code}#{text}</a>".html_safe
		content_tag :li, link_code, 
		class: ('active' if params[:action] == actn and params[:controller] == ctlr)
	end
end
