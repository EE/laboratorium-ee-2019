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
