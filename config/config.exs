# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :newsline,
  ecto_repos: [Newsline.Repo]

# Configures the endpoint
config :newsline, Newsline.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WTqgpDpX8PZzFjULz7FT+iLRSpUc+mnKw7BrJtkIjf6nMKYpz5owm3dPclqsllLV",
  render_errors: [view: Newsline.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Newsline.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
