require 'spec_helper'

describe user('activemq') do
  it { should exist }
end

describe group('activemq') do
  it { should exist }
end

describe file('/opt/activemq') do
  it { should be_directory }
  it { should be_owned_by 'activemq' }
  it { should be_grouped_into 'activemq' }
end

describe file('/var/log/activemq') do
  it { should be_directory }
  it { should be_owned_by 'activemq' }
  it { should be_grouped_into 'activemq' }
  it { should be_mode 755 }
end

describe service('activemq') do
  it { should be_running }
end

describe process('activemq') do
  it { should be_running }
end
