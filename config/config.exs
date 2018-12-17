# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :card_table,
  ecto_repos: [CardTable.Repo]

# Configures the endpoint
config :card_table, CardTableWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jkGTiZlOVcH736AQ7FDjoYe3yExDKU4s5gTmdTMfQZV3Qdm8yEqTwQZH+eu/B/7L",
  render_errors: [view: CardTableWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CardTable.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
