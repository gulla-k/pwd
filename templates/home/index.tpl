{% extends "base/base.tpl" %}
{% load static %}

{% block title %}Главная{% endblock %}

{% block content %}
		<section id="home" class="video-hero" style="height: 700px; background-image: url({% static 'blog/images/home_img.jpg' %});  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t text-center">
				<div class="display-tc">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
							<div class="animate-box">
								<h2>Создаём для вас с любовью</h2>
								<p>использую Django, Bootstrap</p>
								<p><a href="../project" class="btn btn-primary btn-lg btn-custom">Проекты</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>		
		<div class="colorlib-featured">
			<div class="row animate-box">
				<div class="featured-wrap">
					<div class="owl-carousel">
						<div class="item">
							<div class="col-md-8 col-md-offset-2">
								<div class="featured-entry">
									<img class="img-responsive" src="{% static 'blog/images/dashboard_full_1.jpg' %}" alt="">
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-8 col-md-offset-2">
								<div class="featured-entry">
									<img class="img-responsive" src="{% static 'blog/images/dashboard_full_2.jpg' %}" alt="">
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-8 col-md-offset-2">
								<div class="featured-entry">
									<img class="img-responsive" src="{% static 'blog/images/dashboard_full_3.png' %}" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="colorlib-services colorlib-bg-white">
			<div class="container">
				<div class="row">
					<div class="col-md-4 text-center animate-box">
						<div class="services">
							<span class="icon">
								<i class="icon-browser"></i>
							</span>
							<div class="desc">
								<h3>Create your own template</h3>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 text-center animate-box">
						<div class="services">
							<span class="icon">
								<i class="icon-download"></i>
							</span>
							<div class="desc">
								<h3>Automatic Backup Data</h3>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 text-center animate-box">
						<div class="services">
							<span class="icon">
								<i class="icon-layers"></i>
							</span>
							<div class="desc">
								<h3>Page Builder</h3>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

{% endblock %}