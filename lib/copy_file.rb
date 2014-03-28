#!/usr/bin/env ruby

module CopyFile
  extend self
  include FileUtils

  def mvfiles
    Dir.glob("files/*") {|f| FileUtils.mv File.expand_path(f), "#{DEST}" }
  end

  def store(file)
    f = File.open('output.txt', 'w')
    f.puts "The Ruby tutorial"
    f.close
  end

end
