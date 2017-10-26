defmodule Feed.Util do
  @moduledoc false

  @doc """
  ## Examples

      iex> Feed.Util.cdata("Hello, world!")
      "<![CDATA[Hello, world!]]>"
  """
  def cdata(string) do
    "<![CDATA[" <> string <> "]]>"
  end
end
