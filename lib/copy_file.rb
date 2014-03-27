#!/usr/bin/env ruby

module CopyFile
  extend self
  include FileUtils

  DEST = "<enter a valid dir path>"

  def cpfiles
    Dir.glob("files/*") {|f| FileUtils.cp File.expand_path(f), "#{DEST}" }
  end
end
