{% extends "base/base.tpl" %}
{% load static %}

{% block title %}Обо мне{% endblock %}

{% block content %}
		<section id="home" class="video-hero" style="height: 500px; background-image: url({% static 'blog/images/cover_img_1.jpg' %});  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t display-t2 text-center">
				<div class="display-tc display-tc2">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
							<div class="animate-box">
								<h2>Обо мне</h2>
								<p class="breadcrumbs"><span><a href="../">Home</a></span><span>\</span><span>Обо мне</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

    		<div class="colorlib-about">
    			<div class="container">
    				<div class="row row-pb-lg">
    					<div class="col-md-6 animate-box">
    						<div class="video colorlib-video" style="background-image: url({% static 'blog/images/about.jpg' %});">
    							<div class="overlay"></div>
    						</div>
    					</div>
    					<div class="col-md-6 animate-box">
    						<h2>About unapp</h2>
    						<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
    						<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
    					</div>
    				</div>
    				<div class="row">
    					<div class="col-md-8 col-md-offset-2 text-center colorlib-heading animate-box">
    						<h2>Collaborate with your design team in a new way</h2>
    						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
    					</div>
    				</div>
    				</div>
    			</div>

{% endblock %}
