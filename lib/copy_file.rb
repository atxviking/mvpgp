#!/usr/bin/env ruby

module CopyFile
  extend self
  include FileUtils

  def mvfiles
    Dir.glob("files/*") {|f| FileUtils.mv File.expand_path(f), "#{DEST}" }
  end

end
