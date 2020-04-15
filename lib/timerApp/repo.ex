defmodule TimerApp.Repo do
  use Ecto.Repo,
    otp_app: :timerApp,
    adapter: Ecto.Adapters.Postgres
end
