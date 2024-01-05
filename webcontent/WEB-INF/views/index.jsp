<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/comps/header.jsp" %>

<%@include file="/WEB-INF/comps/navbar.jsp" %>

<!-- banner-section -->
<section class="banner-section">
    <div class="anim-icon">
        <div class="icon icon-1 rotate-me" style="background-image: url(assets/images/icons/anim-icon-1.png);"></div>
        <div class="icon icon-2 rotate-me" style="background-image: url(assets/images/icons/anim-icon-2.png);"></div>
        <div class="icon icon-3 rotate-me" style="background-image: url(assets/images/icons/anim-icon-3.png);"></div>
    </div>
    <div class="shape-layer" style="background-image: url(assets/images/shape/shape-1.png);"></div>
    <div class="banner-carousel owl-theme owl-carousel owl-dots-none">
        <div class="slide-item">
            <div class="auto-container">
                <div class="row align-items-center clearfix">
                    <div class="col-lg-6 col-md-6 col-sm-12 content-column">
                        <div class="content-box">
                            <h6>Stay Home</h6>
                            <h1>Stay At Home, Keep You & Your Family Safe.</h1>
                            <p>Amet consectetur adipisicing elit sed do eiusmod.</p>
                            <div class="btn-box">
                                <a href="index.html">How To protect</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 image-column">
                        <figure class="image-box"><img src="assets/images/resource/banner-img-1.png" alt=""></figure>
                    </div>
                </div> 
            </div>
        </div>
        <div class="slide-item">
            <div class="auto-container">
                <div class="row align-items-center clearfix">
                    <div class="col-lg-6 col-md-6 col-sm-12 content-column">
                        <div class="content-box">
                            <h6>Stay Home</h6>
                            <h1>Stay At Home, Keep You & Your Family Safe.</h1>
                            <p>Amet consectetur adipisicing elit sed do eiusmod.</p>
                            <div class="btn-box">
                                <a href="index.html">How To protect</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 image-column">
                        <figure class="image-box"><img src="assets/images/resource/banner-img-2.png" alt=""></figure>
                    </div>
                </div> 
            </div>
        </div>
    </div>
</section>
<!-- banner-section end -->


<!-- about-section -->
<section class="about-section bg-color-1" id="about">
    <div class="anim-icon">
        <div class="icon icon-1 rotate-me" style="background-image: url(assets/images/icons/anim-icon-4.png);"></div>
    </div>
    <div class="auto-container">
        <div class="sec-title centred">
            <h6>About Corona</h6>
            <h2>Coronavirus Disease (COVID-19) <br />Outbreak Situation</h2>
        </div>
        <div class="row clearfix">
            <div class="col-lg-6 col-md-12 col-sm-12 image-column">
                <figure class="image-box wow slideInLeft animated animated" data-wow-delay="00ms" data-wow-duration="1500ms"><img src="assets/images/resource/about-1.png" alt=""></figure>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 content-column">
                <div class="content-box">
                    <div class="tabs-box">
                        <div class="tab-btn-box centred">
                            <ul class="tab-btns tab-buttons clearfix">
                                <li class="tab-btn active-btn" data-tab="#tab-1">Overview</li>
                                <li class="tab-btn" data-tab="#tab-2">Treatment</li>
                            </ul>
                        </div>
                        <div class="tabs-content">
                            <div class="tab active-tab" id="tab-1">
                                <div class="text">
                                    <p>Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.</p>
                                    <p>Most people infected with the COVID-19 virus will experience mild to moderate respiratory illness and recover without requiring special treatment.  Older people, and those with underlying medical problems like cardiovascular disease, diabetes, chronic respiratory disease, and cancer are more likely to develop serious illness.</p>
                                    <ul class="list-item clearfix">
                                        <li>Avoid touching your face.</li>
                                        <li>Cover your mouth and nose when coughing.</li>
                                        <li>Stay home if you feel unwell.</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab" id="tab-2">
                                <div class="text">
                                    <p>Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.</p>
                                    <p>Most people infected with the COVID-19 virus will experience mild to moderate respiratory illness and recover without requiring special treatment.  Older people, and those with underlying medical problems like cardiovascular disease, diabetes, chronic respiratory disease, and cancer are more likely to develop serious illness.</p>
                                    <ul class="list-item clearfix">
                                        <li>Avoid touching your face.</li>
                                        <li>Cover your mouth and nose when coughing.</li>
                                        <li>Stay home if you feel unwell.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- about-section end -->


