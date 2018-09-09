{% extends "base/base.tpl" %}
{% load static %}

{% block title %}Контакты{% endblock %}

{% block content %}
		<section id="home" class="video-hero" style="height: 500px; background-image: url({% static 'blog/images/cover_img_1.jpg' %});  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t display-t2 text-center">
				<div class="display-tc display-tc2">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
							<div class="animate-box">
								<h2>Контакты</h2>
								<p class="breadcrumbs"><span><a href="../">Home</a></span><span>\</span><span>Контакты</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

    		<div id="colorlib-contact">
    			<div class="container">
    				<div class="row">
    					<div class="col-md-4 col-md-push-8 animate-box">
    						<h2>Contact Information</h2>
    						<div class="row">
    							<div class="col-md-12">
    								<div class="contact-info-wrap-flex">
    									<div class="con-info">
    										<p><span><i class="icon-location-2"></i></span> 198 West 21th Street, <br> Suite 721 New York NY 10016</p>
    									</div>
    									<div class="con-info">
    										<p><span><i class="icon-phone3"></i></span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
    									</div>
    									<div class="con-info">
    										<p><span><i class="icon-paperplane"></i></span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
    									</div>
    									<div class="con-info">
    										<p><span><i class="icon-globe"></i></span> <a href="#">yourwebsite.com</a></p>
    									</div>
    								</div>
    							</div>
    						</div>
    					</div>
    					<div class="col-md-8 col-md-pull-4 animate-box">
    						<h2>Get In Touch</h2>
    						<form action="#">
    							<div class="row form-group">
    								<div class="col-md-6">
    									<!-- <label for="fname">First Name</label> -->
    									<input type="text" id="fname" class="form-control" placeholder="Your firstname">
    								</div>
    								<div class="col-md-6">
    									<!-- <label for="lname">Last Name</label> -->
    									<input type="text" id="lname" class="form-control" placeholder="Your lastname">
    								</div>
    							</div>

    							<div class="row form-group">
    								<div class="col-md-12">
    									<!-- <label for="email">Email</label> -->
    									<input type="text" id="email" class="form-control" placeholder="Your email address">
    								</div>
    							</div>

    							<div class="row form-group">
    								<div class="col-md-12">
    									<!-- <label for="subject">Subject</label> -->
    									<input type="text" id="subject" class="form-control" placeholder="Your subject of this message">
    								</div>
    							</div>

    							<div class="row form-group">
    								<div class="col-md-12">
    									<!-- <label for="message">Message</label> -->
    									<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
    								</div>
    							</div>
    							<div class="form-group">
    								<input type="submit" value="Send Message" class="btn btn-primary">
    							</div>
    						</form>
    					</div>
    				</div>
    			</div>
    		</div>
{% endblock %}
