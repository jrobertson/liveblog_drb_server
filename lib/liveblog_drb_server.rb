#!/usr/bin/env ruby

# file: liveblog_drb_server.rb


require 'drb'
require 'liveblog'



class LiveblogDRbServer

  def initialize(host: 'localhost', port: '60500', 
                config: '/tmp/liveblog/liveblog.conf')

    @host, @port = host, port
    @lb = LiveBlog.new config: config

  end

  def start()

    DRb.start_service "druby://#{@host}:#{@port}", @lb
    DRb.thread.join

  end

end


