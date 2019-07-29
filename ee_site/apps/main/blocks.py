from django.conf import settings
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


# ### top-level blocks (wrapped in <section> tag) ###


class AnimatedProcessBlock(blocks.StructBlock):
    title = blocks.CharBlock()
    tiles = blocks.ListBlock(blocks.StructBlock([
        ('icon', ImageChooserBlock()),
        ('text', blocks.CharBlock()),
    ]))

    class Meta:
        template = 'main/blocks/animated_process.html'


class ContactFormBlock(blocks.StructBlock):
    body = blocks.RichTextBlock()
    form_heading = blocks.CharBlock(required=False)

    class Meta:
        template = 'main/blocks/contact_form.html'


class ContactUsButtonBlock(blocks.StaticBlock):
    class Meta:
        template = 'main/blocks/contact_us_button.html'


class RNDBlock(blocks.StructBlock):
    background_image = ImageChooserBlock()
    headline = blocks.CharBlock()
    body = blocks.CharBlock()
    tiles = blocks.ListBlock(blocks.StructBlock([
        ('value', blocks.CharBlock()),
        ('description', blocks.CharBlock()),
    ]))

    class Meta:
        template = 'main/blocks/rnd.html'


class TriptychBlock(blocks.StructBlock):
    headline = blocks.CharBlock()
    tiles = blocks.ListBlock(
        blocks.StructBlock([
            ('background_image', ImageChooserBlock()),
            ('content', blocks.RichTextBlock(features=settings.RICHTEXT_INLINE_FEATURES, required=False)),
            ('page', blocks.PageChooserBlock()),
            ('external_url', blocks.URLBlock(required=False)),
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
            ('page', blocks.PageChooserBlock()),
            ('secondary_page', blocks.PageChooserBlock(required=False)),
        ]),
    )

    class Meta:
        template = 'main/blocks/hero_carousel.html'


class HeroJoinUsBlock(blocks.StructBlock):
    background_image = ImageChooserBlock()
    headline = blocks.CharBlock()
    body = blocks.TextBlock()
    page = blocks.PageChooserBlock()

    class Meta:
        template = 'main/blocks/hero_join_us.html'


class HeroSwitchBlock(blocks.StructBlock):
    headline = blocks.CharBlock()
    tiles = blocks.ListBlock(
        blocks.StructBlock([
            ('background_image', ImageChooserBlock()),
            ('title', blocks.CharBlock()),
            ('page', blocks.PageChooserBlock()),
            ('side_image', ImageChooserBlock(required=False)),
        ]),
    )

    class Meta:
        template = 'main/blocks/hero_switch.html'


class HeroStaticLeftBlock(blocks.StructBlock):
    background_image = ImageChooserBlock()
    title = blocks.CharBlock(required=False)
    headline = blocks.CharBlock()
    body = blocks.TextBlock()
    page = blocks.PageChooserBlock(required=False)
    page_secondary = blocks.PageChooserBlock(required=False)
    external_url = blocks.URLBlock(required=False)

    class Meta:
        template = 'main/blocks/hero_static_left.html'


class HeroStaticRightBlock(HeroStaticLeftBlock):
    class Meta:
        template = 'main/blocks/hero_static_right.html'


class HeroProcessBlock(blocks.StructBlock):
    background_image = ImageChooserBlock()
    title = blocks.CharBlock(required=False)
    headline = blocks.CharBlock(required=False)
    body = blocks.RichTextBlock(required=False, features=settings.RICHTEXT_INLINE_FEATURES)
    tiles = blocks.ListBlock(blocks.StructBlock([
        ('icon', ImageChooserBlock()),
        ('text', blocks.RichTextBlock(features=settings.RICHTEXT_INLINE_FEATURES)),
    ]))

    class Meta:
        template = 'main/blocks/hero_process.html'


class ImageBigBlock(ImageChooserBlock):
    class Meta:
        template = 'main/blocks/image_big.html'


class LevelBlock(blocks.StructBlock):
    title = blocks.CharBlock(required=False)
    tiles = blocks.ListBlock(blocks.StructBlock([
        ('icon', ImageChooserBlock(required=False)),
        ('value', blocks.CharBlock()),
        ('property_name', blocks.CharBlock(required=False)),
    ]))

    class Meta:
        template = 'main/blocks/level.html'


class LogoWallBlock(blocks.StructBlock):
    title = blocks.CharBlock()
    logos = blocks.ListBlock(ImageChooserBlock())

    class Meta:
        template = 'main/blocks/logo_wall.html'


class MasonryBlock(blocks.StructBlock):
    title = blocks.CharBlock()
    tiles = blocks.ListBlock(blocks.StructBlock([
        ('image', ImageChooserBlock()),
        ('page', blocks.PageChooserBlock()),
        ('featured_x', blocks.BooleanBlock(required=False)),
        ('featured_y', blocks.BooleanBlock(required=False)),
        ('featured_mobile', blocks.BooleanBlock(required=False)),
        ('title_dark', blocks.BooleanBlock(required=False)),
    ]))

    class Meta:
        template = 'main/blocks/masonry.html'


class ParagraphBlock(blocks.StructBlock):
    title = blocks.CharBlock(required=False)
    body = blocks.RichTextBlock(
        features=settings.RICHTEXT_INLINE_FEATURES + settings.RICHTEXT_BLOCK_FEATURES,
    )

    class Meta:
        template = 'main/blocks/paragraph.html'


class QuoteBlock(blocks.StructBlock):
    body = blocks.RichTextBlock(features=settings.RICHTEXT_INLINE_FEATURES)
    author = blocks.RichTextBlock(features=settings.RICHTEXT_INLINE_FEATURES, required=False)

    class Meta:
        template = 'main/blocks/quote.html'


class TileGridBlock(blocks.StructBlock):
    title = blocks.CharBlock()
    tiles = blocks.ListBlock(blocks.StructBlock([
        ('image', ImageChooserBlock()),
        ('title', blocks.CharBlock(required=False)),
        ('body', blocks.RichTextBlock(features=settings.RICHTEXT_INLINE_FEATURES)),
    ]))

    class Meta:
        template = 'main/blocks/tile_grid.html'


class TileGridSpacedBlock(blocks.StructBlock):
    title = blocks.CharBlock()
    tiles = blocks.ListBlock(blocks.StructBlock([
        ('image', ImageChooserBlock()),
        ('title', blocks.CharBlock(required=False)),
        ('subtitle', blocks.CharBlock(required=False)),
        ('body', blocks.RichTextBlock(features=settings.RICHTEXT_INLINE_FEATURES)),
    ]))

    class Meta:
        template = 'main/blocks/tile_grid_spaced.html'


class TileGridWithIconsBlock(blocks.StructBlock):
    title = blocks.CharBlock()
    tiles = blocks.ListBlock(blocks.StructBlock([
        ('icon', ImageChooserBlock(required=False)),
        ('page', blocks.PageChooserBlock()),
    ]))

    class Meta:
        template = 'main/blocks/tile_grid_with_icons.html'
