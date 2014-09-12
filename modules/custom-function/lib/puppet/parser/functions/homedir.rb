# homedir.rb
module Puppet::Parser::Functions
  newfunction(:homedir,
              :type => :rvalue,
              :arity => 1
             ) do |args|
               raise ArgumentError, 'Expects a string' unless args.first.class == String

               if args.first == 'root'
                 '/root'
               else
                 '/home/' + args.first
               end
             end
end
