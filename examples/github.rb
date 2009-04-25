#!/usr/bin/env ruby

require 'environment'
require 'grease'

require 'rubygems'
require 'ruby-github'

require 'ruby-debug'
Debugger.start

commits = GitHub::API.commits('rails','rails')
debugger
x=1