<!-- funfact-section -->
<section class="funfact-section">
    <div class="auto-container">
        <div class="inner-container">
            <div class="row clearfix">
                <div class="col-lg-4 col-md-6 col-sm-12 counter-block">
                    <div class="counter-block-one">
                        <div class="inner-box">
                            <figure class="icon-box"><img src="assets/images/icons/icon-1.png" alt=""></figure>
                            <div class="count-outer count-box">
                                <span class="count-text" data-speed="1500" data-stop="1531188">0</span>
                            </div>
                            <p>Active Cases</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 counter-block">
                    <div class="counter-block-one">
                        <div class="inner-box">
                            <figure class="icon-box"><img src="assets/images/icons/icon-2.png" alt=""></figure>
                            <div class="count-outer count-box">
                                <span class="count-text" data-speed="1500" data-stop="337276">0</span>
                            </div>
                            <p>Recovered Cases</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 counter-block">
                    <div class="counter-block-one">
                        <div class="inner-box">
                            <figure class="icon-box"><img src="assets/images/icons/icon-3.png" alt=""></figure>
                            <div class="count-outer count-box">
                                <span class="count-text" data-speed="1500" data-stop="89575">0</span>
                            </div>
                            <p>Total Deaths</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- funfact-section end -->


<!-- symptoms-section -->
<section class="symptoms-section" id="symptoms">
    <div class="auto-container">
        <div class="row clearfix">
            <div class="col-lg-6 col-md-12 col-sm-12 content-column">
                <div class="content-box">
                    <div class="sec-title">
                        <h6>Main Symptoms</h6>
                        <h2>What Are The Main Symptoms?</h2>
                    </div>
                    <div class="text">
                        <p>The COVID-19 virus affects different people in different ways.COVID-19 is a respiratory disease and most infected people will develop mild to moderate symptoms and recover without requiring special treatment.  People who have underlying medical conditions and those over 60 years old have a higher risk of developing severe disease and death.</p>
                    </div>
                    <div class="inner-box clearfix">
                        <div class="single-column">
                            <p>Common Symptoms Include:</p>
                            <ul class="list-item clearfix">
                                <li>Fever</li>
                                <li>Tiredness</li>
                                <li>Dry Cough</li>
                            </ul>
                        </div>
                        <div class="single-column">
                            <p>Other Symptoms Include:</p>
                            <ul class="list-item clearfix">
                                <li>Shortness of Breath</li>
                                <li>Aches and Pains</li>
                                <li>Sore Throat</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 image-column">
                <figure class="image-box wow slideInRight animated animated" data-wow-delay="00ms" data-wow-duration="1500ms"><img src="assets/images/resource/symptoms-1.png" alt=""></figure>
            </div>
        </div>
    </div>
</section>
<!-- symptoms-section end -->


<!-- protect-section -->
<section class="protect-section centred" id="prevention">
    <div class="shape-layer" style="background-image: url(assets/images/shape/shape-2.png);"></div>
    <div class="anim-icon">
        <div class="icon icon-1 rotate-me" style="background-image: url(assets/images/icons/anim-icon-1.png);"></div>
        <div class="icon icon-2 rotate-me" style="background-image: url(assets/images/icons/anim-icon-3.png);"></div>
    </div>
    <div class="auto-container">
        <div class="sec-title">
            <h6>How To Protect</h6>
            <h2>Take Steps To Protect <br />Yourself</h2>
        </div>
        <div class="row clearfix">
            <div class="col-lg-4 col-md-6 col-sm-12 single-column">
                <div class="single-item wow fadeInUp animated animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <figure class="image-box"><img src="assets/images/resource/protect-1.png" alt=""></figure>
                        <h3>Wear A Face Mask</h3>
                        <p>Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 single-column">
                <div class="single-item wow fadeInUp animated animated" data-wow-delay="300ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <figure class="image-box"><img src="assets/images/resource/protect-2.png" alt=""></figure>
                        <h3>Wash Your Hands</h3>
                        <p>Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 single-column">
                <div class="single-item wow fadeInUp animated animated" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <figure class="image-box"><img src="assets/images/resource/protect-3.png" alt=""></figure>
                        <h3>Avoid Close Contact</h3>
                        <p>Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="more-btn"><a href="index.html">How to Clean Hands?</a></div>
    </div>
</section>
<!-- protect-section end -->


