require 'helper'

class TestReveal < Test::Unit::TestCase

  should "unzip gzipped file" do
  	file_path = File.expand_path("../fixtures/testzipfile.gz", __FILE__)
  	file = File.open(file_path)
    assert_equal "this is going to be\nall zipped up\n", Reveal.read(file)
  end

  should "read regular file" do
  	file_path = File.expand_path("../fixtures/plainfile", __FILE__)
  	file = File.open(file_path)
    assert_equal "this is\nboring text", Reveal.read(file)
  end

end
