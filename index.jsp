<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GrandMart</title>
<%@include file="Components/Common_CSS_JS.jsp"%>

<style>
.checked {
	color: #fdd835;
}
</style>
</head>
<body>
	<%@include file="Components/navbar.jsp"%>
	<%@include file="Components/common_modal.jsp"%>

	<div class="home"
		style="background: url(img/image2.jpg) no-repeat; padding-top: 17rem; padding-bottom: 10rem; background-size: cover;">
		<div class="content">
			<h1 class="text-center"
				style="padding-bottom: 1rem; font-size: 65px;">
				Fresh and <span class="text-bg">Organic</span> products for you
			</h1>
			<div class="text-center">
				<a href="home.jsp"><button class="btn text-white mt-3"
						style="background: #00897b; font-size: 25px; border-radius: 25px; border: 1px solid black;">Shop
						now</button></a>
			</div>
		</div>
	</div>

	<div class="container text-center mt-5" style="padding-bottom: 1rem;">
		<h1 style="font-size: 55px;">
			Our <span class="text-bg">Features<span></span>
		</h1>
	</div>

	<div class="container">

		<div class="row mt-3">

			<!-- First column-->
			<div class="col-md-4">

				<div class="card border-success">
					<div class="card-body text-center">
						<img style="max-width: 150px;"
							class="img-fluid rounded-circle mt-1" src="img/download.jpg">

						<h2 style="padding-bottom: 1rem">
							<span class="text-bg">Fresh and Organic</span>
						</h2>
						<p class="text-muted">Shop with us for the freshest,most
							sustainably grown organic food</p>
						<button class="btn text-white"
							style="background: #00897b; font-size: 20px; border-radius: 20px; border: 1px solid black;">Read
							More</button>
					</div>
				</div>

			</div>

			<!-- second column -->
			<div class="col-md-4">

				<div class="card border-success">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid mt-3"
							src="img/free-shipping.png">

						<h2 style="padding-bottom: 1rem">
							<span class="text-bg">Free Delivery</span>
						</h2>
						<p class="text-muted">Online shopping with great selection at
							free delivery</p>
						<button class="btn text-white"
							style="background: #00897b; font-size: 20px; border-radius: 20px; border: 1px solid black;">Read
							More</button>
					</div>
				</div>

			</div>

			<!-- third column -->
			<div class="col-md-4">

				<div class="card border-success">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid mt-3"
							src="img/shopping.png">
						<h2 style="padding-bottom: 1rem">
							<span class="text-bg">Easy payment</span>
						</h2>
						<p>The most convenient and trusted way to shop</p>
						<button class="btn text-white"
							style="background: #00897b; font-size: 20px; border-radius: 20px; border: 1px solid black;">Read
							More</button>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="container text-center mt-5" style="padding-bottom: 1rem;">
		<h1 style="font-size: 55px;">
			Customer's <span class="text-bg"> Review <span></span>
		</h1>
	</div>

	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<div class="container mb-4">

		<div class="row mt-3">

			
			<!-- first column -->
			<div class="col-md-4">

				<div class="card border-success">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid rounded-circle mt-3 mb-2"
							src="img/client-1.jpg">
						<p class="text-muted">Pellentesque habitant morbi tristique
							senectus et netus et malesuada fames ac turpis egestas.</p>
						<h3>
							<span class="text-bg">James McAvoy</span>
						</h3>
						<span class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star "></span>


					</div>
				</div>

			</div>

			<!-- third column -->
			<div class="col-md-4">

				<div class="card border-success">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid rounded-circle mt-3 mb-2"
							src="img/client-2.jpg">
						<p>Pellentesque habitant morbi tristique senectus et netus et
							malesuada fames ac turpis egestas.</p>
						<h3>
							<span class="text-bg">Edward McAvoy</span>
						</h3>
						<span class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star "></span>


					</div>
				</div>

			</div>

			<!-- Fourth column -->
			<div class="col-md-4">

				<div class="card border-success">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid rounded-circle mt-3 mb-2"
							src="img/client-3.jpg">
						<p>Pellentesque habitant morbi tristique senectus et netus et
							malesuada fames ac turpis egestas.</p>
						<h3>
							<span class="text-bg">Ava Alex</span>
						</h3>
						<span class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span>

					</div>
				</div>

			</div>
		</div>
	</div>
	
	 <!--==Partner-logo================================-->
	 <div class="container">
    <section id="partner">
        <!--heading------------>
        <div class="partner-heading">
            <h1 class="text-center" style="font-size: 55px;">Our <span class="text-bg">Trusted</span>  Partner</h1>
        </div>
        <!--logo-container----->
        <div class="logo-container">
            <img src="img/logo-1.png" alt="logo">
            <img src="img/logo-2.png" alt="logo">
            <img src="img/logo-3.png" alt="logo">
            <img src="img/logo-4.png" alt="logo">
        </div>
    </section>
    </div>
    <!--logo-section-end--------------------->
	
<%@include file="Components/footer.jsp"%>

</body>
</html>