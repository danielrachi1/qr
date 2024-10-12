defmodule QrWeb.QrLive do
  use QrWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_event("input_changed", %{"qr_input" => input_text}, socket) do
    IO.puts(input_text)
    {:noreply, socket}
  end
end
