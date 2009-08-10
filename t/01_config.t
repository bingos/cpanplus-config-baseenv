use strict;
use warnings;
use Test::More tests => 1;
use File::Spec;
use CPANPLUS::Configure;
#use_ok('CPANPLUS::Config::BaseEnv');

$ENV{PERL5_CPANPLUS_BASE} = File::Spec->rel2abs('.');

my $self = CPANPLUS::Configure->new( load_configs => 1 );
is($self->get_conf('base'),File::Spec->catdir($ENV{PERL5_CPANPLUS_BASE},'.cpanplus'),'PERL5_CPANPLUS_BASE');
