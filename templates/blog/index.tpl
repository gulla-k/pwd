{% extends "base/base.tpl" %}
{% load static %}

{% block title %}Блог{% endblock %}

{% block content %}
		<section id="home" class="video-hero" style="height: 500px; background-image: url({% static 'blog/images/cover_img_1.jpg' %});  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t display-t2 text-center">
				<div class="display-tc display-tc2">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
							<div class="animate-box">
								<h2>Блог</h2>
								<p class="breadcrumbs"><span><a href="../">Home</a></span> <span>Блог</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="colorlib-blog">
			<div class="container">
		        <div class="row">
			    {% for post in posts %}
					<div class="col-md-4 animate-box">
						<article>
							<h2><a href="/blog/{{ post.id }}/">{{ post.post_title }}</a></h2>
							<p class="admin"><span>{{ post.pub_date|date:"F j, Y" }}</span></p>
							<p>{{ post.post_description }}</p>
							<p class="author-wrap"><a href="#" class="author-img" style="background-image: url({% static 'blog/images/person1.jpg' %});"></a> <a href="/user/{{ post.post_author.id }}" class="author">{{ post.post_author }}</a></p>
						</article>
					</div>
			    {% endfor %}
				</div>
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
{% endblock %}
