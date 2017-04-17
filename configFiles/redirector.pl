#!/usr/bin/env perl

#
# Implements url_rewrite_program to redirect jenkins to a known mirror.
#

use strict;

$|=1;
while (my $l = <STDIN>) {
    chomp $l;
    my ($channel, $url, @other) = split / /, $l;
    if ($url =~ /^http:\/\/updates\.jenkins-ci\.org\/download/) {
	$url =~ s/updates\.jenkins-ci\.org\/download/ftp-chi.osuosl.org\/pub\/jenkins/;
        print "$channel OK status=302 url=\"$url\"\n";
    } else {
	print "$channel ERR\n";
    }
}
