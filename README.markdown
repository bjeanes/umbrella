Torrenting on OS X
==================

I love OS X. But I hate that there is no perfect bit torrent application out there (yet). Nothing I've come across is at the level of [uTorrent](http://www.utorrent.com/) on Windows. Sure, [Transmission](http://www.transmissionbt.com/) comes close and is a fantastic client, but it just is not rich enough to fulfill my needs.

So what's my solution? I have a Windows server **dedicated** to running uTorrent. I am sure there are others out there that do something similar. To those people: are you sick of the uTorrent WebUI and the fact that it only runs on Firefox, and badly at that? Me too.

iTorrent OS X
========

iTorrent OS X will be a Leopard-only GUI for talking to your remote uTorrent. Provide a WebUI link and authentication details, and you'll have a fully functioning application that will behave like a native torrent client.

Mockup Interface
----------------

Preliminary mockup (ignore the title on the app):

![iTorrent OS X GUI](http://files.bjeanes.com/ux.png "iTorrent OS X GUI")

Planned Features
----------------

* Drag and drop support for .torrent files
* Default .torrent handler
* Torrent search
* Smarter filters (combine custom labels and status labels)
* Floating progress bars
* Guest-only mode for just checking up on the progress of torrents
* Apple Remote support (cuz what the hell I can)

This means that if you want control over RSS features locally, you'll be able to use [TVShows](http://tvshows.sourceforge.net/), an absolutely brilliant application and bypass the clunky uTorrent RSS features altogether.

Limitations
-----------

This will be riding on the WebUI API so it will only be able to do what uTorrent developers expose. 