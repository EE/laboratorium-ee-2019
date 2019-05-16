def menus(request):
    return {
        'menus': request.site.root_page.get_descendants().live().in_menu(),
    }
