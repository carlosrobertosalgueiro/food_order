defmodule FoodOrder.CategoriesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `FoodOrder.Categories` context.
  """

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> FoodOrder.Categories.create_category()

    category
  end
end
