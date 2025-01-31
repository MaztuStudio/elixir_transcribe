defmodule WebsocketServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :websocket_server,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: [main_module: WebsocketServer]  # Set main function module
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {WebsocketServer, []}  # Start WebsocketServer on launch
    ]
  end

  defp deps do
    [
      {:cowboy, "~> 2.9"},
      {:plug_cowboy, "~> 2.6"}
    ]
  end
end
