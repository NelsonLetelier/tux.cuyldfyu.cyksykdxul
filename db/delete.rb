productos = Product.all
productos.each do |producto|
	producto.delete
end


Product.create(description: "iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.", imageUrl: "http://107.21.105.109/tienda1/image/cache/data/iphone_1-228x228.jpg", name: "iPhone", price: 120.68, store: "tienda1 http://107.21.105.109/tienda1/index.php?route=product/product&product_id=40", tipe: "smartphone apple iphone")
Product.create(description: "iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.", imageUrl: "http://107.21.105.109/tienda2/image/cache/data/iphone_2-500x500.jpg", name: "iPhone", price: 190, store: "tienda2 http://107.21.105.109/tienda2/index.php?route=product/product&product_id=40", tipe: "smartphone apple iphone")
Product.create(description: "Imagine the advantages of going big without slowing down. The big 19 inches 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it's not hard to imagine.", imageUrl: "http://107.21.105.109/tienda1/image/cache/data/monitor19-500x500.jpeg", name: "Samsung SyncMaster 941BW", price: 237, store: "tienda1 http://107.21.105.109/tienda1/index.php?route=product/product&path=25_28&product_id=33", tipe: "monitor screen")
Product.create(description: "Imagine the advantages of going big without slowing down. The big 19 inches 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it's not hard to imagine.", imageUrl: "http://107.21.105.109/tienda2/image/cache/data/samsung_syncmaster_941bw-228x228.jpg", name: "Samsung SyncMaster 941BW", price: 213.50, store: "tienda2 http://107.21.105.109/tienda2/index.php?route=product/product&path=25_28&product_id=33", tipe: "monitor screen")
Product.create(description: "The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work.", imageUrl: "http://107.21.105.109/tienda1/image/cache/data/apple_30_inch_LCD-500x500.jpg", name: "Apple Cinema 30 inches", price: 107.75, store: "tienda1 http://107.21.105.109/tienda1/index.php?route=product/product&path=25_28&product_id=42", tipe: "monitor screen apple")
Product.create(description: "The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work.", imageUrl: "http://107.21.105.109/tienda2/image/cache/data/apple_cinema_30-228x228.jpg", name: "Apple Cinema 30 inches", price: 96, store: "tienda2 http://107.21.105.109/tienda2/index.php?route=product/product&path=25_28&product_id=42", tipe: "monitor screen apple")



























