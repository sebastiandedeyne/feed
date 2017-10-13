defmodule FeedTest do
  use ExUnit.Case
  doctest Feed

  test "greets the world" do
    assert Feed.hello() == :world
  end
end
