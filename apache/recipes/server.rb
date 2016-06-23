package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content "<H1>Hello World!</H1>
<H2>HOSTNAME: #{node['hostname']}</H2>
<H2>IP: #{node['ipaddress']}</H2>
<H2>MEM: #{node['memory']['total']}</H2>
<H2>CPU: #{node['cpu']['0']['mhz']} MHz</H2>
"
end

service 'httpd' do
	action [ :enable, :start ]
end
