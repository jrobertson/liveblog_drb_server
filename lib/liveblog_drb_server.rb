#!/usr/bin/env ruby

# file: liveblog_drb_server.rb


require 'drb'
require 'liveblog'


class LiveBlogServer 
  
  def initialize(config)
    @config = config
    @lb = LiveBlog.new  config     
  end
        
  def add_entry(raw_entry)
    @lb.add_entry raw_entry
  end
  
  def date()
    @lb.date
  end
  
  def import(x=nil)
    @lb.import x
  end
  
  def new_day(date: Date.today)
    @lb.new_day date: date
  end
  
  def raw_view(tag)
    @lb.raw_view tag
  end
  
  def restart()
    @lb = LiveBlogServer.new  @config  
    'restarted'
  end     
  
  def update(val)
    @lb.update(val)
  end
  
  def valid_entry?(tag)
    @lb.valid_entry?(tag)
  end
  
end

class LiveblogDRbServer

  def initialize(host: 'localhost', port: '60500', 
                config: '/tmp/liveblog/liveblog.conf')

    @host, @port = host, port
    @lb = LiveBlogServer.new  config    

  end

  def start()

    DRb.start_service "druby://#{@host}:#{@port}", @lb
    DRb.thread.join

  end

end
