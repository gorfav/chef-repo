require 'chef/provisioning/aws_driver'

with_driver 'aws::eu-central-1'
options = {
  ssh_username: 'ec2-user',
  use_private_ip_for_ssh: false,
  bootstrap_options: {
    instance_type: 't2.micro',
    image_id: 'ami-875042eb',
    key_name: 'mykey',
    associate_public_ip_address: true,
    subnet: 'subnet-2488104d',
	security_group_ids: ["sg-700b0219"]
  }
}
machine 'testWL' do
  machine_options options
  action :setup
  converge true
end

remote_file '/Product Delivery/PLM.InitialDeployment/Etalon_0118/' do
  source 'ftp://TMNL_Uploads:jkhfd!))65Fd'
  mode '0755'
  action :create_if_missing
end

