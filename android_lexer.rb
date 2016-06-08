# This is to support android tabs.
# https://github.com/tripit/slate/issues/58

require 'rouge'
module Rouge
  module Lexers
    class Android < Rouge::Lexers::Java
      tag 'android'
    end
  end
end
