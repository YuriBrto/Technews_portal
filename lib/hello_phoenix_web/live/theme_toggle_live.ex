defmodule HelloPhoenixWeb.ThemeToggleLive do
  use HelloPhoenixWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, theme: "light")}
  end

  def handle_event("toggle_theme", _params, socket) do
    new_theme = if socket.assigns.theme == "light", do: "dark", else: "light"
    {:noreply, assign(socket, theme: new_theme)}
  end
end
