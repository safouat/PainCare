<!DOCTYPE html>
<html class="centred">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/comps/header.jsp"%>

<%@include file="/WEB-INF/comps/navbar.jsp"%>
<head>
<style type="text/css">
art_desc {
	height: 30px;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="anim-icon">
		<div class="icon icon-1 rotate-me"
			style="background-image: url(assets/images/icons/anim-icon-1.png);"></div>
		<div class="icon icon-2 rotate-me"
			style="background-image: url(assets/images/icons/anim-icon-2.png);"></div>
		<div class="icon icon-3 rotate-me"
			style="background-image: url(assets/images/icons/anim-icon-3.png);"></div>
	</div>
	<div class="shape-layer"
		style="background-image: url(assets/images/shape/shape-1.png);"></div>
	<div class="centred container py-3 my-3">
		<div class=" faq-column ">
			<div class="col-lg-4 col-md-6 col-sm-12 news-block  container py-3">
				<div class="news-block-one wow fadeInUp animated animated"
					data-wow-delay="00ms" data-wow-duration="1500ms">
					<div class="inner-box">
						<figure class="image-box blog-image">
							<a href="article?num=1"> <img
								src="assets\images\articles\le-reve.72442.jpg" />
							</a>
						</figure>
						<div class="lower-content">

							<h3>
								<a href="article?num=1">Surgical treatment of endometriosis</a>
							</h3>
							<ul class="post-info clearfix centred">
								<li><img src="assets\images\logo-full.png" />Author</li>
								<li>12/12/2005</li>
							</ul>
							<p class="art_desc">Guidelines favor laparoscopic surgery for
								endometriosis due to its benefits. While laparotomy is equally
								effective, robotic surgery, despite comparable outcomes, is less
								mentioned. The choice depends on individual factors and surgeon
								expertise.</p>
							<div class="btn-box">
								<a href="article?num=1">Read more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="col-lg-4 col-md-6 col-sm-12 news-block  container py-3">
			<div class="news-block-one wow fadeInUp animated animated"
				data-wow-delay="00ms" data-wow-duration="1500ms">
				<div class="inner-box">
					<figure class="image-box blog-image">
						<a href="article?num=2"> <img
							src="assets\images\articles\le-reve.72442.jpg" />
						</a>
					</figure>
					<div class="lower-content">

						<h3>
							<a href="article?num=2">Why does endometriosis cause so much
								pain?</a>
						</h3>
						<ul class="post-info clearfix centred">
							<li><img src="assets\images\logo-full.png" />Dani Blum</li>
							<li>July 18, 2022</li>
						</ul>
						<p class="art_desc">Endometriosis manifests with symptoms like
							extreme pain, painful sex, and gastrointestinal disruptions. The
							condition occurs when tissue similar to the uterine lining grows
							outside the uterus, causing intense pain during periods and
							between them.</p>
						<div class="btn-box">
							<a href="article?num=2">Read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="col-lg-4 col-md-6 col-sm-12 news-block  container py-3">
		<div class="news-block-one wow fadeInUp animated animated"
			data-wow-delay="00ms" data-wow-duration="1500ms">
			<div class="inner-box">
				<figure class="image-box blog-image">
					<a href="article?num=3"> <img
						src="assets\images\articles\le-reve.72442.jpg" />
					</a>
				</figure>
				<div class="lower-content">

					<h3>
						<a href="article?num=3">They Call It a Womens Disease. She
							Wants to Redefine It.</a>
					</h3>
					<ul class="post-info clearfix centred">
						<li><img src="assets\images\logo-full.png" />Rachel E. Gross</li>
						<li>April 27, 2021</li>
					</ul>
					<p class="art_desc">Linda Griffith's M.I.T. Center for
						Gynepathology Research, distinct from typical women's disease
						labs, lacks overt feminine symbols. Located within the biological
						engineering building, it is identified by the letters CGR in red
						and black, representing a unique and focused research approach.</p>
					<div class="btn-box">
						<a href="article?num=3">Read more</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>


	<div class="col-lg-4 col-md-6 col-sm-12 news-block  container py-3">
		<div class="news-block-one wow fadeInUp animated animated"
			data-wow-delay="00ms" data-wow-duration="1500ms">
			<div class="inner-box">
				<figure class="image-box blog-image">
					<a href="article?num=4"> <img
						src="assets\images\articles\le-reve.72442.jpg" />
					</a>
				</figure>
				<div class="lower-content">

					<h3>
						<a href="article?num=4">Researchers optimistic about potential
							new treatment for endometriosis</a>
					</h3>
					<ul class="post-info clearfix centred">
						<li><img src="assets\images\logo-full.png" />Hannah Devlin</li>
						<li>Wed 8 Mar 2023</li>
					</ul>
					<p class="art_desc">Clinical trial in Edinburgh and London
						tests dichloroacetate for endometriosis, potentially the first
						non-hormonal, non-surgical treatment in 40 years. Promising early
						results for better pain management.</p>
					<div class="btn-box">
						<a href="article?num=4">Read more</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>







	</div>
	<%@include file="/WEB-INF/comps/footer.jsp"%>
</body>

</html>