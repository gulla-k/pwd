from django.http import HttpResponse
from django.template import loader

from .models import Post

def index(request):
    latest_post_list = Post.objects.order_by('-pub_date')[:5]
    template = loader.get_template('blog/index.tpl')
    context = {
        'latest_post_list': latest_post_list,
    }
    return HttpResponse(template.render(context, request))

def blog(request, post_id):
    return HttpResponse("Блог %s." % post_id)

def comment(request, post_id):
    title = "Комментарии для блога № %s."
    return HttpResponse(title % post_id)