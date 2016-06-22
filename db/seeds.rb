# Product.create!([
#   {name: "paint", image: "http://www.paintdropsri.com/_include/img/slider-images/1442516133colourful-paints-colors-24236829-1920-1312.jpg", description: "many colors, for creating masterpieces", price: "3.0", supplier_id: nil},
#   {name: "clay", image: "http://becksplastilin.de/images/slideshow_produkte/slideshow_industrieknete/400/04_Becks_Plastilin_Industrie_Knete.jpg", description: "2 pounds of grey clay", price: "7.0", supplier_id: nil},
#   {name: "canvas", image: "http://www.romanpichler.com/wp-content/uploads/2012/07/blank-canvas.jpg", description: "blank canvas", price: "14.67", supplier_id: nil},
#   {name: "imara", image: "http://cdn.shocho.co/sc-image/a/8/c/f/a8cf8087519af7fb67f0a6ed0a3c2de9.jpg", description: "it is clade imara", price: "879.99", supplier_id: nil},
#   {name: "paint brushes", image: "http://www.stubbypencilstudio.com/PDGImages/FCAST_TRIBRUSHSET.jpg", description: "paint brushes of any size", price: "5.58", supplier_id: nil}
# ])
# Supplier.create!([
#   {name: "Artsy", email: "artsy@yahoo.com", phone: "(999)555-9999"}
# ])

images = Image.create!([
  { image: 'http://www.stubbypencilstudio.com/PDGImages/FCAST_TRIBRUSHSET.jpg'},
  { image: 'http://cdn.shocho.co/sc-image/a/8/c/f/a8cf8087519af7fb67f0a6ed0a3c2de9.jpg'},
  { image: 'http://www.romanpichler.com/wp-content/uploads/2012/07/blank-canvas.jpg'},
  { image: 'http://becksplastilin.de/images/slideshow_produkte/slideshow_industrieknete/400/04_Becks_Plastilin_Industrie_Knete.jpg'},
  { image: 'http://www.paintdropsri.com/_include/img/slider-images/1442516133colourful-paints-colors-24236829-1920-1312.jpg'}
  ])
