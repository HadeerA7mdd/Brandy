# Brandy


An elegant iOS application that displays a product catalog using the [FakeStore API](https://fakestoreapi.com/products). Built using **Swift** and **UIKit**, it features list/grid views, paginated data fetching, offline caching, and a smooth user experience.

---

##  Features

- ✅ Fetch and display paginated products (7 per page)
- ✅ Toggle between **Grid View** and **List View** using buttons
- ✅ Display **product details** on a new screen
- ✅ Stretchable product image header in detail view on scroll
- ✅ Show **Skeleton Loaders** while list data is loading
- ✅ Handle internet connection issues with local caching
- ✅ Show cached products if offline
- ✅ Notify user of any request failure
- ✅ Adaptive layout across various screen sizes

---

## Architecture

Implemented using the **MVVM (Model-View-ViewModel)** pattern for maintainability and reusability:

- `Model` – API data structures (Product, Rating)
- `ViewModel` – Business logic & pagination management
- `ViewController` – UI binding and user interaction
- `NetworkManager` – API calls handled via **Alamofire**


## Libraries Used

| Library         | Purpose                                 |
|----------------|------------------------------------------|
| [Alamofire](https://github.com/Alamofire/Alamofire) | Networking layer |
| [SDWebImage](https://github.com/SDWebImage/SDWebImage) | Image loading + caching |
| [SkeletonView](https://github.com/Juanpe/SkeletonView) | Elegant loading animation |

---

##  Functional Highlights

### Grid / List Toggle
- Toggle between layouts using two buttons (List/Grid)
- Layout updates dynamically 

### Pagination
- Loads 7 products per request
- Automatically loads the next page as user scrolls near bottom

### Detail Page
- Stretchable image header using `UIScrollView` offset
- Displays product title, price, category, description , Rate and rate Count

### Offline Caching
- Caches last successful product list locally
- Automatically falls back to cached data if no internet

### Error Handling & Indicators
- Skeleton view for loading product lists
- Alerts on request failure with retry logic


## Screenshots

/Users/hader/Desktop/Simulator Screenshot - iPhone 16 Plus - 2025-07-20 at 14.03.16.png

/Users/hader/Desktop/Simulator Screenshot - iPhone 16 Plus - 2025-07-20 at 16.44.32.png

/Users/hader/Desktop/Simulator Screenshot - iPhone 16 Plus - 2025-07-20 at 16.44.42.png

/Users/hader/Desktop/Simulator Screenshot - iPhone 16 Plus - 2025-07-20 at 16.44.56.png

/Users/hader/Desktop/Simulator Screenshot - iPhone 16 Plus - 2025-07-20 at 16.45.03.png
