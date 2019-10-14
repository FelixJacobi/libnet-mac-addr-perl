use strict;
use warnings;

use Test::More tests => 10;

BEGIN {
  use_ok('NetAddr::MAC', qw( :normals ))
    or die "# NetAddr::MAC not available\n";
}

## more stuff needed here
is(mac_as_basic('10-00-5A-4D-BC-96'), lc('10005A4DBC96'),'Check mac_as_basic output');
is(mac_as_bpr('10-00-5A-4D-BC-96'), lc('1,6,10:00:5A:4D:BC:96'),'Check mac_as_bpr output');
is(mac_as_cisco('10-00-5A-4D-BC-96'), lc('1000.5A4D.BC96'),'Check mac_as_cisco output');
is(mac_as_ieee('1000.5A4D.BC96'), lc('10:00:5A:4D:BC:96'),'Check mac_as_ieee output');
# ipv6 needed
is(mac_as_microsoft('10005A4DBC96'), lc('10-00-5A-4D-BC-96'),'Check mac_as_cisco output');
is(mac_as_singledash('1000.5A4D.BC96'), lc('10005A-4DBC96'),'Check mac_as_singledash output');
is(mac_as_pgsql('1000.5A4D.BC96'), lc('10005A:4DBC96'),'Check mac_as_pgsql output');
is(mac_as_sun('1000.5A4D.BC96'), lc('10-0-5A-4D-BC-96'),'Check mac_as_sun output');
is(mac_as_tokenring('10-00-5A-4D-BC-96'), lc('08-00-5A-B2-3D-69'),'Check mac_as_tokenring output');

