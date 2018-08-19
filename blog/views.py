from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.shortcuts import render
from django.template import RequestContext

from .models import Post

def index(request):
    '''Show all news'''
    posts_list = Post.objects.all().order_by('-pub_date')
    paginator = Paginator(posts_list, 6)
    page = request.GET.get('page')
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

'''def index(request):
    latest_post_list = Post.objects.order_by('-pub_date')
    template = loader.get_template('blog/index.tpl')
    list = Post.objects.all()
    paginator = Paginator(list, 1)
    context = {
        'latest_post_list': latest_post_list,
        'paginator' : paginator,
    }
    return HttpResponse(template.render(context, request))
'''
def blog(request, post_id):
    return HttpResponse("Блог %s." % post_id)

def comment(request, post_id):
    title = "Комментарии для блога № %s."
    return HttpResponse(title % post_id)