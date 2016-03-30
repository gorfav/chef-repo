require 'chef/provisioning/aws_driver'

with_driver 'aws::eu-central-1'
options = {
  ssh_username: 'ec2-user',
  use_private_ip_for_ssh: false,
  bootstrap_options: {
    instance_type: 't2.small',
    image_id: 'ami-86896fe9',
    key_name: 'mykey',
    associate_public_ip_address: true,
    subnet: 'subnet-2488104d',
	security_group_ids: ["sg-700b0219"]
  }
}
machine 'agilePOCePLM_Database' do
  machine_options options
  action :setup
  converge true
end


