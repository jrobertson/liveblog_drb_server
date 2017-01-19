# Introdudcing the Liveblog DRb server gem

## Usage

    require 'drb_liveblog_server'

    drb = DRbLiveblogServer.new host: '0.0.0.0', config: 'http://www.jamesrobertson.eu/liveblog/liveblog.conf'
    drb.start

The above example runs a DRb server with a Liveblog object, accessible on all available network interfaces from the local host on default port 60500.

## Resources

* liveblog_drb_server https://rubygems.org/gems/liveblog_drb_server

liveblog drb server

