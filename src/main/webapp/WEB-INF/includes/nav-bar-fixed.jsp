<!--===    NAVBAR     ===-->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbarSettings">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index">Story<span class="text-primary">Relayer</span></a>
    </div>

    <div class="collapse navbar-collapse" id="bs-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right ">



        <!--Get Started-->
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0">
            <i class="fa fa-hand-o-right"></i>&nbsp; Get Involved
          </a>
          <ul class="dropdown-menu">
            <li>
              <%--<a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-sign-in"></i>&nbsp;Login</a>--%>
              <a href="login"><i class="fa fa-sign-in"></i>&nbsp;Login</a>
            </li>
            <li>
              <a href="registration"><i class="fa fa-user"></i>&nbsp;Registration</a>
            </li>

          </ul>
        </li>


        <!-- Sidebar -->
        <div class="dropdown hidden-xs">
          <a href="javascript:void(0);" id="sidebar-btn">
            <i class="fa fa-bars"></i>
          </a>
        </div>

      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
</nav>
<!-- If navbar is fixed to top and it has the class navbar-default or navbar-inverse this div will add space below the navbar-->
<div id="navbarSpaceBottom"></div>
<!--===/END    Navbar     ===-->
