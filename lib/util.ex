defmodule Feed.Util do
  def cdata(string) do
    "<![CDATA[" <> string <> "]]>"
  end
end
