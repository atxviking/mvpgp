#!/usr/bin/env ruby

module Decrypt
  require "gpgme"
  extend self

  def passfunc(obj, uid_hint, passphrase_info, prev_was_bad, fd)
    io = IO.for_fd(fd, 'w')
    io.puts "PASSPHRASE"
    io.flush
  end

  def decrypt_file
    encrypted_data = GPGME::Data.new(File.open("#{PGPFILE}"))
    key = GPGME::Data.new(File.open("keys/#{KEYFILE}"))

    ctx = GPGME::Ctx.new :passphrase_callback => method(:passfunc)
    ctx.import_keys key

    decrypted = ctx.decrypt encrypted_data
    decrypted.seek(0)

    return decrypted.read
  end

end
