<!DOCTYPE html>
<html>

<head>

    @include('home.css')

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
            <li class="nav-item active">
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
  <!-- end hero area -->

  <!-- shop section -->

 @include('home.product')

  <!-- end shop section -->






</body>

</html>