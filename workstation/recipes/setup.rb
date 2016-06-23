##package 'cowsay' do
##	action :install
##end
package 'tree' do
	action :install
end

package 'git' do
	action :install
end

file '/etc/motd' do
	content "Property of smorenor

HOSTNAME: #{node['hostname']}
IP: #{node['ipaddress']}
MEM: #{node['memory']['total']}
CPU: #{node['cpu']['0']['mhz']} MHz
"
end
