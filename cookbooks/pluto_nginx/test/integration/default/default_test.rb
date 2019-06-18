
# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe service('nginx') do
	it { should be_installed }
	it { should be_running }
	it { should be_enabled }
end
