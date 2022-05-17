defmodule Tasbeh.SurveyFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tasbeh.Survey` context.
  """

  @doc """
  Generate a rating.
  """
  def rating_fixture(attrs \\ %{}) do
    {:ok, rating} =
      attrs
      |> Enum.into(%{
        rating: 42
      })
      |> Tasbeh.Survey.create_rating()

    rating
  end
end
