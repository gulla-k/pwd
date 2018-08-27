{% load static %}
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>WebTo.Pro - {% block title %}{% endblock %}</title>
    <link rel="stylesheet" href="{% static 'blog/css/style.css' %}" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="yandex-verification" content="aea4dc21e25fdcc1" />

	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="{% static 'blog/css/animate.css' %}" />
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="{% static 'blog/css/icomoon.css' %}" />
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="{% static 'blog/css/bootstrap.css' %}" />

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="{% static 'blog/css/magnific-popup.css' %}" />

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="{% static 'blog/css/owl.carousel.min.css' %}" />
	<link rel="stylesheet" href="{% static 'blog/css/owl.theme.default.min.css' %}" />

	<!-- Theme style  -->
	<link rel="stylesheet" href="{% static 'blog/css/style.css' %}" />

	<!-- Modernizr JS -->
	<script src="{% static 'blog/js/modernizr-2.6.2.min.js' %}"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
		
	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-md-2">
							<div id="colorlib-logo"><a href="../">WEBTO.PRO</a></div>
						</div>
						<div class="col-md-10 text-right menu-1">
							<ul>
								<li{% if request.path_info == '/blog/' %} class="active"{% endif %}><a href="../blog/">Блог</a></li>
								<li><a href="../project/">Проекты</a></li>
								<li><a href="../about/">Обо мне</a></li>
								<li><a href="../contact/">Контакты</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>

        {% block content %}{% endblock %}

		<footer id="colorlib-footer">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-4 colorlib-widget">
						<h4>О сервисе</h4>
						<p>Разработка сайта ведётся на языке программирования Python с использованием Open Source фреймворка Django для создания веб-приложений. Визуализация пишется на CSS фреймворке Bootstrap с использованием JavaScript фреймворка Vue.JS</p>
						<p>
							<ul class="colorlib-social-icons">
								<li><a href="https://vk.com/gulla_k"><i class="icon-vk"></i></a></li>
								<li><a href="https://github.com/gulla-k"><i class="icon-github"></i></a></li>
								<li><a href="#"><i class="icon-telegram"></i></a></li>
								<li><a href="#"><i class="icon-instagram"></i></a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-4 colorlib-widget">
						<h4>Информация</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="../blog/"><i class="icon-check"></i> Блог</a></li>
								<li><a href="../project/"><i class="icon-check"></i> Мои проекты</a></li>
								<li><a href="../about/"><i class="icon-check"></i> Обо мне</a></li>
								<li><a href="../contact/"><i class="icon-check"></i> Контакты</a></li>
							</ul>
						</p>
					</div>

					<div class="col-md-4 colorlib-widget">
						<h4>Контакты</h4>
						<ul class="colorlib-footer-links">
							<li>Краснодарский край, Тихорецкий район<br> 352120, Тихорецк, ул. Октябрьская 24а</li>
							<li><a href="tel://+79082297675"><i class="icon-phone"></i> + 7 908 229 76 75</a></li>
							<li><a href="mailto:gulla.k@yandex.ru"><i class="icon-envelope"></i> gulla.k@yandex.ru</a></li>
							<li><a href="https://webto.pro"><i class="icon-location4"></i> https://webto.pro</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="copy">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center">
							<p>
								Copyright &copy; 2018<br> Все права защищены<br>
								<!-- Yandex.Metrika informer -->
<a href="https://metrika.yandex.ru/stat/?id=50118850&amp;from=informer"
target="_blank" rel="nofollow"><img src="https://informer.yandex.ru/informer/50118850/3_0_CCCCCCFF_CCCCCCFF_0_uniques"
style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" /></a>
<!-- /Yandex.Metrika informer -->

<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter50118850 = new Ya.Metrika2({
                    id:50118850,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/tag.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks2");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/50118850" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="{% static 'blog/js/jquery.min.js' %}"></script>
	<!-- jQuery Easing -->
	<script src="{% static 'blog/js/jquery.easing.1.3.js' %}"></script>
	<!-- Bootstrap -->
	<script src="{% static 'blog/js/bootstrap.min.js' %}"></script>
	<!-- Waypoints -->
	<script src="{% static 'blog/js/jquery.waypoints.min.js' %}"></script>
	<!-- Stellar Parallax -->
	<script src="{% static 'blog/js/jquery.stellar.min.js' %}"></script>
	<!-- YTPlayer -->
	<script src="{% static 'blog/js/jquery.mb.YTPlayer.min.js' %}"></script>
	<!-- Owl carousel -->
	<script src="{% static 'blog/js/owl.carousel.min.js' %}"></script>
	<!-- Magnific Popup -->
	<script src="{% static 'blog/js/jquery.magnific-popup.min.js' %}"></script>
	<script src="{% static 'blog/js/magnific-popup-options.js' %}"></script>
	<!-- Counters -->
	<script src="{% static 'blog/js/jquery.countTo.js' %}"></script>
	<!-- Main -->
	<script src="{% static 'blog/js/main.js' %}"></script>
</body>
</html>