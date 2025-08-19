defmodule HelloPhoenixWeb.NewsletterController do
  use HelloPhoenixWeb, :controller
  alias HTTPoison
  alias Jason


  @api_key "ea4259d757e24ae9804b4fe9001a87bf"
  @base_url "https://newsapi.org/v2/everything"

  def tech_news(conn, _params) do
    from_date = Date.utc_today() |> Date.add(-30) |> Date.to_iso8601()
    keywords = "tecnologia OR inovação OR software OR \"inteligência artificial\""
    url = "#{@base_url}?q=#{URI.encode(keywords)}&from=#{from_date}&sortBy=publishedAt&language=pt&pageSize=10&apiKey=#{@api_key}"

    articles =
      case HTTPoison.get(url, [{"User-Agent", "PortalTIYuri/1.0"}]) do
        {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
          {:ok, data} = Jason.decode(body)
          Map.get(data, "articles", [])

        _ ->
          []
      end

   # Renderiza com o módulo HTML
   render(conn, :tech_news, articles: articles)
  end
end
