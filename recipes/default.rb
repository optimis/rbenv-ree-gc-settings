service 'httpd' do
  action :nothing
  supports :reload => true  
end

template '/usr/local/rbenv/shims/ruby' do
  source 'rbenv-ree-gc-settings.erb'
  mode '0655'
  notifies :reload, 'service[httpd]'
end
