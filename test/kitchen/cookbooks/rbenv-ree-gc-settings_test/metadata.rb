maintainer        'OptimisCorp., Inc.'
maintainer_email  'ops+cookbooks@optimiscorp.com'

license           'Apache 2.0'

description       'Configures apache2 vhosts using node attributes the definition provided by the apache2 cookbook.'

version           '0.0.1'

recipe            'rbenv-ree-gc-settings::default', 'Provides test attributes for the GC settings cookbook.'

%w{redhat centos scientific fedora debian ubuntu arch freebsd amazon}.each do |os|
  supports os
end

depends 'rbenv-ree-gc-settings'
