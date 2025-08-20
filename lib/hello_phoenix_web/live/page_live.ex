
defmodule HelloPhoenixWeb.PageLive do
  use HelloPhoenixWeb, :live_view

  def mount(_params, _session, socket) do
    # Inicializa o estado do socket (nenhum estado adicional ainda)
    {:ok, assign(socket, theme: "light")}
  end
end
