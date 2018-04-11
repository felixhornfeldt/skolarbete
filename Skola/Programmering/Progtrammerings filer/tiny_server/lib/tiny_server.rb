require 'socket'

def start_server(port)
    hostname = 'localhost'

    server = TCPServer.open(hostname, port)

    puts "Server started..."
    puts "Listening on #{hostname}:#{port}"
    loop do
        client = server.accept
        puts "Request recieved"
        request = client.recv 1024
        response = process_request(request)
        client.puts response
        client.close
    end
end