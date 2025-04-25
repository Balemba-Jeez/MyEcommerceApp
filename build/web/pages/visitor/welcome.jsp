<%-- Document : home Created on : 24 Apr 2025, 16:29:03 Author : acer --%>

  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>E-Commerce</title>

      <!-- 
    - favicon
  -->
      <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">

      <!-- 
    - custom css link
  -->
      <link rel="stylesheet" type="text/css" href="{pageContext.request.contextPath}/assets/css/style.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/responsive.css">

      <!-- 
    - google font link
  -->
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link
        href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;400;500;600;700&family=Roboto:wght@400;500;700&display=swap"
        rel="stylesheet">

      <!-- 
    - preload banner
  -->
      <link rel="preload" href="${pageContext.request.contextPath}/assets/images/hero-banner.png" as="image">

    </head>

    <body id="top">

      <!-- 
    - #HEADER
  -->

      <header class="header" data-header>
        <div class="container">

          <div class="overlay" data-overlay></div>

          <a href="#" class="logo">
            <img src="./assets/images/logo1.svg" width="160" height="70" alt="logo">
          </a>

          <button class="nav-open-btn" data-nav-open-btn aria-label="Open Menu">
            <ion-icon name="menu-outline"></ion-icon>
          </button>

          <nav class="navbar" data-navbar>

            <button class="nav-close-btn" data-nav-close-btn aria-label="Close Menu">
              <ion-icon name="close-outline"></ion-icon>
            </button>

            <a href="#" class="logo">
              <img src="./assets/images/logo1.svg" width="190" height="50" alt="logo">
            </a>

            <ul class="navbar-list">

              <li class="navbar-item">
                <a href="#" class="navbar-link">Home</a>
              </li>

              <li class="navbar-item">
                <a href="#" class="navbar-link">About</a>
              </li>

              <li class="navbar-item">
                <a href="#" class="navbar-link">Products</a>
              </li>

              <li class="navbar-item">
                <a href="#" class="navbar-link">Shop</a>
              </li>

              <li class="navbar-item">
                <a href="#" class="navbar-link">Blog</a>
              </li>

              <li class="navbar-item">
                <a href="#" class="navbar-link">Contact</a>
              </li>

            </ul>

            <ul class="nav-action-list">

              <li>
                <button class="nav-action-btn">
                  <ion-icon name="search-outline" aria-hidden="true"></ion-icon>

                  <span class="nav-action-text">Search</span>
                </button>
              </li>

              <li>
                <a href="#" class="nav-action-btn">
                  <ion-icon name="person-outline" aria-hidden="true"></ion-icon>

                  <span class="nav-action-text">Login / Register</span>
                </a>
              </li>

              <li>
                <button class="nav-action-btn">
                  <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>

                  <span class="nav-action-text">Wishlist</span>

                  <data class="nav-action-badge" value="5" aria-hidden="true">5</data>
                </button>
              </li>

              <li>
                <button class="nav-action-btn">
                  <ion-icon name="bag-outline" aria-hidden="true"></ion-icon>

                  <data class="nav-action-text" value="318.00">Basket: <strong>$318.00</strong></data>

                  <data class="nav-action-badge" value="4" aria-hidden="true">4</data>
                </button>
              </li>

            </ul>

          </nav>

        </div>
      </header>
      <!--Hero Section-->
      <section class="hero" style="background-image: url(assets/images/hero-image.jpg);">
        <div class="hero-container">
          <div class="hero-title">
            <span class="hero-heading">
              Big Offer 50% off
            </span>
            <h1 class="hero-main-title">
              New Collection
            </h1>
            <p class="hero-sub-heading">
              Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Nulla, temporibus beatae nisi,
              modi id esse placeat sit sint quod nihil
              neque, harum debitis. Sapiente
              excepturi amet voluptatum tempora hic quam!
            </p>
            <a href="#" class="action-btn">Shop Now</a>
          </div>
        </div>
      </section>
      <!--End Hero Section-->

      <!--icons Section-->
      <section class="icons">
        <div class="icons-container">
          <div class="icons-items">
            <div class="icons-items-icon">
              <i class="fa-solid fa-truck icons-icon"></i>
            </div>
            <div class="icons-items-heading">
              <span class="icons-heading">Free Delievery</span>
              <span class="icon-sub-heading">Get free delivery for every order above 30$</span>
            </div>
          </div>

          <div class="icons-items">
            <div class="icons-items-icon">
              <i class="fa-solid fa-right-left icons-icon"></i>
            </div>
            <div class="icons-items-heading">
              <span class="icons-heading">7 Days Return</span>
              <span class="icon-sub-heading">Return within 7days of receiving your order</span>
            </div>
          </div>

          <div class="icons-items">
            <div class="icons-items-icon">
              <i class="fa-solid fa-money-bills icons-icon"></i>
            </div>
            <div class="icons-items-heading">
              <span class="icons-heading">Secure Payment</span>
              <span class="icon-sub-heading">100% Secure payment. Get easy support anytime</span>
            </div>
          </div>

          <div class="icons-items">
            <div class="icons-items-icon">
              <i class="fa-solid fa-headset icons-icon"></i>
            </div>
            <div class="icons-items-heading">
              <span class="icons-heading">24/7 Support</span>
              <span class="icon-sub-heading">Dedicates support anytime anywhere</span>
            </div>
          </div>
        </div>
      </section>
      <!--End Icons Section-->

      <!--Deals Section-->
      <section class="deal">
        <div class="deal-container">
          <div class="deal-heading">
            <i class="fa-solid fa-bolt deal-icon"></i>
            <span class="deal-main-title">Flash Deals</span>
          </div>
          <div class="deal-item">
            <div class="deal-items-list">
              <div class="deal-items-info">
                <span class="deal-name">
                  Playstation 4 Game Pro
                </span>
                <span class="deal-price">
                  $500
                </span>
                <a href="#" class="deal-btn">Buy Now <i class="fa-solid fa-chevron-right"></i></a>
              </div>
              <div class="deal-items-img">
                <img
                  src="https://cdn.shopify.com/s/files/1/0328/7066/2275/products/CarbonFibreWhite_084f710f-02d0-48e4-bb93-3f5519358b04_2048x2048.png?v=1612446619"
                  class="deal-image" alt="">
              </div>
            </div>

            <div class="deal-items-list">
              <div class="deal-items-info">
                <span class="deal-name">
                  Long Puffer Winter Coat
                </span>
                <span class="deal-price">
                  $200
                </span>
                <a href="#" class="deal-btn">Buy Now <i class="fa-solid fa-chevron-right"></i></a>
              </div>
              <div class="deal-items-img">
                <img
                  src="https://plussnow.r.worldssl.net/pub/media/catalog/product/cache/df0a5c5e913dfa8c6fbfb641c7468dd5/s/t/stoy_brigitta_ladies_plus_size_long_puffer_winter_coat_black_front.png"
                  class="deal-image" alt="">
              </div>
            </div>

            <div class="deal-items-list">
              <div class="deal-items-info">
                <span class="deal-name">
                  Casual Shoes
                </span>
                <span class="deal-price">
                  $100
                </span>
                <a href="#" class="deal-btn">Buy Now <i class="fa-solid fa-chevron-right"></i></a>
              </div>
              <div class="deal-items-img">
                <img src="https://freepngimg.com/thumb/categories/627.png" class="deal-image" alt="">
              </div>
            </div>
          </div>
          <div class="left-right-icon">
            <i class="fa-solid fa-arrow-left deal-left-icon"></i>
            <i class="fa-solid fa-arrow-right deal-right-icon"></i>
          </div>
        </div>
      </section>
      <!--End Deal Section-->

      <!--Hot Deal Section-->
      <section class="hot-deal">
        <div class="hot-deal-container">
          <div class="hot-deal-headings">
            <div class="hot-deal-main-title">
              <i class="fa-solid fa-fire hot-deal-icon"></i>
              <span class="hot-deal-main-title">Hot Deals</span>
            </div>
            <div class="hot-deal-button">
              <a href="#" class="hot-deal-btn">See All</a>
            </div>
          </div>

          <div class="hot-deal-items">
            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag">
                  New
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://www.freepnglogos.com/uploads/shoes-png/shoes-bright-safety-shoe-20.png"
                  class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Casual Shoes</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Men/Women</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag-sale">
                  Sale
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img
                  src="https://www.pngitem.com/pimgs/b/47-479625_ring-png-solitaire-diamond-ring-gold-transparent-png.png"
                  class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Finger Ring</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Women</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag">
                  New
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://www.freeiconspng.com/thumbs/heels-png/heels-png-file-10.png" class="hot-deal-img"
                  alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Heals</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Women</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag-sale">
                  Sale
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://5.imimg.com/data5/CI/EX/MY-16338676/men-leather-formal-shoes-500x500.jpg"
                  class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Lather Shoes</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Mens</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag">
                  New
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://freepngimg.com/save/31770-cricket-bat-image/1000x1000" class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Cricket Bat</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Men/Women</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag">
                  New
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://admin.pngadgil1832.com/UploadedFiles/ProductImages/OTH3068178PNG_01.png"
                  class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Women Watch</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Women</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag-sale">
                  Sale
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://purepng.com/public/uploads/large/wrist-watch-ogx.png" class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Wrist Watch</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Mens</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag-sale">
                  Sale
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://freepngimg.com/thumb/categories/1543.png" class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Boys T-Shirt</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Mens</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag-sale">
                  Sale
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://freepngimg.com/thumb/categories/1543.png" class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Boys T-Shirt</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Mens</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag">
                  New
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://www.pngall.com/wp-content/uploads/2016/06/Adidas-Shoes-Free-Download-PNG.png"
                  class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Adidas Shoes</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Men/Women</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag-sale">
                  Sale
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://freepngimg.com/thumb/categories/1543.png" class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Boys T-Shirt</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Mens</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="hot-deal-items-list">
              <div class="hot-deal-tag">
                <span class="deal-tag-sale">
                  Sale
                </span>
              </div>
              <div class="hot-deal-list-image">
                <img src="https://i.pinimg.com/originals/42/66/59/42665914a91827984d705f2129f519ef.png"
                  class="hot-deal-img" alt="">
                <div class="hot-deal-icons">
                  <a href=""><i class="fa-solid fa-code-compare"></i></a>
                  <a href=""><i class="fa-regular fa-heart"></i></a>
                  <a href=""><i class="fa-regular fa-eye"></i></a>
                </div>
              </div>

              <div class="hot-deal-list-info">
                <span class="hot-deal-item-name">
                  <a href="">Red Prom Dress</a>
                </span>
                <span class="hot-deal-item-type">
                  <a href="">Women</a>
                </span>
                <div class="hot-deal-footer">
                  <div class="hot-deal-list-price">
                    <span class="hot-deal-active-price">
                      $50
                    </span>
                    <span class="hot-deal-del-price">
                      <strike> $65</strike>
                    </span>
                  </div>
                  <div class="hot-deal-items-cart-btn">
                    <a href="#" class="hot-deal-cart">Add to cart</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="load-more">
            <a href="#" class="hot-deal-more-btn">Load More <i class="fa-solid fa-rotate"></i></a>
          </div>
        </div>
      </section>
      <!--End Hot Deals Section-->


      <!--Category-->
      <section class="category">
        <div class="category-container">
          <div class="category-list">
            <div class="category-list-item">
              <div class="category-headings">
                <div class="heading">
                  <span class="category-title">
                    Men's Item
                  </span>
                  <span class="category-title-heading">
                    The Winter Sale Off 50%
                  </span>
                  <a href="#" class="category-btn">Shop Now</a>
                </div>
              </div>
            </div>

            <div class="category-list-item">
              <div class="category-headings">
                <div class="heading">
                  <span class="category-title">
                    Women's Item
                  </span>
                  <span class="category-title-heading">
                    The Winter Sale Off 50%
                  </span>
                  <a href="#" class="category-btn">Shop Now</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--End Category Section-->

      <!--Product Section-->
      <section class="product">
        <div class="product-container">
          <div class="product-heading">
            <div class="product-heading-icon">
              <i class="fa-solid fa-shirt all-product-icon"></i>
              <span class="product-title">All Products</span>
            </div>
            <div class="product-heading-btn">
              <a href="#" class="all-product-btn">See All</a>
            </div>
          </div>
          <div class="product-item">
            <!--1st Coloum-->
            <div class="product-box">
              <span class="product-list-title">Trending</span>
              <div class="product-item-list">
                <div class="product-img">
                  <img
                    src="https://static.vecteezy.com/system/resources/thumbnails/008/847/343/small/isolated-blue-front-sweater-free-png.png"
                    class="product-list-img" alt="">
                </div>
                <div class="product-info">
                  <span class="product-name">
                    Causual Shoes
                  </span>
                  <span class="product-price">
                    Price: $50
                  </span>
                  <div class="product-foot">
                    <abbr title="Add to Cart"><a href="#" class="product-cart"><i
                          class="fa-solid fa-cart-shopping"></i></a></abbr>
                    <abbr title="Add to Wishlist"><a href="#" class="product-cart"><i
                          class="fa-regular fa-heart"></i></a></abbr>
                  </div>
                </div>
              </div>

              <div class="product-item-list">
                <div class="product-img">
                  <img
                    src="https://static.vecteezy.com/system/resources/thumbnails/008/847/343/small/isolated-blue-front-sweater-free-png.png"
                    class="product-list-img" alt="">
                </div>
                <div class="product-info">
                  <span class="product-name">
                    Causual Shoes
                  </span>
                  <span class="product-price">
                    Price: $50
                  </span>
                  <div class="product-foot">
                    <abbr title="Add to Cart"><a href="#" class="product-cart"><i
                          class="fa-solid fa-cart-shopping"></i></a></abbr>
                    <abbr title="Add to Wishlist"><a href="#" class="product-cart"><i
                          class="fa-regular fa-heart"></i></a></abbr>
                  </div>
                </div>
              </div>

              <div class="product-item-list">
                <div class="product-img">
                  <img
                    src="https://static.vecteezy.com/system/resources/thumbnails/008/847/343/small/isolated-blue-front-sweater-free-png.png"
                    class="product-list-img" alt="">
                </div>
                <div class="product-info">
                  <span class="product-name">
                    Causual Shoes
                  </span>
                  <span class="product-price">
                    Price: $50
                  </span>
                  <div class="product-foot">
                    <abbr title="Add to Cart"><a href="#" class="product-cart"><i
                          class="fa-solid fa-cart-shopping"></i></a></abbr>
                    <abbr title="Add to Wishlist"><a href="#" class="product-cart"><i
                          class="fa-regular fa-heart"></i></a></abbr>
                  </div>
                </div>
              </div>
            </div>
            <!--End 1st Coloum-->

            <!--2nd Coloum-->
            <div class="product-box">
              <span class="product-list-title">Top Selling</span>
              <div class="product-item-list">
                <div class="product-img">
                  <img
                    src="https://static.vecteezy.com/system/resources/thumbnails/008/847/343/small/isolated-blue-front-sweater-free-png.png"
                    class="product-list-img" alt="">
                </div>
                <div class="product-info">
                  <span class="product-name">
                    Causual Shoes
                  </span>
                  <span class="product-price">
                    Price: $50
                  </span>
                  <div class="product-foot">
                    <abbr title="Add to Cart"><a href="#" class="product-cart"><i
                          class="fa-solid fa-cart-shopping"></i></a></abbr>
                    <abbr title="Add to Wishlist"><a href="#" class="product-cart"><i
                          class="fa-regular fa-heart"></i></a></abbr>
                  </div>
                </div>
              </div>

              <div class="product-item-list">
                <div class="product-img">
                  <img
                    src="https://static.vecteezy.com/system/resources/thumbnails/008/847/343/small/isolated-blue-front-sweater-free-png.png"
                    class="product-list-img" alt="">
                </div>
                <div class="product-info">
                  <span class="product-name">
                    Causual Shoes
                  </span>
                  <span class="product-price">
                    Price: $50
                  </span>
                  <div class="product-foot">
                    <abbr title="Add to Cart"><a href="#" class="product-cart"><i
                          class="fa-solid fa-cart-shopping"></i></a></abbr>
                    <abbr title="Add to Wishlist"><a href="#" class="product-cart"><i
                          class="fa-regular fa-heart"></i></a></abbr>
                  </div>
                </div>
              </div>

              <div class="product-item-list">
                <div class="product-img">
                  <img
                    src="https://static.vecteezy.com/system/resources/thumbnails/008/847/343/small/isolated-blue-front-sweater-free-png.png"
                    class="product-list-img" alt="">
                </div>
                <div class="product-info">
                  <span class="product-name">
                    Causual Shoes
                  </span>
                  <span class="product-price">
                    Price: $50
                  </span>
                  <div class="product-foot">
                    <abbr title="Add to Cart"><a href="#" class="product-cart"><i
                          class="fa-solid fa-cart-shopping"></i></a></abbr>
                    <abbr title="Add to Wishlist"><a href="#" class="product-cart"><i
                          class="fa-regular fa-heart"></i></a></abbr>
                  </div>
                </div>
              </div>
            </div>
            <!--End 2nd Coloum-->

            <!--3rd Coloum-->
            <div class="product-box">
              <span class="product-list-title">Sale</span>
              <div class="product-item-list">
                <div class="product-img">
                  <img
                    src="https://static.vecteezy.com/system/resources/thumbnails/008/847/343/small/isolated-blue-front-sweater-free-png.png"
                    class="product-list-img" alt="">
                </div>
                <div class="product-info">
                  <span class="product-name">
                    Causual Shoes
                  </span>
                  <span class="product-price">
                    Price: $50
                  </span>
                  <div class="product-foot">
                    <abbr title="Add to Cart"><a href="#" class="product-cart"><i
                          class="fa-solid fa-cart-shopping"></i></a></abbr>
                    <abbr title="Add to Wishlist"><a href="#" class="product-cart"><i
                          class="fa-regular fa-heart"></i></a></abbr>
                  </div>
                </div>
              </div>

              <div class="product-item-list">
                <div class="product-img">
                  <img
                    src="https://static.vecteezy.com/system/resources/thumbnails/008/847/343/small/isolated-blue-front-sweater-free-png.png"
                    class="product-list-img" alt="">
                </div>
                <div class="product-info">
                  <span class="product-name">
                    Causual Shoes
                  </span>
                  <span class="product-price">
                    Price: $50
                  </span>
                  <div class="product-foot">
                    <abbr title="Add to Cart"><a href="#" class="product-cart"><i
                          class="fa-solid fa-cart-shopping"></i></a></abbr>
                    <abbr title="Add to Wishlist"><a href="#" class="product-cart"><i
                          class="fa-regular fa-heart"></i></a></abbr>
                  </div>
                </div>
              </div>

              <div class="product-item-list">
                <div class="product-img">
                  <img
                    src="https://static.vecteezy.com/system/resources/thumbnails/008/847/343/small/isolated-blue-front-sweater-free-png.png"
                    class="product-list-img" alt="">
                </div>
                <div class="product-info">
                  <span class="product-name">
                    Causual Shoes
                  </span>
                  <span class="product-price">
                    Price: $50
                  </span>
                  <div class="product-foot">
                    <abbr title="Add to Cart"><a href="#" class="product-cart"><i
                          class="fa-solid fa-cart-shopping"></i></a></abbr>
                    <abbr title="Add to Wishlist"><a href="#" class="product-cart"><i
                          class="fa-regular fa-heart"></i></a></abbr>
                  </div>
                </div>
              </div>
            </div>
            <!-- End 3rd Coloum-->
          </div>
          <div class="left-right-icon">
            <i class="fa-solid fa-arrow-left deal-left-icon"></i>
            <i class="fa-solid fa-arrow-right deal-right-icon"></i>
          </div>
        </div>
      </section>
      <!--End Product Section-->

      <!--Footer Section-->
      <section class="footer">
        <div class="footer-container">
          <div class="footer-menu">
            <div class="footer-menu-list">
              <div class="footer-heading">
                <i class="fa-solid fa-angles-right"></i>
                <span class="footer-title">Company</span>
              </div>
              <div class="footer-menu-items">
                <p class="footer-sub-description">Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                  Libero illum ducimus magnam deleniti earum
                  dolorum minus commodi facere quasi, officia modi
                  quis minima quisquam optio ipsam molestiae
                  blanditiis consequatur et.</p>
              </div>
            </div>

            <div class="footer-menu-list">
              <div class="footer-heading">
                <i class="fa-solid fa-angles-right"></i>
                <span class="footer-title">Links</span>
              </div>
              <div class="footer-menu-items">
                <a href="#">Home</a>
                <a href="#">About</a>
                <a href="#">Category</a>
                <a href="#">Product</a>
                <a href="#">Shop</a>

              </div>
            </div>

            <div class="footer-menu-list">
              <div class="footer-heading">
                <i class="fa-solid fa-angles-right"></i>
                <span class="footer-title">Resources</span>
              </div>
              <div class="footer-menu-items">
                <a href="#">Term & Condition</a>
                <a href="#">Return Policy</a>
                <a href="#">Safety</a>
                <a href="#">Privacy</a>
                <a href="#">COD</a>
              </div>
            </div>

            <div class="footer-menu-list">
              <div class="footer-heading">
                <i class="fa-solid fa-angles-right"></i>
                <span class="footer-title">Support</span>
              </div>
              <div class="footer-menu-items">
                <div class="footer-support">
                  <i class="fa-solid fa-envelope"></i>
                  <span class="support-title">support@codebyadnan.com</span>
                </div>
                <div class="footer-support">
                  <i class="fa-solid fa-phone"></i>
                  <span class="support-title">+923432985505</span>
                </div>
                <div class="footer-support">
                  <i class="fa-solid fa-globe"></i>
                  <span class="support-title">www.codebyadnan.com</span>
                </div>
                <div class="footer-support">
                  <div class="footer-icon">
                    <a href="#"><i class="fa-brands fa-facebook"></i></a>
                    <a href="#"><i class="fa-brands fa-whatsapp"></i></a>
                    <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="credit">
          <div class="credit-container">
            <div class="author-name">
              Created By: <a href="www.codebyadnan.com"> <span>Adnan Khan</span></a>
            </div>
          </div>
        </div>
      </section>
      <!--End Footer Section-->

      <!-- 
    - #GO TO TOP
  -->

      <a href="#top" class="go-top-btn" data-go-top>
        <ion-icon name="arrow-up-outline"></ion-icon>
      </a>





      <!-- 
    - custom js link
  -->
      <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>

      <!-- 
    - ionicon link
  -->
      <script src="https://kit.fontawesome.com/9498bdc1c3.js" crossorigin="anonymous"></script>
      <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
      <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    </body>

    </html>