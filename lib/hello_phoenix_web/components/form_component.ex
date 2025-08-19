defmodule HelloPhoenixWeb.FormComponent do
  use Phoenix.Component

  def subscribe_form(assigns) do
    ~H"""
    <% # Importamos os helpers de formulário aqui, onde eles são realmente usados. %>
    <% import Phoenix.HTML.Form %>

    <%= form_for @conn, Routes.page_path(@conn, :subscribe), [class: "flex flex-col sm:flex-row gap-2"], fn f -> %>
      <%= text_input f, :email, placeholder: "Digite seu email", class: "border rounded p-2 flex-1", required: true %>
      <%= submit "Inscrever", class: "bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700" %>
    <% end %>
    """
  end
end