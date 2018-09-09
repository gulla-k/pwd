from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.shortcuts import render
from django.template import RequestContext

from .models import Project
# Create your views here.
def index(request):
    '''Show all news'''
    posts_list = Project.objects.all().order_by('-id')
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
    return render(request, 'project/index.tpl', context)
