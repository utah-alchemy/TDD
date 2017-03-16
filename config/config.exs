# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tdd,
  namespace: TDD

# Configure hound
config :hound, driver: "chrome_driver"

# Configures the endpoint
config :tdd, TDD.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1QCwf4roTrkwbyUS6xdRotr1cR/5R0mKrK8dnEiq5G+m6lRFgesG4jqwlhbrDJpD",
  render_errors: [view: TDD.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TDD.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
