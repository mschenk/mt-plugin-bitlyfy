Bitlyfy Plugin for Movable Type
========================================
This plugin adds a 'bitlyfy' global template tag modifier to Movable Type, which turns the output of any tag into a bit.ly link, provided the tag output is a valid URL.

Example usage:

&lt;mt:entrypermalink bitlyfy="1"&gt;

If bit.ly returns an error or the tag output is not a URL, the modifier will do nothing.

Requirements
-------------
This plugin should work under MT4.x and MT5.x

Installation
-------------
Unpack and copy the Bitlyfy folder into the 'plugins' folder of your MT installation.

Go to the System Plugin Settings screen and open the Bitlyfy plugin settings.

Enter your bit.ly API username and key, and save the settings.  If you don't have them yet, create them at http://bitly.com/a/your_api_key first.

License & Credit
-----------------
This plugin was written by Maarten Schenk (maarten@yesitcan.be) of http://www.yesitcan.be and http://www.movabletips.com in 2012. You are free to use this plugin on your Movable Type installation for any purpose provided you leave this message intact.

Download
---------
The plugin can be downloaded here: [https://github.com/mschenk/mt-plugin-bitlyfy/archive/master.zip](https://github.com/mschenk/mt-plugin-bitlyfy/archive/master.zip)