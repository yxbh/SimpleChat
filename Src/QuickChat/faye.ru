require 'faye'
 
bayeux = Faye::RackAdapter.new(:port => 9292, :mount => '/faye', :timeout => 25)

run bayeux