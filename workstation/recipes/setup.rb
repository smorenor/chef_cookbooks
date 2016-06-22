package 'cowsay' do
	action :install
end
package 'tree' do
	action :install
end

package 'git' do
	action :install
end

file '/etc/motd' do
	content 'Property of smorenor'
	owner 'pepito'
	mode '0644'
	group 'root'
	action :create
end
