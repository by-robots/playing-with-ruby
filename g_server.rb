require 'gserver' # gem install gserver (or use bundler...)

# Extend GServer and, when a client connects, out the end of the system's log
# file.
class LogServer < GServer
  def initialize(port = 10_001, *args)
    super(port, *args)
  end

  def serve(client)
    client.puts end_of_log_file
  end

  private

  def end_of_log_file
    File.open('/var/log/system.log') do |log|
      log.seek(-500, IO::SEEK_END) # The last 500 characters
      log.gets
      log.read
    end
  end
end

server = LogServer.new
server.start.join
