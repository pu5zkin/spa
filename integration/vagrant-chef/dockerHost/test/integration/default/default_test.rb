# InSpec test for recipe dockerHost::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe port(80), :skip do
  it { should_not be_listening }
end

describe package('docker') do
  it { should be_installed }
end

describe service('docker') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end
