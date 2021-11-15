from wagtail.embeds.finders.oembed import OEmbedFinder
from wagtail.embeds.oembed_providers import youtube


class YouTubeEmbedFinder(OEmbedFinder):
    """ Like standard finder but wraps embed's html with div having a known class """

    def __init__(self):
        super().__init__(providers=[youtube])

    def find_embed(self, *args, **kwargs):
        embed = super().find_embed(*args, **kwargs)
        embed['html'] = f'<div class="youtube-embed">{embed["html"]}</div>'
        return embed
