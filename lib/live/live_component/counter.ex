defmodule TasbehWeb.CounterLive.LiveComponent.Counter do
  use Phoenix.LiveComponent
  def render(assigns) do
    ~H"""

    <p> LiveComponent <%= @content %> </p>



    """
  end
  def update(assigns, socket) do

   {:ok, assign(socket, :content, assigns.content)}
  end

  def handle_event("Reset", _meta, socket) do
    {:noreply, assign(socket, count: 0)}
  end
end
