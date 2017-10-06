module SpreeEnquiries
  module_function

  # Returns the version of the currently loaded SpreeEnquiries as a
  # <tt>Gem::Version</tt>.
  def version
    Gem::Version.new VERSION::STRING
  end

  module VERSION
    MAJOR = 1
    MINOR = 3
    TINY  = 3

    STRING = [MAJOR, MINOR, TINY].compact.join('.')
  end
end
