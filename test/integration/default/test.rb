
describe filesystem('/') do
  its('size_kb') { should be >= 83886080  }
  its('free_kb') { should be >= 41943040 }
  its('percent_free') { should be >= 50 }
  its('type') { should cmp 'ext4' }
end

describe filesystem('/var/lib') do
  its('size') { should be >= 104857600  }
  its('free_kb') { should be >= 41943040 }
  its('percent_free') { should be >= 50}
  its('type') { should cmp 'ext4' }
end
