#!/usr/bin/ruby

# = %%FILE%%
#
# Author::    %%USER%%
# Copyright:: %%USER%%
# License::   GPL
#

# == Version
#
# * %%DATE%% 1.00 (%%USER%%) 
#

# == Summary
# 
# This file is for
#

# == Interface
#
# * input
# **
# * output
# **
#

# == Example
#

# == Description
#
# This file is for
#

#require 'optparse'

#opt = OptionParser.new

#opt.banner  = <<EOF
#Usage : #{$0} [options] [filename]
#
#ex) #{$0} ./hoge.txt
#    cat hoge.txt | #{$0}
#
#this script is...
#
#[options]
#EOF

#begin

#  opt.on( '-a', 'hogehoge' ) { |v| p v }
#  opt.on( '-h', 'show helps and exit' ) { |v| 
#    puts opt
#    exit
#  }
#  opt.parse!( ARGV )
#  p ARGV

#rescue OptionParser::ParseError => e

#  puts opt
#  exit

#end

#if ARGV.size == 0 then
#  f = STDIN
#elsif ARGV.size == 1 then
#  f = File.open( ARGV[ 0 ] )
#  IN_FILE = ARGV[ 0 ]
#else
#  puts opt
#  exit
#end

#f.each do |line|
#  puts line
#end