<!-- faq-section -->
<section class="faq-section" id="faq">
    <div class="anim-icon">
        <div class="icon icon-1 rotate-me" style="background-image: url(assets/images/icons/anim-icon-1.png);"></div>
        <div class="icon icon-2 rotate-me" style="background-image: url(assets/images/icons/anim-icon-5.png);"></div>
        <div class="icon icon-3 rotate-me" style="background-image: url(assets/images/icons/anim-icon-3.png);"></div>
    </div>
    <div class="auto-container">
        <div class="row clearfix">
            <div class="col-lg-6 col-md-12 col-sm-12 content-column">
                <div class="content-box">
                    <div class="sec-title">
                        <h6>Freequently Asked Question</h6>
                        <h2>Common Question & Answer</h2>
                    </div>
                    <div class="text">
                        <p>WHO is continuously monitoring and responding to this outbreak. This Q&A will be updated as more is known about COVID-19, how it spreads and how it is affecting people worldwide. For more information, check back regularly on WHO’s coronavirus pages. <a href="index.html">https://www.who.int/emergencies/diseases- es/novel-coronavirus-2019</a></p>
                    </div>
                    <div class="btn-box"><a href="index.html" class="theme-btn">Have A Question?</a></div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 faq-column">
                <ul class="accordion-box">
                    <li class="accordion block active-block">
                        <div class="acc-btn active">
                            <h4><span>Q.</span>What is Novel Coronavirus?</h4>
                        </div>
                        <div class="acc-content current">
                            <div class="text">
                                <p>Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as MERS and SARS.</p>
                            </div>
                        </div>
                    </li>
                    <li class="accordion block">
                        <div class="acc-btn">
                            <h4><span>Q.</span>What are The Symptoms of COVID-19?</h4>
                        </div>
                        <div class="acc-content">
                            <div class="text">
                                <p>Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as MERS and SARS.</p>
                            </div>
                        </div>
                    </li>
                    <li class="accordion block">
                            <div class="acc-btn">
                            <h4><span>Q.</span>How does COVID-19 Spread?</h4>
                        </div>
                        <div class="acc-content">
                            <div class="text">
                                <p>Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as MERS and SARS.</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!-- faq-section end -->


<!-- map-section -->
<section class="map-section bg-color-1 centred">
    <div class="auto-container">
        <div class="sec-title">
            <h6>Died For Covid-19</h6>
            <h2>More Than 100k Died in <br />Covid-19</h2>
        </div>
        <figure class="map-inner"><img src="assets/images/shape/map.png" alt=""></figure>
    </div>
</section>
<!-- map-section end -->


<!-- team-section -->
<section class="team-section">
    <div class="anim-icon">
        <div class="icon icon-1 rotate-me" style="background-image: url(assets/images/icons/anim-icon-1.png);"></div>
        <div class="icon icon-2 rotate-me" style="background-image: url(assets/images/icons/anim-icon-3.png);"></div>
        <div class="icon icon-3 rotate-me" style="background-image: url(assets/images/icons/anim-icon-5.png);"></div>
    </div>
    <div class="auto-container">
        <div class="title-inner clearfix">
            <div class="sec-title pull-left">
                <h6>Our Team</h6>
                <h2>Meet Our Experts</h2>
            </div>
            <div class="text pull-left">
                <p>WHO is continuously monitoring and responding to this outbreak. This Q&A will be updated as more is known about COVID-19, how it spreads and how it is affecting people worldwide. For more information, check back regularly on WHO’s coronavirus pages.</p>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-lg-4 col-md-6 col-sm-12 team-block">
                <div class="team-block-one wow fadeInUp animated animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <figure class="image-box">
                            <img src="assets/images/team/team-1.png" alt="">
                            <ul class="social-links clearfix">
                                <li><a href="index.html"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-vimeo-v"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-linkedin-in"></i></a></li>
                            </ul>
                        </figure>
                        <div class="lower-content">
                            <h3><a href="index.html">Dr. Dorothy Nickell</a></h3>
                            <span class="designation">Corona Specialist</span>
                            <p>Coronavirus disease (COVID-19) is an infectious disease caused</p>
                            <div class="phone"><a href="tel:8801234567890"><i class="fas fa-phone"></i>+880 1234 567 890</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 team-block">
                <div class="team-block-one wow fadeInUp animated animated" data-wow-delay="300ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <figure class="image-box">
                            <img src="assets/images/team/team-2.png" alt="">
                            <ul class="social-links clearfix">
                                <li><a href="index.html"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-vimeo-v"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-linkedin-in"></i></a></li>
                            </ul>
                        </figure>
                        <div class="lower-content">
                            <h3><a href="index.html">Dr. Peter Thomas</a></h3>
                            <span class="designation">Corona Specialist</span>
                            <p>Coronavirus disease (COVID-19) is an infectious disease caused</p>
                            <div class="phone"><a href="tel:8801234567890"><i class="fas fa-phone"></i>+880 1234 567 890</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 team-block">
                <div class="team-block-one wow fadeInUp animated animated" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <figure class="image-box">
                            <img src="assets/images/team/team-3.png" alt="">
                            <ul class="social-links clearfix">
                                <li><a href="index.html"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-vimeo-v"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-linkedin-in"></i></a></li>
                            </ul>
                        </figure>
                        <div class="lower-content">
                            <h3><a href="index.html">Dr. Elizabeth Nelson</a></h3>
                            <span class="designation">Corona Specialist</span>
                            <p>Coronavirus disease (COVID-19) is an infectious disease caused</p>
                            <div class="phone"><a href="tel:8801234567890"><i class="fas fa-phone"></i>+880 1234 567 890</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- team-section end -->


