import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :assign_new_example, AssignNewExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "j+39aN00BJCtSYp/5w18izvKbuKPec+w0tTZD27wOMnVFJvy1UfavJLWYQomyUNA",
  server: false

# In test we don't send emails.
config :assign_new_example, AssignNewExample.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
