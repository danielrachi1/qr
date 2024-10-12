defmodule QrWeb.QrLive do
  use QrWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
