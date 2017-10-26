defmodule Feed.Renderers.Atom do
  import HyperEx
  import Feed.Util

  def render(feed) do
    h("feed", [xmlns: "http://www.w3.org/2005/Atom"], [
      h("id", feed.uri),
      h("link", [href: feed.uri]),
      h("title", feed.title)
    ] ++ Enum.map(feed.items, &render_item/1))
  end

  defp render_item(item) do
    h("entry", [
      h("title", cdata(item.title)),
      h("link", rel: "alternate", href: item.uri),
      h("id", item.id),
      h("author", h("name", cdata(item.author))),
      h("summary", [type: "html"], cdata(item.summary))
      # h("updated", DateTime.to_iso8601(item.updated))
    ])
  end
end
