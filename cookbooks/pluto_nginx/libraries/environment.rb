#
# Chef Documentation
# https://docs.chef.io/libraries.html
#

#
# This module name was auto-generated from the cookbook name. This name is a
# single word that starts with a capital letter and then continues to use
# camel-casing throughout the remainder of the name.
#
module BcfNginx
  module EnvironmentHelpers
    #
    # Define the methods that you would like to assist the work you do in recipes,
    # resources, or templates.
    #
    # def my_helper_method
    #   # help method implementation
    # end
    def environments_html_list(query = 'name:*')
	file_contents = "<ul>\n"

	search('environment', query, { filter_result: { 'name' => ['name'] }}).each do |env|
		file_contents += "<li>#{env['name']}</li>\n"
	end

	file_contents += "</ul>"
    
    end
  end
end

#
# The module you have defined may be extended within the recipe to grant the
# recipe the helper methods you define.
#
# Within your recipe you would write:
#
#     extend BcfNginx::EnvironmentHelpers
#
#     my_helper_method
#
# You may also add this to a single resource within a recipe:
#
#     template '/etc/app.conf' do
#       extend BcfNginx::EnvironmentHelpers
#       variables specific_key: my_helper_method
#     end
#
