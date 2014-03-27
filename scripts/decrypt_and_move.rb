#!/usr/bin/env ruby

require_relative "../lib/decrypt"
require_relative "../lib/copy_file"

puts "It should decrypt a file"
puts "It should store decrypted file in 'files' directory"
puts "It does copy from 'files' directory to another directory"
CopyFile.cpfiles
