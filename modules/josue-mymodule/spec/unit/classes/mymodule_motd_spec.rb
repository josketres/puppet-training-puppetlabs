require 'spec_helper'

describe 'mymodule::modt', :type => :class do
   context do
     it do
       should contain_file('/etc/motd').with_content(/foo/)
     end
   end
end
