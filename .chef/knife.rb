# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options
require 'librarian/chef/integration/knife'

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "nemith"
client_key               "#{current_dir}/nemith.pem"
validation_client_name   "brbe-validator"
validation_key           "#{current_dir}/brbe-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/brbe"
cookbook_path            [Librarian::Chef.install_path,
													"#{current_dir}/../site-cookbooks"]
