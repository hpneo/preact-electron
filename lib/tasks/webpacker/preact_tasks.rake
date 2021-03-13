bin_path = ENV["BUNDLE_BIN"] || Rails.root.join("bin")

namespace :webpacker do
  desc "Install everything needed for Preact"
  task "install:preact": ["webpacker:check_yarn"] do |task|
    template = File.expand_path("../../install/template.rb", __dir__)
    base_path =
      if Rails::VERSION::MAJOR >= 5
        "#{RbConfig.ruby} #{bin_path}/rails app:template"
      else
        "#{RbConfig.ruby} #{bin_path}/rake rails:template"
      end

    exec "#{base_path} LOCATION=#{template}"
  end
end
