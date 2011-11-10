class Reveal

	def self.read(file_or_text)
		file = coerce_to_file(file_or_text)
    	gzip_reader 	= Zlib::GzipReader.new(file	)
    	unzipped_data 	= gzip_reader.readlines.join
    	gzip_reader.close
    	return unzipped_data
    rescue Zlib::GzipFile::Error => e
    	file.rewind
    	return file.readlines.join
	end

	private

	def self.coerce_to_file(file_or_text)
		return file_or_text if file_or_text.is_a?(IO)
		return StringIO.new(file_or_text)
	end

end