#!/usr/bin/env ruby

require_relative "../lib/decrypt"
require_relative "../lib/copy_file"

# Decrypt constants
  PGPFILE = "<dir where PGP file lives"
  KEYFILE = "<key file>"
# CopyFile constants
  DEST = "<destination dir for decrypted file"
# Script constants
  OUTFILE = "out.txt"

puts "File decrypted"
decrypted = Decrypt.decrypt_file

puts "Decrypted file stored"
File.open("files/#{OUTFILE}", 'w') {|f| f.write(decrypted) }

puts "Decrypted file copied"
CopyFile.mvfiles
