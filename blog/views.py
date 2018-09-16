from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.shortcuts import render
from django.template import RequestContext

from .models import Post

def index(request, page):
    '''Show all news'''
    if page is None:
        page = 1
    posts_list = Post.objects.all().order_by('-pub_date')
    paginator = Paginator(posts_list, 6)
    page = page
    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        posts = paginator.page(1)
    except EmptyPage:
        posts = paginator.page(paginator.num_pages)
    vars = dict(
        posts=posts,
        )
    context = {
        'posts': posts,
        'paginator' : paginator,
    }
    return render(request, 'blog/index.tpl', context)

def blog(request, post_id):
    return HttpResponse("Блог %s." % post_id)

def comment(request, post_id):
    title = "Комментарии для блога № %s."
    return HttpResponse(title % post_id)
