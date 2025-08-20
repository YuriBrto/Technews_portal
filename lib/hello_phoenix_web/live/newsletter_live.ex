defmodule HelloPhoenixWeb.NewsletterLive do
  use HelloPhoenixWeb, :live_view

  @base_url "https://newsapi.org/v2/everything"

  def mount(_params, _session, socket) do
    api_key = Application.fetch_env!(:hello_phoenix, :news_api_key)
    from_date = Date.utc_today() |> Date.add(-30) |> Date.to_iso8601()
    keywords = "tecnologia OR inovação OR software OR \"inteligência artificial\""
    url = "#{@base_url}?q=#{URI.encode(keywords)}&from=#{from_date}&sortBy=publishedAt&language=pt&pageSize=10&apiKey=#{api_key}"

    articles =
      case HTTPoison.get(url, [{"User-Agent", "PortalTIYuri/1.0"}]) do
        {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
          {:ok, data} = Jason.decode(body)
          Map.get(data, "articles", [])
        _ -> []
      end

    {:ok, assign(socket, articles: articles, theme: "light")}
  end
end