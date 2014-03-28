#!/usr/bin/env ruby

require_relative "../lib/decrypt"
require_relative "../lib/copy_file"

# Decrypt variables
  PGPFILE = "<dir where PGP file lives"
  KEYFILE = "keys/<key file>"
# CopyFile variables
  DEST = "<destination dir for decrypted file"

puts "File decrypted"
decrypted = Decrypt.decrypt_file

puts "Decrypted file stored"
File.open("files/out.txt", 'w') {|f| f.write(decrypted) }

puts "Decrypted file copied"
CopyFile.mvfiles
