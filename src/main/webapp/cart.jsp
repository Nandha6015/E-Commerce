<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>product</title>
    <link rel="stylesheet" href="cart.css" />
    <script>
    

    </script>
  </head>
  <body>
    <div class="container">
      <c:forEach items="$(product)" var="prod">

          <div class="main">       
          <div class="left-column">
            
              <c:out value="{prod.prodImgSrc}" />
              <img id="img" src="d.jfif" alt="Girl in a jacket" >
            
          </div>
          <div class="right-column">
            
              <c:out value="{prod.prodName}" />
              <p>name is here</p>
            
            
              <c:out value="{prod.prodDesc}" />
              <p>desc is here</p>
            
              <c:out value="{prod.prodPrice}" />
              <p>price is here</p>
              
              <div class="product-count">
                <button class="button-count no-active" disabled>-</button>
                <input type="text" readonly class="number-product" value="1">
                <button class="button-count">+</button>
              </div>
              <p class="prod-ttl-price">total price here</p>

            </div> 
          </div>
      </c:forEach>
    </div>
    <div class="main1">
      <p class="cart-price">cart price here</p>
      <a class="order-btn">order</a>
    </div>
  </body>
</html>
