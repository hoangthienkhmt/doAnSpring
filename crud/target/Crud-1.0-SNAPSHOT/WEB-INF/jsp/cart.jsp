<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Thien Hoang
  Date: 03/13/18
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #myform {
            text-align: center;
            padding: 5px;
            margin: 2%;
        }
        .qty {
            width: 40px;
            height: 25px;
            text-align: center;
        }
        input.qtyplus { width:25px; height:25px;}
        input.qtyminus { width:25px; height:25px;}
    </style>

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
    <script>
        jQuery(document).ready(function($){

            $('#etalage').etalage({
                thumb_image_width: 300,
                thumb_image_height: 400,
                source_image_width: 900,
                source_image_height: 1200,
                show_hint: true,
                click_callback: function(image_anchor, instance_id){
                    alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
                }
            });

        });
    </script>
</head>
<body>
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
    </div>
    <div class="bottom-header">
        <div class="container">
            <div class="header-bottom-left">
                <div class="logo">
                    <a href="/"><img src="/resources/images/logo.png" alt=" " /></a>
                </div>
                <div class="search">
                    <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
                    <input type="submit"  value="SEARCH">

                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="header-bottom-right">
                <div class="account"><a href="/login"><span> </span>YOUR ACCOUNT</a></div>
                <ul class="login">
                    <li><a href="/login"><span> </span>LOGIN</a></li> |
                    <li ><a href="/register">SIGNUP</a></li>
                </ul>
                <div class="cart"><a href="/viewCart"><span> </span>CART</a></div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="panel panel-info">

                    <div class="panel-body">
                        <c:forEach items="${carts}" var="cart">
                            <div class="row">
                                <div class="col-xs-2"><img class="img-responsive" src="/resources/images/${cart.bookEntity.img}" >
                                </div>
                                <div class="col-xs-3">
                                    <h4 class="product-name"><strong>${cart.bookEntity.name}</strong></h4><h4><small>${cart.bookEntity.description}</small></h4>
                                </div>
                                <form id='myform' method='POST' action='#'>
                                <div class="col-xs-3">
                                    <div class="col-xs-6 text-right">
                                        <h6><strong id="price">${cart.bookEntity.price} <span class="text-muted">x</span></strong></h6>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="row"><input type='button' value='-' class='qtyminus' field='quantity' />
                                            <input type="text" class="qty" value="${cart.quantity}"  name='quantity'>

                                            <input type='button' value='+' class='qtyplus' field='quantity' /></div>
                                    </div>

                                </div>
                                <div class="col-xs-2">
                                    <input type="text"   class="form-control input-sm" disabled="disabled" value="${cart.totalPrice}">

                                </div></form>
                                <div class="col-xs-2">
                                    <button type="button" class="btn btn-link btn-xs">
                                        <span class="glyphicon glyphicon-trash"> </span>
                                    </button>
                                </div>
                            </div>
                            <hr>
                        </c:forEach>
                        <div class="row">
                            <div class="text-center">
                                <div class="col-xs-9">
                                    <h6 class="text-right">Added items?</h6>
                                </div>
                                <div class="col-xs-3">
                                    <a  class="btn btn-default btn-sm btn-block" href="/" >
                                        Continue shopping
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <div class="row text-center">
                            <div class="col-xs-9">
                                <h4 class="text-right">Total <strong>${totalprice}</strong></h4>
                            </div>
                            <div class="col-xs-3">
                                <c:if test="${ not empty carts}">
                                <a class="btn btn-success btn-block" href="/checkout">
                                    Checkout
                                </a>
                                </c:if>
                                <c:if test="${  empty carts}">
                                    <a class="btn btn-danger btn-block" href="/">
                                        cancel
                                    </a>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous">
</script>

<script>
    jQuery(document).ready(function(){
        // get the base price as an Int value
        base_price = parseInt($('#price').text());
        // This button will increment the value
        $('.qtyplus').click(function(e){
            // Stop acting like a button
            e.preventDefault();
            // Get the field name
            fieldName = $(this).attr('field');
            // Get its current value
            var currentVal = parseInt($('input[name='+fieldName+']').val());
            // If is not undefined
            if (!isNaN(currentVal)) {
                // Increment
                $('input[name='+fieldName+']').val(currentVal + 1);
                $('#total').text((currentVal + 1) * base_price);
            } else {
                // Otherwise put a 0 there
                $('input[name='+fieldName+']').val(0);
                $('#total').text(0);
            }
        });
        // This button will decrement the value till 0
        $(".qtyminus").click(function(e) {
            // Stop acting like a button
            e.preventDefault();
            // Get the field name
            fieldName = $(this).attr('field');
            // Get its current value
            var currentVal = parseInt($('input[name='+fieldName+']').val());
            // If it isn't undefined or its greater than 0
            if (!isNaN(currentVal) && currentVal > 0) {
                // Decrement one
                $('input[name='+fieldName+']').val(currentVal - 1);
                $('#total').text((currentVal - 1) * base_price);
            } else {
                // Otherwise put a 0 there
                $('input[name='+fieldName+']').val(0);
                $('#total').text(0);
            }
        });
    });
</script>
</body>
</html>
