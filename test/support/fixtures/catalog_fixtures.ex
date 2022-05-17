defmodule Tasbeh.CatalogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tasbeh.Catalog` context.
  """

  @doc """
  Generate a game.
  """
  def game_fixture(attrs \\ %{}) do
    {:ok, game} =
      attrs
      |> Enum.into(%{
        game_name: "some game_name"
      })
      |> Tasbeh.Catalog.create_game()

    game
  end
end
