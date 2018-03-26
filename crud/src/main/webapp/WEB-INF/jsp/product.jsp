<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Big shope A Ecommerce Category Flat Bootstarp Resposive Website Template | Product :: w3layouts</title>
<link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--theme-style-->
<link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script src="/resources/js/jquery.min.js"></script>


<!--script-->
</head>
<body> 
	<!--header-->
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="top-header-left">
					<ul class="support">
						<li><a href="#"><label> </label></a></li>
						<li><a href="#">24x7 live<span class="live"> support</span></a></li>
					</ul>
					<ul class="support">
						<li class="van"><a href="#"><label> </label></a></li>
						<li><a href="#">Free shipping <span class="live">on order over 500</span></a></li>
					</ul>
					<div class="clearfix"> </div>
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>/
		<div class="bottom-header">
			<div class="container">
				<div class="header-bottom-left">
					<div class="logo">
						<a href="/"><img src="/resources/images/logo.png" alt=" " /></a>
					</div>
					<form action="" method="post">
						<div class="search">
							<input type="text" name="searchInput" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
							<input type="submit"  value="SEARCH">

						</div>
					</form>
					<div class="clearfix"> </div>
				</div>
				<div class="header-bottom-right">
					<div class="account"><a href="/login"><span> </span>YOUR ACCOUNT</a></div>
					<ul class="login">
						<li><a href="/login"><span> </span>LOGIN</a></li> |
						<li ><a href="/register">SIGNUP</a></li>
					</ul>

					<div class="cart"><a href="/viewCart" ><span> </span>CART</a></div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!---->
	<!-- start content -->
	<div class="container">

	<div class="women-product">
		<div class=" w_content">
			<div class="women">
				<a href="#"><h4> <span></span> </h4></a>
				<ul class="w_nav">
					<li> </li>
			     	<li><a class="active" href="#"></a></li>
			     	<li><a href="#"> </a></li>
			     	<li><a href="#"></a></li>
			     	<li><a href="#"> </a></li>
			     <div class="clearfix"> </div>
			     </ul>

			</div>
		</div>
		<!-- grids_of_4 -->
		</div>
		<div class="row">
			<div class="col-md-3 table-responsive" style="margin-top: 80px;" >


				<h3 class="cate">CATEGORIES</h3>
				<ul class="menu">

					<c:forEach items="${categoryEntityList}" var="category">
						<a href="/viewById?id=${category.id}" style="text-decoration: none; size: 30px;"> <center><li onclick="" style="height: 40px;">${category.nameCategory}</center>
							</li></a>

					</c:forEach>
				</ul>

				<!--initiate accordion-->
				<script type="text/javascript">
                    $(function() {
                        var menu_ul = $('.menu > li > ul'),
                            menu_a  = $('.menu > li > a');
                        menu_ul.hide();
                        menu_a.click(function(e) {
                            e.preventDefault();
                            if(!$(this).hasClass('active')) {
                                menu_a.removeClass('active');
                                menu_ul.filter(':visible').slideUp('normal');
                                $(this).addClass('active').next().stop(true,true).slideDown('normal');
                            } else {
                                $(this).removeClass('active');
                                $(this).next().stop(true,true).slideUp('normal');
                            }
                        });

                    });
				</script>
				<div class="product-left">

					<div class="clearfix"> </div>
				</div>
				<a class="view-all all-product" href="/product">VIEW ALL PRODUCTS<span> </span></a>
			</div>
			<div class="col-md-8">
				<c:if test="${empty bookEntityList}">
					<div class="product-left">

						<c:forEach items="${book}" var="books">
							<div class="col-md-4 ">
								<a href="/single?id=${books.id}"><img class="img-responsive chain" src="/resources/images/${books.img}" alt=" " /></a>
								<span class="star"> </span>
								<div class="">
									<h5><a href="/single?id=${books.id}" style="text-decoration: none;">${books.name}</a></h5>
									<div class="star-price">
										<div class="">
											<span class="actual">${books.price}$</span>
											<span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
										</div>
										<a class="now-get get-cart"  href="addToCart?id=${books.id}">ADD TO CART</a>
										<div class="clearfix"> </div>
									</div>
								</div>
							</div>

						</c:forEach>


					</div>
				</c:if>
				<c:if test="${not empty bookEntityList}">
					<div class="product-left">
						<c:forEach items="${bookEntityList}" var="book">
							<div class="col-md-4">
								<a href="single.jsp"><img class="img-responsive chain" src="/resources/images/${book.img}"  alt=" " /></a>
								<span class="star"> </span>
								<div class="">
									<h5><a href="/single?id=${books.id}" style="text-decoration: none;">${book.name}</a></h5>
									<div class="star-price">
										<div class="">
											<span class="actual">${book.price}$</span>
											<span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
										</div>
										<a class="now-get get-cart"  href="addToCart?id=${books.id}">ADD TO CART</a>
										<div class="clearfix"> </div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</div>

	<!---->
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="latter">
					<h6>NEWS-LETTER</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter email here"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter email here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="latter-right">
					<p>FOLLOW US</p>
					<ul class="face-in-to">
						<li><a href="#"><span> </span></a></li>
						<li><a href="#"><span class="facebook-in"> </span></a></li>
						<div class="clearfix"> </div>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="footer-bottom-cate">
					<h6>CATEGORIES</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li ><a href="#">Dignissim neque</a></li>
						<li ><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						<li ><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li ><a href="#">Eget nisi laoreet</a></li>
						<li ><a href="#">Faciisis ornare</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate bottom-grid-cat">
					<h6>FEATURE PROJECTS</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li ><a href="#">Dignissim neque</a></li>
						<li ><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate">
					<h6>TOP BRANDS</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li ><a href="#">Dignissim neque</a></li>
						<li ><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						<li ><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li ><a href="#">Eget nisi laoreet</a></li>
						<li ><a href="#">Faciisis ornare</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate cate-bottom">
					<h6>OUR ADDERSS</h6>
					<ul>
						<li>Aliquam metus  dui. </li>
						<li>orci, ornareidquet</li>
						<li> ut,DUI.</li>
						<li >nisi, dignissim</li>
						<li >gravida at.</li>
						<li class="phone">PH : 6985792466</li>
						<li class="temp"> <p class="footer-class">Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</body>
</html>