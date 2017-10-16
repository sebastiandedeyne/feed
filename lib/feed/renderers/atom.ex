defmodule Feed.Renderers.Atom do
  import HyperEx
  import Feed.Util

  @doc """
  ## Examples

      iex> %Feed.Item{
      ...>   id: "hello-world",
      ...>   title: "Hello, world!",
      ...>   summary: "Just saying hi!",
      ...>   uri: "https://example.com/hello-world",
      ...>   author: "Sebastian De Deyne"
      ...> } |> Feed.Renderers.Atom.render()
      ~S{<entry><title><![CDATA[Hello, world!]]></title><link rel="alternate" href="https://example.com/hello-world"><id>hello-world</id><author><name><![CDATA[Sebastian De Deyne]]></name></author><summary type="html"><![CDATA[Just saying hi!]]></summary></entry>}
  """
  def render(item) do
    h("entry", [
      h("title", cdata(item.title)),
      h("link", rel: "alternate", href: item.uri),
      h("id", item.id),
      h("author", h("name", cdata(item.author))),
      h("summary", [type: "html"], cdata(item.summary)),
      # h("updated", DateTime.to_iso8601(item.updated))
    ])
  end
end
