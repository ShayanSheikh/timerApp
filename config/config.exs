# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :timerApp,
  ecto_repos: [TimerApp.Repo]

# Configures the endpoint
config :timerApp, TimerAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BmPUC/zyCmxaui6iSg86rJQXNwQNgQhiyYANohMVIPZnIcgTjA6Gi1nQtrvd6rMI",
  render_errors: [view: TimerAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TimerApp.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "R6PaA2xb"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
