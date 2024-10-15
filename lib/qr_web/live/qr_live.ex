defmodule QrWeb.QrLive do
  use QrWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, encoded_svg_qr_code} =
      "danielrachi.com"
      |> QRCode.create()
      |> QRCode.render()
      |> QRCode.to_base64()

    socket = assign(socket, :encoded_svg_qr_code, encoded_svg_qr_code)

    {:ok, socket}
  end

  def handle_event("input_changed", %{"qr_input" => input_text}, socket) do
    {:ok, encoded_svg_qr_code} =
      input_text
      |> QRCode.create()
      |> QRCode.render()
      |> QRCode.to_base64()

    socket = assign(socket, :encoded_svg_qr_code, encoded_svg_qr_code)

    {:noreply, socket}
  end
end
