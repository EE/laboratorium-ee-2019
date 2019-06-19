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
