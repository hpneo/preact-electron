module Webpacker
  module Preact
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
