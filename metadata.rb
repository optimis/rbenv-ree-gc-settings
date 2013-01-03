maintainer        'OptimisCorp., Inc.'
maintainer_email  'ops+cookbooks@optimiscorp.com'

license           'Apache 2.0'

description       'Configures REE GC settings.'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))

version           '0.0.1'

recipe            'rbenv-ree-gc-settings::default', 'Configures GC settings.'

%w{redhat centos scientific fedora debian ubuntu arch freebsd amazon}.each do |os|
  supports os
end

attribute 'rbenv/ruby_heap_min_slots',
  :display_name => 'Ruby Heap Min Slots',
  :description => 'The number of heap slots that a ruby instance starts up with.'

attribute 'rbenv/ruby_heap_slots_increment',
  :display_name => 'Ruby Heap Slots Increment',
  :description => 'The baseline value for future heaps.'

attribute 'rbenv/ruby_heap_slots_growth_factor',
  :display_name => 'Ruby Heap Slots Growth Factor',
  :description => 'The multiplicator used to allocate a new heap.'

attribute 'rbenv/ruby_gc_malloc_limit',
  :display_name => 'Ruby GC Malloc Limit',
  :description => 'The number of C data structures that can be allocated before garbage collection.'

attribute 'rbenv/ruby_heap_free_min',
  :display_name => 'Ruby Heap Free Min',
  :description => 'The number of free slots that should be present after GC.'
