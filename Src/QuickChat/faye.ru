require 'faye'

Faye::WebSocket.load_adapter('thin')

bayeux = Faye::RackAdapter.new(:port => 9292, :mount => '/faye', :timeout => 25)

# announce handshake
bayeux.on(:handshake) do |client_id|
    puts " " + client_id + " connected."
end

# announce disconnect
bayeux.on(:disconnect) do |client_id|
    puts " " + client_id + " disconnected."
end

# announce publish
bayeux.on(:publish) do |client_id, channel, data|
    # client_id maybe null
    id = ""
    if client_id.nil?
        id = "client(NIL)"
    else
        ud = "client(" + client_id + ")"
    end

    puts " " + id + " published some data in channel: " + channel + "."
end

# announce subscription
bayeux.on(:subscribe) do |client_id, channel|
    puts " " + client_id + " subscribed to channel: " + channel + "."
end

# announce un-subscription
bayeux.on(:unsubscribe) do |client_id, channel|
    puts " " + client_id + " un-subscribed from channel: " + channel + "."
end

run bayeux