apt_repository 'unifi' do
	uri 'http://www.ubnt.com/downloads/unifi/distros/deb/ubuntu'
	distribution 'ubuntu'
	components ['ubiquiti']
	keyserver 'keyserver.ubuntu.com'
	key 'C0A52C50'
end

apt_package node['unifi']['package']

service 'unifi' do
	supports status: true, restart: true, reload: true
	action [:enable, :start]
end
