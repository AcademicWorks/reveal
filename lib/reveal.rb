class Reveal

	def self.read(file)
    	gzip_reader 	= Zlib::GzipReader.new(file	)
    	unzipped_data 	= gzip_reader.readlines.join
    	gzip_reader.close
    	return unzipped_data
    rescue Zlib::GzipFile::Error => e
    	file.rewind
    	return file.readlines.join
	end

end