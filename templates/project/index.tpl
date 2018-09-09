{% extends "base/base.tpl" %}
{% load static %}

{% block title %}Проекты{% endblock %}

{% block content %}
		<section id="home" class="video-hero" style="height: 500px; background-image: url({% static 'blog/images/cover_img_1.jpg' %});  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t display-t2 text-center">
				<div class="display-tc display-tc2">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
							<div class="animate-box">
								<h2>Проекты</h2>
								<p class="breadcrumbs"><span><a href="../">Home</a></span><span>\</span><span>Проекты</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

    <div class="colorlib-work">
			<div class="container">
				<div class="row">
			    {% for post in posts %}
					<div class="col-md-4 animate-box">
						<div class="work-grid">
							<a href="../media/{{ post.img }}" class="work-img" style="background-image: url(../media/{{ post.img }})">
								<span class="icon"><i class="icon-plus2"></i></span>
							</a>
						</div>
					</div>
			    {% endfor %}

				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="pagination">
						    {% if posts.has_previous %}
						        <li><a href="?page={{ posts.previous_page_number }}"><<</a></li>
						    {% else %}
						    	<li class="disabled"><a><<</a></li>
						    {% endif %}

							{% if posts.number|add:'-4' > 1 %}
							    <li><a href="?page={{ posts.number|add:'-5' }}">...</a></li>
							{% endif %}



							{% for i in posts.paginator.page_range %}
							    {% if posts.number == i %}
							        <li class="active"><a>{{ i }}</a></li>
							    {% elif i > posts.number|add:'-5' and i < posts.number|add:'5' %}
							        <li><a href="?page={{ i }}">{{ i }}</a></li>
							    {% endif %}
							{% endfor %}



							{% if posts.paginator.num_pages > posts.number|add:'4' %}
							    <li><a href="?page={{ posts.number|add:'5' }}">...</a></li>
							{% endif %}

						    {% if posts.has_next %}
						        <li><a href="?page={{ posts.next_page_number }}">>></a></li>
						    {% else %}
						    	<li class="disabled"><a>>></a></li>
						    {% endif %}
						</ul>
					</div>
				</div>
			</div>
		</div>
  </div>
{% endblock %}
