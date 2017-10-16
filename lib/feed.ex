defmodule Feed do
  @moduledoc """
  Documentation for Feed.
  """

  defstruct title: "",
            uri: "",
            items: []

  @doc """
  ## Examples

      iex> Feed.create("My Feed", "https://sebastiandedeyne.com")
      %Feed{title: "My Feed", uri: "https://sebastiandedeyne.com", items: []}
  """
  def create(title, uri, items \\ []) do
    %Feed{title: title, uri: uri, items: items}
  end

  @doc """
  ## Examples

      iex> Feed.create("My Feed", "https://sebastiandedeyne.com")
      ...> |> Feed.add(title: "Hello, world!")
      %Feed{title: "My Feed", uri: "https://sebastiandedeyne.com", items: [%Feed.Item{title: "Hello, world!"}]}
  """
  def add(feed, attrs) do
    item = struct(Feed.Item, attrs)

    %Feed{feed | items: feed.items ++ [item]}
  end

  def to_atom(_feed) do
  end

  def to_json(_feed) do
  end

  def to_rss(_feed) do
  end

  def links(_feed) do
  end
end
