defmodule ProductsParser.Solution do

  def call(products) do
    products
    |> Enum.reject(fn x -> is_nil(x["brand_url"]) end)
    |> Enum.reduce(%{}, fn item, acc ->
        case Map.get(acc, item["brand_url"]) do
          nil ->
            value = %{
              tags: item["tags"] || [],
              brand_name: item["brand_name"]
            }
            Map.put(acc, item["brand_url"], value)

          original_value ->
              case item["tags"] do
                nil ->
                  Map.put(acc["brand_url"], :tags, original_value[:tags] || [])
                additional_tags ->
                  new_tags = original_value[:tags] ++ additional_tags
                  |> Enum.uniq()
                  new_value = Map.put(original_value, :tags, new_tags)
                  Map.put(acc, item["brand_url"], new_value)
              end

        end

    end)
    |> IO.inspect()
  end
end
