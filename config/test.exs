use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :platform, PlatformWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :platform, Platform.Repo,
  username: System.get_env("USER"),
  password: "",
  database: "ruhrjs_wishlist_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
