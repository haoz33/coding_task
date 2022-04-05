# Coding Task

Flutter version: Flutter 2.10.4 • channel stable

Should be runnable out of box with `flutter run`

# Packages used

1. `flutter_riverpod`, a state-management solution for Flutter.
2. `json_serializable`, a package for auto generate function for transform json object into class and class into json object.
3. `copy_with_extension`, a package for auto generate copyWith fields for a class, a time saver.
4. `http`, a package to send network request.
5. `cached_network_image`, cache images to reduce number of request sent to get a image from the server.
6. `badges`, a simple widget package.
7. `equatable`, a package for easily compare if two object are deeply equal, which is important when dealing with state changes.


# Structure


This project is splitted into three parts (features)

1. product 
2. cart 
3. view history 


# Product

1. fetch products from api. 

`productRepository` is created to handle the api calls. It fetches the result from the api and transform it into a typed object. Currently only default error handling is in place as it is unclear how errors should handled in the requirement.

Product data from the server is directly transformed into a dart object without any modification, which means that all data is in a string format. Because this is a relatively small project, so I decided to do the data transformation on the fly. This can be improved where transform some data into more specific type, for example `enum` for `stockStatus`, `double` for `price.amount`, and `Image` for `mainImage`. 

2. display product list.
3. display product detail page.
   

# Cart

1. add/remove/update a product into cart.
   
The Cart class uses a HashMap internally and expose items in lists format through a getter. This is done to reduce the lookup time when updating a cart item, using the id of the cart item can quickly perform update and remove operation.

```dart
Map<String,CartItem> data = Map()
```

Each cart item have a unique id and it is used as key of the HashMap.


2. display number of products in the cart.

For this I have used the `badge` package, it provides a out-of-box solution for placing a number on top right of an icon.

# View History 

I have used the `Queue` data structure to store the view history as it allows me to manipulate data at both end. When a new view is added, it will first check if it is already exist in the queue, if true then it will remove that history and append the current one into start of the queue.