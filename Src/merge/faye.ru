require 'faye'

Faye::WebSocket.load_adapter('thin')

bayeux = Faye::RackAdapter.new(:port => 9292, :mount => '/faye', :timeout => 25)

# report handshake
bayeux.on(:handshake) do |client_id|
    puts " " + client_id + " connected."
end

# report disconnect
bayeux.on(:disconnect) do |client_id|
    puts " " + client_id + " disconnected."
end

# report publish
bayeux.on(:publish) do |client_id, channel, data|
    # client_id maybe null
    id = ""
    if client_id.nil?
        id = "client(NIL)" # id is always NIL from what I've been seeing.
    else
        id = "client(" + client_id + ")"
    end

    puts " " + id + " published some data in channel: " + channel + "."
end

# report subscription
bayeux.on(:subscribe) do |client_id, channel|
    puts " " + client_id + " subscribed to channel: " + channel + "."

    # broadcast subscription
    #bayeux.get_client.publish(channel, {
    #    'type' => 'user_subscribe',
    #    'client_id' => client_id
    #})
end

# report un-subscription
bayeux.on(:unsubscribe) do |client_id, channel|
    puts " " + client_id + " un-subscribed from channel: " + channel + "."
    
    # broadcast unsubscription
    #bayeux.get_client.publish(channel, {
    #    'type' => 'user_unsubscribe',
    #    'client_id' => client_id
    #})
end

run bayeux