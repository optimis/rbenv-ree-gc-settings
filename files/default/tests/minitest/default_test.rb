describe 'recipe::rbenv-ree-gc-settings::default' do
  it 'configures the REE GC settings' do
    file('/usr/local/rbenv/shims/ruby').must_exist
  end
end
