defmodule TasbehWeb.GameLive do
  use TasbehWeb, :live_view

  def mount(_params, %{"user_token" => _user_token}, socket) do
    # game = %Tasbeh.Catalog.Game{}
    # changeset = Tasbeh.Catalog.change_game(game)


    {:ok,
      socket
      |> assign(:games, Tasbeh.Catalog.list_games())
     }
  end

  def handle_event("Add",%{"game" => name}, socket) do
    IO.inspect(name)
    Tasbeh.Catalog.create_game(name)

    {:noreply, assign(socket, games: Tasbeh.Catalog.list_games())}
  end

  def handle_event("Delete",%{"id" => id}, socket) do

    Tasbeh.Catalog.get_game!(id)
    |> Tasbeh.Catalog.delete_game()

    {:noreply, assign(socket, games: Tasbeh.Catalog.list_games())}
  end
  # def handle_event("validate", %{"game" => game_params}, socket) do
  #   changeset =
  #     socket.assigns.game
  #     |> Tasbeh.Catalog.change_game(game_params)
  #     |> Map.put(:action, :validate)

  #   {:noreply, assign(socket, :changeset, changeset)}
  # end
end
