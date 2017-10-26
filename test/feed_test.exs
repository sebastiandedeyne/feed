defmodule FeedTest do
  use ExUnit.Case
  use Snapshots
  doctest Feed
  doctest Feed.Util

  test_snapshot "it renders an atom feed" do
    Feed.create("My Feed", "https://sebastiandedeyne.com")
    |> Feed.add([
      title: "Hello, world!",
      uri: "https://sebastiandedeyne.com/hello-world",
      author: "Sebastian De Deyne",
      summary: "Just saying hi!"
    ])
    |> Feed.to_atom
  end
end
