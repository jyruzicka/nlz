class File

  class << self
    # Load a comma-separated value into a hash and return it
    #
    # @param filename [String] The file to open
    # @return [Hash] The data included in the file
    def csv(filename)
      File.read(filename).parse(/,\s*/)
    end

    # Load a tab-separated value into a hash and return it
    #
    # @param filename [String] The file to open
    # @return [Hash] The data included in the file
    def tsv(filename)
      File.read(filename).parse("\t")
    end
  end
end

