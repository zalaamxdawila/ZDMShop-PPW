<!DOCTYPE html>
<html>
  <head> 
    @include('admin.css')


    <style>
        .div_deg
        {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 60px;
        }

        input[type='text']
        {
            width: 400px;
            height: 50px;
        }
    </style>


  </head>
  <body>

   @include('admin.header')

    @include('admin.sidebar')
      <!-- Sidebar Navigation end-->
      <div class="page-content">
        <div class="page-header">
          <div class="container-fluid">

            <h1 style="color: white;">Update Category</h1>

            <div class="div_deg">

                


                <form action="{{ url('update_category',$data->id) }}" method="post">

                    @csrf

                    <input type="text" name="category" value="{{ $data->category_name }}">

                    <input class="btn btn-primary" type="submit" value="Update Category">
                </form>

            </div>

            
          </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="{{ asset('/admincssvendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('/admincssvendor/popper.js/umd/popper.min.js') }}"> </script>
    <script src="{{ asset('/admincssvendor/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('/admincssvendor/jquery.cookie/jquery.cookie.js') }}"> </script>
    <script src="{{ asset('/admincssvendor/chart.js/Chart.min.js') }}"></script>
    <script src="{{ asset('/admincssvendor/jquery-validation/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('/admincssjs/charts-home.js') }}"></script>
    <script src="{{ asset('/admincssjs/front.js') }}"></script>
  </body>
</html>