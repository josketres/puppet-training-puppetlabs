Facter.add('role-fact') do
  setcode 'cat /etc/role'
end
# to test
# echo 'foobar' > /etc/role
# export RUBYLIB=/root/puppetcode/modules/custom-fact/lib
# facter role-fact
