defmodule WebsocketServerTest do
  use ExUnit.Case
  doctest WebsocketServer

  test "greets the world" do
    assert WebsocketServer.hello() == :world
  end
end
