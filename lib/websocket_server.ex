defmodule WebsocketServer do
  use Application
  require Logger

  def start(_type, _args) do
    Logger.info("Starting WebSocket server on ws://localhost:8000")

    children = [
      WebsocketServer.Router
    ]

    opts = [strategy: :one_for_one, name: WebsocketServer.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def main(_args) do
    Logger.info("WebSocket server has started. Listening on ws://localhost:8000")
    start(:normal, [])
    Process.sleep(:infinity)  # Keep the process running
  end
end
