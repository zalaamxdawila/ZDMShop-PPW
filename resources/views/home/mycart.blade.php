<!DOCTYPE html>
<html>

<head>

    @include('home.css')

    <style>

        .div_deg
        {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 60px;
        }

        table
        {
            border: 2px solid black;
            text-align: center;
            width: 800px;
        }

        th
        {
            border: 2px solid black;
            text-align: center;
            color: white;
            font: 20px;
            font-weight: bold;
            background-color: black;
        }

        td
        {
            border: 1px solid skyblue;

        }

        .cart_value
        {
            text-align: center;
            margin-bottom: 70px;
            padding: 18px;
        }

        .order_deg
        {
            padding-right: 100px;
            margin-top: -50px;
        }

        label
        {
            display: inline-block;
            width: 150px;
        }

        .div_gap
        {
            padding: 20px;
        }


    </style>

</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              ZDM
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""></span>
          </button>
    
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  ">
              <li class="nav-item">
                <a class="nav-link" href="{{ url('/') }}">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ url('shop') }}">
                  Shop
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ url('why') }}">
                  Why Us
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ url('testimonial') }}">
                  Testimonial
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ url('contact') }}">Contact Us</a>
              </li>
    
              <li class="nav-item">
                <a class="nav-link" href="{{ url('panduan') }}">Panduan</a>
              </li>
            </ul>
            <div class="user_option">
    
    
              @if (Route::has('login'))
    
    
                @auth
    
              
                <a href="{{ url('mycart') }}">
                  <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                  [{{ $count }}]
                </a>
    
    
                <form style="padding: 15px" method="POST" action="{{ route('logout') }}">
                  @csrf
      
                  <input class="btn btn-success" type="submit" value="Logout">
              </form>
                  
                @else
    
              <a href="{{ url('/login') }}">
                <i class="fa fa-user" aria-hidden="true"></i>
                <span>
                  Login
                </span>
              </a>
    
              <a href="{{ url('/register') }}">
                <i class="fa fa-vcard" aria-hidden="true"></i>
                <span>
                  Register
                </span>
              </a>
    
    
              @endauth
              
            @endif
    
    
              
              
            </div>
          </div>
        </nav>
      </header>
    <!-- end header section -->

  </div>
 

  <div class="div_deg">


  <table>

    <tr>
        <th>Product Title</th>

        <th>Price</th>

        <th>Image</th>

        <th>Remove</th>

    </tr>

    <?php

    $value=0;

    ?>

@foreach ($cart as $cart)
    
    <tr>

        <td>{{ $cart->product->title }}</td>
        <td>{{ $cart->product->price }}</td>
        <td>
            <img width="150" src="/products/{{ $cart->product->image }}" alt="">
        </td>

        <td>
            <a class="btn btn-danger" href="{{ url('delete_cart',$cart->id) }}">Remove</a>
        </td>

    </tr>


    <?php

    $value = $value + $cart->product->price;

    ?>


@endforeach




  </table>

</div>


<div class="cart_value">

    <h3>Total Value of Cart is : RP. {{ $value }}</h3>

</div>



<div class="order_deg" style="display: flex; justify-content:center; align-items: center;">


    <form action="{{ url('confirm_order') }}" method="Post">

        @csrf

        <div class="div_gap">
            <label for="">Receiver Name</label>

            <input type="text" name="name" value="{{ Auth::user()->name }}">
        </div>

        <div class="div_gap">
            <label for="">Receiver Address</label>

            <textarea name="address">{{ Auth::user()->address }}</textarea>
        </div>

        <div class="div_gap">
            <label for="">Receiver Phone</label>

            <input type="text" name="phone" value="{{ Auth::user()->phone }}">
        </div>

        <div class="div_gap">

            <input class="btn btn-primary" type="submit" value="Cash On Delivery">

            <a class="btn btn-success" href="{{ url('stripe',$value) }}">Pay Using Card</a>

        </div>
    </form>


</div>



   

  <!-- info section -->

  @include('home.footer')

</body>

</html>