<!-- handwash-section -->
<section class="handwash-section centred">
    <div class="bubble-icon">
        <div class="icon icon-1" style="background-image: url(assets/images/icons/bubble-icon-1.png);"></div>
        <div class="icon icon-2" style="background-image: url(assets/images/icons/bubble-icon-2.png);"></div>
        <div class="icon icon-3" style="background-image: url(assets/images/icons/bubble-icon-1.png);"></div>
        <div class="icon icon-4" style="background-image: url(assets/images/icons/bubble-icon-1.png);"></div>
        <div class="icon icon-5" style="background-image: url(assets/images/icons/bubble-icon-2.png);"></div>
    </div>
    <div class="auto-container">
        <div class="sec-title">
            <h6>Wash Your Hands</h6>
            <h2>How to Wash Your Hand <br />Properly</h2>
        </div>
        <div class="inner-content clearfix">
            <div class="single-item">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="assets/images/resource/hadnwash-1.png" alt="">
                        <span class="count">1</span>
                    </figure>
                    <h6>Apply Soap on Hand</h6>
                </div>
            </div>
            <div class="single-item">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="assets/images/resource/hadnwash-2.png" alt="">
                        <span class="count">2</span>
                    </figure>
                    <h6>Palm to Palm</h6>
                </div>
            </div>
            <div class="single-item">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="assets/images/resource/hadnwash-3.png" alt="">
                        <span class="count">3</span>
                    </figure>
                    <h6>Between Fingers</h6>
                </div>
            </div>
            <div class="single-item">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="assets/images/resource/hadnwash-4.png" alt="">
                        <span class="count">4</span>
                    </figure>
                    <h6>Back of The Hands</h6>
                </div>
            </div>
            <div class="single-item">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="assets/images/resource/hadnwash-5.png" alt="">
                        <span class="count">5</span>
                    </figure>
                    <h6>Clean with Water</h6>
                </div>
            </div>
            <div class="single-item">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="assets/images/resource/hadnwash-6.png" alt="">
                        <span class="count">6</span>
                    </figure>
                    <h6>Use Towel to Dry</h6>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- handwash-section end -->


<!-- news-section -->
<section class="news-section">
    <div class="anim-icon">
        <div class="icon icon-1 rotate-me" style="background-image: url(assets/images/icons/anim-icon-1.png);"></div>
        <div class="icon icon-2 rotate-me" style="background-image: url(assets/images/icons/anim-icon-3.png);"></div>
        <div class="icon icon-3 rotate-me" style="background-image: url(assets/images/icons/anim-icon-5.png);"></div>
    </div>
    <div class="auto-container">
        <div class="sec-title centred">
            <h6>Our Article</h6>
            <h2>Stay Updated with Our <br />News Feed.</h2>
        </div>
        <div class="row clearfix">
            <div class="col-lg-4 col-md-6 col-sm-12 news-block">
                <div class="news-block-one wow fadeInUp animated animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <figure class="image-box"><a href="blog-details.html"><img src="assets/images/news/news-1.png" alt=""></a></figure>
                        <div class="lower-content">
                            <span class="feature">Featured</span>
                            <h3><a href="blog-details.html">Economic Policies for The COVID-19 War</a></h3>
                            <ul class="post-info clearfix">
                                <li><img src="assets/images/news/author-1.png" alt="">Lynda Stone</li>
                                <li>April 20, 2020</li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing sed.</p>
                            <div class="btn-box"><a href="blog-details.html">See Details</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 news-block">
                <div class="news-block-one wow fadeInUp animated animated" data-wow-delay="400ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <figure class="image-box"><a href="blog-details.html"><img src="assets/images/news/news-2.png" alt=""></a></figure>
                        <div class="lower-content">
                            <span class="feature">Featured</span>
                            <h3><a href="blog-details.html">Some Countries Provide Clear and Helpful...</a></h3>
                            <ul class="post-info clearfix">
                                <li><img src="assets/images/news/author-2.png" alt="">David Marks</li>
                                <li>April 19, 2020</li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing sed.</p>
                            <div class="btn-box"><a href="blog-details.html">See Details</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 news-block">
                <div class="news-block-one wow fadeInUp animated animated" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <figure class="image-box"><a href="blog-details.html"><img src="assets/images/news/news-3.png" alt=""></a></figure>
                        <div class="lower-content">
                            <span class="feature">Featured</span>
                            <h3><a href="blog-details.html">Maintaining Banking System Safly</a></h3>
                            <ul class="post-info clearfix">
                                <li><img src="assets/images/news/author-3.png" alt="">Sara Casey</li>
                                <li>April 18, 2020</li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing sed.</p>
                            <div class="btn-box"><a href="blog-details.html">See Details</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- news-section end -->


