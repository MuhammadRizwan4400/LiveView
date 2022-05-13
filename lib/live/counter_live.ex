defmodule TasbehWeb.CounterLive do
  use TasbehWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, count: 0)}
  end

  # def render(assigns) do
  #   ~L"""
  #   <h1>Counter : <%= @count %></h1>
  #   <button phx-click="inc">inc </button>
  #   """
  # end
  def inc(socket) do
    assign(socket, count: socket.assigns.count + 1)
  end
  def handle_event("inc", _meta, socket) do
    {:noreply, inc(socket)}
  end
end
