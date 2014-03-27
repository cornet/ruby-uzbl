require 'socket'

class Uzbl::Window

  def initialize(window)
    @window = window
  end

  def pid
    @window.pid
  end

  def focus
    @window.activate
  end

  def socket
    "/tmp/uzbl_socket_#{pid}"
  end

  def url(url)
    set 'uri', url
  end

  def reload
    send_command "reload"
  end

  def status_bar(state)
    set 'show_status', state ? 1 : 0
  end

  def set(key, value)
    send_command "set #{key} = #{value}"
  end

  def send_command(command)
    s = UNIXSocket.new socket
    s.send command, 0
    s.close
  end
end
