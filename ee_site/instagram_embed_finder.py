from wagtail.embeds.finders.instagram import InstagramOEmbedFinder


class InstagramEmbedFinder(InstagramOEmbedFinder):
    """ Makes instagram embed HTML without comunicating with their APIs. """

    def find_embed(self, url, max_width=None, max_height=None):
        html = f'''
            <div class="instagram-embed">
                <blockquote class="instagram-media"
                    data-instgrm-captioned data-instgrm-permalink="{url}" data-instgrm-version="14"
                >
                    <a href="{url}">{url}</a>
                </blockquote>
                <script async src="https://www.instagram.com/embed.js"></script>
            </div>
        '''
        return {
            'title': '',
            'author_name': '',
            'provider_name': 'Instagram',
            'type': 'rich',
            'thumbnail_url': '',
            'width': None,
            'height': None,
            'html': html,
        }
