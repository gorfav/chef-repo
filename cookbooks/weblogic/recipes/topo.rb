require 'chef/provisioning'
machine 'db' do
  chef_server( :chef_server_url => 'http://localhost:8889') 
end
