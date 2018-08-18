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
	{% if latest_post_list %}
		<div class="row">
	    {% for post in latest_post_list %}
			<div class="col-md-4 animate-box">
				<article>
					<h2><a href="/blog/{{ post.id }}/">{{ post.post_title }}</a></h2>
					<p class="admin"><span>{{ post.pub_date|date:"F j, Y" }}</span></p>
					<p>{{ post.post_description }}</p>
					<p class="author-wrap"><a href="#" class="author-img" style="background-image: url({% static 'blog/images/person1.jpg' %});"></a> <a href="#" class="author">{{ post.post_author }}</a></p>
				</article>
			</div>
	    {% endfor %}
		</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="pagination">
							<li class="disabled"><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	{% else %}
	    <p>No polls are available.</p>
	{% endif %}

{% endblock %}