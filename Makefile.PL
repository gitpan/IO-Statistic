#!/usr/bin/perl

use inc::Module::Install;
use 5.008;

name		('IO-Statistic');
author		('Chia-liang Kao <clkao@clkao.org>');
abstract_from	('lib/IO/Statistic.pm');
license		('perl');
version_from	('lib/IO/Statistic.pm');

requires(
        'PerlIO::via::dynamic'   => '0',
);
include('ExtUtils::AutoInstall');
auto_install();

WriteAll( sign => 1 );
