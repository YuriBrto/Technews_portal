defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller
  alias HelloPhoenix.Mailer
  import Swoosh.Email

  def home(conn, _params) do
    render(conn, :home)
  end

  def subscribe(conn, %{"email" => email}) do
    # Envia e-mail de boas-vindas
    welcome_email =
      new()
      |> to(email)
      |> from("no-reply@newsletter.com")
      |> subject("Bem-vindo à nossa Newsletter!")
      |> html_body("""
      <h1>Obrigado por se inscrever!</h1>
      <p>Você agora receberá nossas atualizações e notícias de tecnologia.</p>
      """)

    Mailer.deliver(welcome_email)

    conn
    |> put_flash(:info, "Obrigado por se inscrever! Verifique seu e-mail de boas-vindas.")
    |> redirect(to: "/")
  end
end
