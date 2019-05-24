from wagtail.core import blocks
from wagtail.images.blocks import ImageChooserBlock


class Tile(blocks.StructBlock):
    heading = blocks.CharBlock()
    image = ImageChooserBlock()

    class Meta:
        template = 'projects/tile.html'


class TileWithDescription(blocks.StructBlock):
    heading = blocks.CharBlock()
    image = ImageChooserBlock()
    description = blocks.CharBlock()

    class Meta:
        template = 'projects/tile_with_description.html'
