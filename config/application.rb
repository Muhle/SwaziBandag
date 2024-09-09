require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# module Desktop
#   class Application < Rails::Application
#     # Initialize configuration defaults for originally generated Rails version.
#     config.load_defaults 7.2

#     # Please, add to the `ignore` list any other `lib` subdirectories that do
#     # not contain `.rb` files, or that should not be reloaded or eager loaded.
#     # Common ones are `templates`, `generators`, or `middleware`, for example.
#     config.autoload_lib(ignore: %w[assets tasks])
    
#     config.action_view.embed_authenticity_token_in_remote_forms = true
    
#     # Configuration for the application, engines, and railties goes here.
#     #
#     # These settings can be overridden in specific environments using the files
#     # in config/environments, which are processed later.
#     #
#     # config.time_zone = "Central Time (US & Canada)"
#     # config.eager_load_paths << Rails.root.join("extras")
#   end
# end

module SwaziBandag
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set the assets named below this line (and before config.assets.version)
    # This can be commented out if slower digests are not a concern.
    config.assets.precompile += %w(tailwind.css)
    
    # WARNING: Use strict loading mode to resolve operating system native dependencies
    # config.load_defaults ":strict_perform_caching"
  end
end
