# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.config.hosts << 'kevin-odin-flight-booker.herokuapp.com'
