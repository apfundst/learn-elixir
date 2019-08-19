defmodule ProductsParserTest do
  use ExUnit.Case
  doctest ProductsParser

  test "creates a map of brands" do
    products =
      [
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Cord_Burrito_Product_Pic1.jpg?v=1527177383",
          "item_name" => "The Cord Burrito",
          "item_url" => "https://andarwallets.com/products/cord-burrito",
          "price" => 6,
          "tags" => ["accessories", "wallets"]
        },
        %{

          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Ranger-Dark_Brown.JPG?v=1539024991",
          "item_name" => "The Ranger",
          "item_url" => "https://andarwallets.com/products/the-ranger",
          "price" => 45,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Cord_Burritos_4_Colors.jpg?v=1527177384",
          "item_name" => "The Cord Burrito Set",
          "item_url" => "https://andarwallets.com/products/the-burrito-set",
          "price" => 15,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Marshal-NB.jpg?v=1534300178",
          "item_name" => "The Marshal",
          "item_url" => "https://andarwallets.com/products/the-marshal",
          "price" => 38,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Porter-Black_7d87748f-bcb8-4136-93ac-f17654a15760.JPG?v=1527177406",
          "item_name" => "The Porter",
          "item_url" => "https://andarwallets.com/products/the-porter",
          "price" => 38,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Freeman-Black.JPG?v=1527177391",
          "item_name" => "The Freeman",
          "item_url" => "https://andarwallets.com/products/the-freeman",
          "price" => 25,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Griffin-Gray.JPG?v=1527177393",
          "item_name" => "The Griffin",
          "item_url" => "https://andarwallets.com/products/the-griffin",
          "price" => 40,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/DB_side.jpg?v=1537928880",
          "item_name" => "The Apollo",
          "item_url" => "https://andarwallets.com/products/the-apollo",
          "price" => 45,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Baron-Saddle_Brown.JPG?v=1531880678",
          "item_name" => "The Baron",
          "item_url" => "https://andarwallets.com/products/the-baron",
          "price" => 35,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Shipwire IL Warehouse",
          "brand_url" => "https://boulderdenim.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1124/8846/products/Athletic_Front_Cutout.jpg?v=1511036025",
          "item_name" => "Men's Athletic Fit",
          "item_url" => "https://boulderdenim.com/products/mens-athletic-fit",
          "price" => 129,
          "tags" => ["clothing", "pants", "climbing"]
        },
        %{
          "brand_name" => "Bulletprufe Denim",
          "brand_url" => "https://bulletprufe.myshopify.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/0991/5130/products/Ash_Grey_71bb232c-fbff-4ed8-b5cf-c2f6b713fcbd.jpg?v=1538679129",
          "item_name" => "Ash Grey Denim - Adventure Fit",
          "item_url" => "https://bulletprufe.myshopify.com/products/ash-grey-denim-adventure-fit",
          "price" => 98,
          "tags" => ["clothing", "pants"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Duke-Dark_Brown.JPG?v=1527177386",
          "item_name" => "The Duke",
          "item_url" => "",
          "price" => 25,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "ridebeeline",
          "brand_url" => "https://beeline.co/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1897/8919/products/Beeline_Product_Grey_Background_Keyring.jpg?v=1512402219",
          "item_name" => "Beeline Keyring",
          "item_url" => "https://beeline.co/products/beeline-keyring",
          "price" => 5,
          "tags" => ["activites", "bike", "electronics"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Scout-Tan.jpg?v=1527177408",
          "item_name" => "The Scout",
          "item_url" => "https://andarwallets.com/products/the-scout",
          "price" => 25,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Andar Wallets",
          "brand_url" => "https://andarwallets.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1030/7203/products/Monarch-Dark_Brown.jpg?v=1527177400",
          "item_name" => "The Monarch",
          "item_url" => "https://andarwallets.com/products/the-monarch-black",
          "price" => 25,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "BE Outfitter",
          "brand_url" => "https://beoutfitter.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1609/1747/products/Tahquitz-Main-1_1_92f1fe7a-2f64-4600-bff1-998d8231ebcb.jpg?v=1527187947",
          "item_name" => "Tahquitz Pack",
          "item_url" => "https://beoutfitter.com/products/tahquitz-pack-1",
          "price" => 139,
          "tags" => ["accessories", "bags_daypacks", "travel"]
        },
        %{
          "brand_name" => "Bulletprufe Denim",
          "brand_url" => "https://bulletprufe.myshopify.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/0991/5130/products/serengeti_tan_tsavo_chinos_-_adventure_fit.jpg?v=1510783557",
          "item_name" => "Serengeti Tan Tsavo Khakis - Adventure Fit",
          "item_url" => "https://bulletprufe.myshopify.com/products/serengeti-tan-tsavo-chinos-adventure-fit",
          "price" => 98,
          "tags" => ["clothing", "pants"]
        },
        %{
          "brand_name" => "Bulletprufe Denim",
          "brand_url" => "https://bulletprufe.myshopify.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/0991/5130/products/Rope_Swing.jpg?v=1529524577",
          "item_name" => "All-Day Teton Shorts",
          "item_url" => "https://bulletprufe.myshopify.com/products/all-day-teton-shorts",
          "price" => 49,
          "tags" => ["clothing", "shorts"]
        },
        %{
          "brand_name" => "Cedar Ravine",
          "brand_url" => "https://cedarravine.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1080/3130/products/dsw-classic.png?v=1502410014",
          "item_name" => "Classic Plaid Flannel Cardholder",
          "item_url" => "https://cedarravine.com/products/flannel-slim-wallet",
          "price" => 16.5,
          "tags" => ["accessories", "wallets"]
        },
        %{
          "brand_name" => "Cedar Ravine",
          "brand_url" => "https://cedarravine.com/",
          "currency" => "USD",
          "image" => "https://cdn.shopify.com/s/files/1/1080/3130/products/TieDyed_Mustard_beanie.jpg?v=1524246589",
          "item_name" => "Golden State Tie Dyed Beanie",
          "item_url" => "https://cedarravine.com/products/golden-state-tie-dyed-beanie",
          "price" => 23.5,
          "tags" => ["accessories", "beanies"]
        }
      ]


    brands = %{
      "https://andarwallets.com/" => %{
        brand_name: "Andar Wallets",
        tags: ["accessories", "wallets"]
      },
      "https://beeline.co/" => %{
        brand_name: "ridebeeline",
        tags: ["activites", "bike", "electronics"]
      },
      "https://beoutfitter.com/" => %{
        brand_name: "BE Outfitter",
        tags: ["accessories", "bags_daypacks", "travel"]
      },
      "https://boulderdenim.com/" => %{
        brand_name: "Shipwire IL Warehouse",
        tags: ["clothing", "pants", "climbing"]
      },
      "https://bulletprufe.myshopify.com/" => %{
        brand_name: "Bulletprufe Denim",
        tags: ["clothing", "pants", "shorts"]
      },
      "https://cedarravine.com/" => %{
        brand_name: "Cedar Ravine",
        tags: ["accessories", "wallets", "beanies"]
      }
    }
    assert ProductsParser.call(products) == brands

  end
end
