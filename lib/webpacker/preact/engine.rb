module Webpacker
  module Preact
    class Engine < ::Rails::Engine
      isolate_namespace Webpacker::Preact
    end
  end
end