<!-- cta-section -->
<section class="cta-section">
    <div class="auto-container">
        <div class="inner-container">
            <div class="row clearfix">
                <div class="col-xl-6 col-lg-12 col-md-12 text-column">
                    <div class="text">
                        <h3>Want To Book A Doctor or Test COVID-19?</h3>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-12 col-md-12 btn-column">
                    <div class="btn-box clearfix">
                        <a href="index.html" class="btn-2">Test Covid-19</a>
                        <a href="index.html" class="theme-btn">Book A Doctor</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- cta-section end -->


<!-- main-footer -->
<footer class="main-footer">
    <div class="shape-layer" style="background-image: url(assets/images/shape/shape-3.png);"></div>
    <div class="anim-icon">
        <div class="icon icon-1 rotate-me" style="background-image: url(assets/images/icons/anim-icon-4.png);"></div>
        <div class="icon icon-2 rotate-me" style="background-image: url(assets/images/icons/anim-icon-3.png);"></div>
        <div class="icon icon-3 rotate-me" style="background-image: url(assets/images/icons/anim-icon-6.png);"></div>
    </div>
    <div class="footer-top">
        <div class="auto-container">
            <div class="widget-section">
                <div class="row clearfix">
                    <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                        <div class="logo-widget footer-widget">
                            <figure class="footer-logo"><a href="index.html"><img src="assets/images/footer-logo.png" alt=""></a></figure>
                            <div class="text">
                                <p>The best way to prevent and slow down transmission is be well informed about the COVID-19 virus, the disease it causes and how it spreads.</p>
                                <p>Protect yourself and others from infec- tion by washing your hands or using an</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                        <div class="links-widget service footer-widget">
                            <div class="widget-title">
                                <h3>Services</h3>
                            </div>
                            <div class="widget-content">
                                <ul class="list clearfix">
                                    <li><a href="index.html">About Us</a></li>
                                    <li><a href="index.html">Symptoms</a></li>
                                    <li><a href="index.html">Prevention</a></li>
                                    <li><a href="index.html">Our Doctors</a></li>
                                    <li><a href="index.html">Our Blog</a></li>
                                    <li><a href="index.html">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                        <div class="links-widget region footer-widget">
                            <div class="widget-title">
                                <h3>Regions</h3>
                            </div>
                            <div class="widget-content">
                                <ul class="list clearfix">
                                    <li><a href="index.html">America</a></li>
                                    <li><a href="index.html">Africa</a></li>
                                    <li><a href="index.html">South East Asia</a></li>
                                    <li><a href="index.html">Europe</a></li>
                                    <li><a href="index.html">Australia</a></li>
                                    <li><a href="index.html">Westenr Pacific</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                        <div class="contact-widget footer-widget">
                            <div class="widget-title">
                                <h3>Contacts</h3>
                            </div>
                            <ul class="info-list clearfix">
                                <li><i class="fas fa-map-marker-alt"></i>Flat 20, Reynolds Neck, North Helenaville, FV77 8WS</li>
                                <li><i class="fas fa-microphone"></i><a href="tel:23055873407">+2(305) 587-3407</a></li>
                                <li><i class="fas fa-envelope"></i><a href="mailto:info@example.com">info@example.com</a></li>
                            </ul>
                            <ul class="social-links clearfix">
                                <li><a href="index.html"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-vimeo-v"></i></a></li>
                                <li><a href="index.html"><i class="fab fa-linkedin-in"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="auto-container">
            <div class="bottom-inner clearfix">
                <div class="copyright pull-left">
                    <p><a href="index.html">Covid-19</a> &copy; 2020 All Right Reserved</p>
                </div>
                <ul class="footer-nav pull-right">
                    <li><a href="index.html">Terms of Service</a></li>
                    <li><a href="index.html">Privacy Policy</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- main-footer end -->



<%@include file="/WEB-INF/comps/footer.jsp" %>