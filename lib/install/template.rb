require "webpacker/configuration"
require "fileutils"

say "Copying babel.config.js to app root directory"
copy_file "#{__dir__}/examples/preact/babel.config.js", "babel.config.js"

say "Copying preact example entry file to #{Webpacker.config.source_entry_path}"
copy_file "#{__dir__}/examples/preact/hello_preact.js", "#{Webpacker.config.source_entry_path}/hello_preact.js"

say "Installing all preact dependencies"
run "yarn add babel-plugin-transform-react-jsx preact"

say "Webpacker now supports Preact.js 🎉", :green
