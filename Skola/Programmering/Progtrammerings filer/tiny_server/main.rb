require_relative 'lib/tiny_server'

def process_request (request)
    begin
        path = request.split(" ")
        if path[1] === "/"
            content = File.read("site/index.html")
            return "HTTP/1.1 200 OK\r\n\r\n#{content}"
        else
            pathway = "site#{path[1]}"
            content = File.read(pathway)
            return "HTTP/1.1 200 OK\r\n\r\n#{content}"
        end
    rescue (Errno::ENOENT)
        content = File.read("site/404.html")
        return "HTTP/1.1 404 ERROR\r\n\r\n#{content}"
    end
end

portway = ARGV[0]
portway = portway.to_i
if portway <= 1023
    portway = 8080
end

start_server(portway)