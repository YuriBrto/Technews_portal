defmodule HelloPhoenixWeb.ThemeToggleLive do
  use HelloPhoenixWeb, :live_component

  def update(assigns, socket) do
    theme = Map.get(assigns, :theme, "light")
    {:ok, assign(socket, theme: theme)}
  end

  def handle_event("toggle_theme", _params, socket) do
    new_theme = if socket.assigns.theme == "light", do: "dark", else: "light"
    socket = push_event(socket, "theme_changed", %{theme: new_theme})
    {:noreply, assign(socket, theme: new_theme)}
  end
end