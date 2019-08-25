# ProductsParser

Given we have a list of maps that looks like:

```
 %{
  "brand_name" => "Andar Wallets",
  "brand_url" => "https://andarwallets.com/",
  "currency" => "USD",
  "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Cord_Burrito_Product_Pic1.jpg?v=1527177383",
  "item_name" => "The Cord Burrito",
  "item_url" => "https://andarwallets.com/products/cord-burrito",
  "price" => 6,
  "tags" => ["accessories", "wallets"]
}
```


Write a function that generates brands


```
[%{
  brand_url: "https://andarwallets.com/"
  brand_name: "Andar Wallets",
  tags: ["accessories", "wallets"]
  },
}]
```

`brand_url` is a unique identifier, and `tags` should be a list of all unique tags for products sharing a brand_url.