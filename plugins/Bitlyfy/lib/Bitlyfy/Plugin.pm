package Bitlyfy::Plugin;
use strict;
use LWP::Simple;
use URI::Escape;

sub bitlyfy {
	my ($str, $val, $ctx) = @_;
	# Only do something if the bitlyfy attribute is set to something
	if ($val){
		my $mt = MT->instance;
		my $plugin = MT->component("Bitlyfy");
		my $username = $plugin->get_config_value('bitly_username');
		my $key = $plugin->get_config_value('bitly_key');
		# Don't do anything if no bit.ly username and key are configured
		if ($username and $key){
			my $shorturl = get("http://api.bitly.com/v3/shorten?format=txt&login=$username&apiKey=$key&longurl=".uri_escape($str));
			# Only return a shortened URL if bit.ly returns one, otherwise return the original input
			return $shorturl?$shorturl:$str;
		}
		else {
			# No username/key: return original input
			return $str;
		}
	}
	else {
		# bitlyfy attribute set to 0/false: return original input
		return $str;
	}
}
1; # Every module must return true

