#!/usr/bin/env ruby

require 'environment'
require 'grease'

require 'rubygems'

require 'ruby-debug'
Debugger.start

`git rev-list --topo-order --reverse HEAD`.each do | commit |
  debugger
  x=1
end