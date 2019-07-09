from wagtail.core import blocks
from wagtail.images.blocks import ImageChooserBlock


class Tile(blocks.StructBlock):
    heading = blocks.CharBlock()
    image = ImageChooserBlock()

    class Meta:
        template = 'main/blocks/tile.html'


class TileWithDescription(blocks.StructBlock):
    heading = blocks.CharBlock()
    image = ImageChooserBlock()
    description = blocks.CharBlock()

    class Meta:
        template = 'main/blocks/tile_with_description.html'


class TileSimple(blocks.StructBlock):
    heading = blocks.CharBlock()
    description = blocks.RichTextBlock(features=[])  # allow just newline

    class Meta:
        template = 'main/blocks/tile_simple.html'


class HorizontalList(blocks.ListBlock):
    class Meta:
        template = 'projects/blocks/tiles_list.html'


class HorizontalListWithArrows(blocks.ListBlock):
    class Meta:
        template = 'projects/blocks/tiles_list_with_arrows.html'


class EERichTextBlock(blocks.RichTextBlock):
    class Meta:
        template = 'main/blocks/rich_text.html'


class RNDBlock(blocks.StructBlock):
    headline = blocks.CharBlock()
    body = blocks.CharBlock()

    class Meta:
        template = 'main/blocks/rnd.html'


class TriptychBlock(blocks.StructBlock):
    headline = blocks.CharBlock()
    tiles = blocks.ListBlock(
        blocks.StructBlock([
            ('background_image', ImageChooserBlock()),
            ('content', blocks.RichTextBlock(features=['bold', 'italic'], required=False)),
            ('page', blocks.PageChooserBlock()),
        ]),
    )

    class Meta:
        template = 'main/blocks/triptych.html'


class HeroCarouselBlock(blocks.StructBlock):
    headline = blocks.CharBlock()
    tiles = blocks.ListBlock(
        blocks.StructBlock([
            ('background_image', ImageChooserBlock()),
            ('headline', blocks.RichTextBlock(features=['bold', 'italic'], required=False)),
            ('page', blocks.URLBlock()),
            ('secondary_page', blocks.PageChooserBlock(required=False)),
        ]),
    )

    class Meta:
        template = 'main/blocks/hero_carousel.html'
