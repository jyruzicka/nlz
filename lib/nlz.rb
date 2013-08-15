# Require library files
gem_require = lambda{|f| require File.join("nlz",f) }
%w(string_ext file_ext hash_ext).each &gem_require
%w(bin smooth normalise q).each &gem_require
