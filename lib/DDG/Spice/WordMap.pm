package DDG::Spice::WordMap;
# ABSTRACT: Twinword Word Map Instant Answer

use DDG::Spice;

name "Word Map";
description "Generates semantically related words";
source "Twinword";
primary_example_queries "similar to sound", "words like sound";
category "language";
topics "words_and_games", "everyday";
code_url "https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/WordMap.pm";
icon_url "/i/tw_favicon.ico";
attribution web => ['http://twinword.com','Twinword Inc.'],
            twitter => ['http://twitter.com/levelpump', '@levelpump'],
            email => ['feedback@twinword.com','Twinword Inc.'];

spice to => 'http://duckduckgo.twinword.com/api/v2/context/user/duckduckgo/?entry=$1&api_key={{ENV{DDG_SPICE_WORDMAP_APIKEY}}}&callback={{callback}}';
spice proxy_cache_valid => "418 1d";


triggers startend => (
	"similar to", 
	"associate to", 
	"association to", 
	"association of", 
	"association:", 
	"evocation", 
	"evocation:", 
	"relate to", 
	"related to", 
	"related words", 
	"related word", 
	"word association", 
	"words like", 
	"word like", 
	"expand:",
	"context:",	 	
	"expand word", 
	"extend word", 
	"word cloud", 
	"word map", 
	"word cluster", 
	"word graph",
);


handle remainder => sub {
    return lc $_ if $_;
    return;
};

1;

