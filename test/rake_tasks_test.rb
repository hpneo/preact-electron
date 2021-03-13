require "webpacker"
require "test_helper"

class RakeTasksTest < Minitest::Test
  def test_rake_tasks
    output = Dir.chdir(test_app_path) { `rake -T` }
    assert_includes output, "webpacker:install:preact"
  end

  def test_rake_webpacker_preact_install_in_development_environment
    Webpacker.with_node_env("development") do
      Dir.chdir(test_app_path) do
        `bundle exec rake webpacker:install:preact`
      end
    end

    assert_includes test_app_dependencies, "preact",
                    "Expected dev dependencies to be installed"
  end

  private

  def test_app_path
    File.expand_path("dummy", __dir__)
  end

  def test_app_dependencies
    package_json = File.expand_path("package.json", test_app_path)
    JSON.parse(File.read(package_json))["dependencies"]
  end
end