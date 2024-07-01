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
        
                  <li class="nav-item active">
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
        <!-- slider section -->
        <div class="elementor-widget-container">
            <h2 class="elementor-heading-title elementor-size-default" style="display: flex; justify-content: center; align-items: center; margin: 10px;">Panduan pengguna</h2>
        </div>

<br>

        <ol>
            <li>Lihat produk:<ul>
                    <li>Jelajahi produk dan temukan yang menarik minat Anda.</li>
                <br>
                  </ul>
            </li>
            <li>Periksa detail produk:<ul>
                    <li>Saat Anda memilih produk dari daftar produk, anda akan diarahkan ke halaman detail
                        produk.Lihat foto produk, deskripsi, harga, category, dan
                        ketersedian barang untuk memastikan barang yang akan anda beli.</li>
                <br>
                      </ul>
            </li>
            <li>Masukkan ke keranjang:<ul>
                    <li>Pada halaman detail produk, jika Anda ingin membeli produk,
                        pilih “<span style="text-decoration: underline;"><strong>Add to Cart</strong></span>" tombol. Produk yang
                        dipilih akan ditambahkan ke keranjang Anda.</li>
                <br>
                      </ul>
            </li>
            <li>Konfirmasi keranjang:<ul>
                    <li>ditampilkan di bagian atas situs web atau di sidebar. "<span
                            style="text-decoration: underline;"><strong>Troli</strong></span> ikon
                        ” untuk memeriksa isi keranjang Anda.Di sini Anda dapat
                        menghapus daftar produk yang ditambahkan atau langsung membeli.</li>
                <br>
                      </ul>
            </li>

            <li>Masukkan informasi pengiriman:<ul>
                <li>Silakan masukkan informasi yang diperlukan untuk melakukan
                    pemesanan (nama, alamat pengiriman, dan phone.).</li>
            <br>
                  </ul>
        </li>

            <li>Lanjutkan ke pembayaran:<ul>
                    <li>Periksa isi keranjang Anda dan pilih pembayaran melalui  tombol <span style="text-decoration: underline;"><strong>Cash On Delivery</strong></span> atau tombol <span style="text-decoration: underline;"><strong>Pay Using Card</strong></span>.</li>
                <br>
                              </ul>
            </li>
            
            <li>Konfirmasi pesanan:<ul>
                    <li>Harap konfirmasi ulang detail pesanan Anda, informasi alamat
                        pengiriman, metode pembayaran, dll., lalu klik tombol
                        yang sudah tersedia".</li>
                <br>
                      </ul>
            </li>
            <li>Menerima produk:<ul>
                    <li>Ketika produk tiba, harap periksa alamatnya sebelum
                        menerimanya.Jika terjadi masalah pada produk, harap segera
                        menghubungi kami [email:<a href="mailto:lb-store@lb-plannings.jp">ZDMShop@gmail.com</a>]
                        atau [TEL: 0812-3456-7890].</li>
                <br>
                      </ul>
            </li>

    </div>
    {{-- @include('home.footer') --}}

</body>

</html>
