import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :tasbeh, Tasbeh.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "tasbeh_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tasbeh, TasbehWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "OnhmbYW8KJH4r0LB6nl+1w8RaT7puS1aRsT8esXuXFffenn6K62BTFd2Dl3aBUJ6",
  server: false

# In test we don't send emails.
config :tasbeh, Tasbeh.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
