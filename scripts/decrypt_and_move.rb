#!/usr/bin/env ruby

require_relative "../config/boot"
require_relative "../lib/decrypt"
require_relative "../lib/copy_file"

puts "Archive crypted file"
CopyFile.archive

puts "File decrypted"
decrypted = Decrypt.decrypt_file

puts "Decrypted file stored"
File.open("files/#{OUTFILE}", 'w') {|f| f.write(decrypted) }

puts "Decrypted file copied"
CopyFile.mvfiles
