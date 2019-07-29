# Generated by Django 2.2.3 on 2019-07-29 09:12

from django.db import migrations
import ee_site.apps.main.blocks
import wagtail.core.blocks
import wagtail.core.fields
import wagtail.images.blocks


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0035_auto_20190719_1052'),
    ]

    operations = [
        migrations.AlterField(
            model_name='homepage',
            name='content',
            field=wagtail.core.fields.StreamField([('animated_process', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock()), ('text', wagtail.core.blocks.CharBlock())])))])), ('hero_carousel', wagtail.core.blocks.StructBlock([('headline', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('headline', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic'], required=False)), ('page', wagtail.core.blocks.PageChooserBlock()), ('secondary_page', wagtail.core.blocks.PageChooserBlock(required=False))])))])), ('hero_join_us', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock())])), ('hero_process', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False)), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock()), ('text', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('hero_static_left', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock(required=False)), ('page_secondary', wagtail.core.blocks.PageChooserBlock(required=False)), ('external_url', wagtail.core.blocks.URLBlock(required=False))])), ('hero_static_right', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock(required=False)), ('page_secondary', wagtail.core.blocks.PageChooserBlock(required=False)), ('external_url', wagtail.core.blocks.URLBlock(required=False))])), ('hero_switch', wagtail.core.blocks.StructBlock([('headline', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock()), ('page', wagtail.core.blocks.PageChooserBlock()), ('side_image', wagtail.images.blocks.ImageChooserBlock(required=False))])))])), ('logo_wall', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('logos', wagtail.core.blocks.ListBlock(wagtail.images.blocks.ImageChooserBlock()))])), ('rnd', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('value', wagtail.core.blocks.CharBlock()), ('description', wagtail.core.blocks.CharBlock())])))])), ('triptych', wagtail.core.blocks.StructBlock([('headline', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('content', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False)), ('page', wagtail.core.blocks.PageChooserBlock()), ('external_url', wagtail.core.blocks.URLBlock(required=False))])))]))], blank=True),
        ),
        migrations.AlterField(
            model_name='homepage',
            name='content_en',
            field=wagtail.core.fields.StreamField([('animated_process', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock()), ('text', wagtail.core.blocks.CharBlock())])))])), ('hero_carousel', wagtail.core.blocks.StructBlock([('headline', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('headline', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic'], required=False)), ('page', wagtail.core.blocks.PageChooserBlock()), ('secondary_page', wagtail.core.blocks.PageChooserBlock(required=False))])))])), ('hero_join_us', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock())])), ('hero_process', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False)), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock()), ('text', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('hero_static_left', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock(required=False)), ('page_secondary', wagtail.core.blocks.PageChooserBlock(required=False)), ('external_url', wagtail.core.blocks.URLBlock(required=False))])), ('hero_static_right', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock(required=False)), ('page_secondary', wagtail.core.blocks.PageChooserBlock(required=False)), ('external_url', wagtail.core.blocks.URLBlock(required=False))])), ('hero_switch', wagtail.core.blocks.StructBlock([('headline', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock()), ('page', wagtail.core.blocks.PageChooserBlock()), ('side_image', wagtail.images.blocks.ImageChooserBlock(required=False))])))])), ('logo_wall', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('logos', wagtail.core.blocks.ListBlock(wagtail.images.blocks.ImageChooserBlock()))])), ('rnd', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('value', wagtail.core.blocks.CharBlock()), ('description', wagtail.core.blocks.CharBlock())])))])), ('triptych', wagtail.core.blocks.StructBlock([('headline', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('content', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False)), ('page', wagtail.core.blocks.PageChooserBlock()), ('external_url', wagtail.core.blocks.URLBlock(required=False))])))]))], blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='homepage',
            name='content_pl',
            field=wagtail.core.fields.StreamField([('animated_process', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock()), ('text', wagtail.core.blocks.CharBlock())])))])), ('hero_carousel', wagtail.core.blocks.StructBlock([('headline', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('headline', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic'], required=False)), ('page', wagtail.core.blocks.PageChooserBlock()), ('secondary_page', wagtail.core.blocks.PageChooserBlock(required=False))])))])), ('hero_join_us', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock())])), ('hero_process', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False)), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock()), ('text', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('hero_static_left', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock(required=False)), ('page_secondary', wagtail.core.blocks.PageChooserBlock(required=False)), ('external_url', wagtail.core.blocks.URLBlock(required=False))])), ('hero_static_right', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock(required=False)), ('page_secondary', wagtail.core.blocks.PageChooserBlock(required=False)), ('external_url', wagtail.core.blocks.URLBlock(required=False))])), ('hero_switch', wagtail.core.blocks.StructBlock([('headline', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock()), ('page', wagtail.core.blocks.PageChooserBlock()), ('side_image', wagtail.images.blocks.ImageChooserBlock(required=False))])))])), ('logo_wall', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('logos', wagtail.core.blocks.ListBlock(wagtail.images.blocks.ImageChooserBlock()))])), ('rnd', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('value', wagtail.core.blocks.CharBlock()), ('description', wagtail.core.blocks.CharBlock())])))])), ('triptych', wagtail.core.blocks.StructBlock([('headline', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('content', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False)), ('page', wagtail.core.blocks.PageChooserBlock()), ('external_url', wagtail.core.blocks.URLBlock(required=False))])))]))], blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='subpage',
            name='content',
            field=wagtail.core.fields.StreamField([('contact_form', wagtail.core.blocks.StructBlock([('body', wagtail.core.blocks.RichTextBlock()), ('form_heading', wagtail.core.blocks.CharBlock(required=False))])), ('contact_us_button', ee_site.apps.main.blocks.ContactUsButtonBlock()), ('hero_process', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False)), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock()), ('text', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('hero_static_right', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock(required=False)), ('page_secondary', wagtail.core.blocks.PageChooserBlock(required=False)), ('external_url', wagtail.core.blocks.URLBlock(required=False))])), ('image_big', ee_site.apps.main.blocks.ImageBigBlock()), ('level', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock(required=False)), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock(required=False)), ('value', wagtail.core.blocks.CharBlock()), ('property_name', wagtail.core.blocks.CharBlock(required=False))])))])), ('masonry', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('image', wagtail.images.blocks.ImageChooserBlock()), ('page', wagtail.core.blocks.PageChooserBlock()), ('featured_x', wagtail.core.blocks.BooleanBlock(required=False)), ('featured_y', wagtail.core.blocks.BooleanBlock(required=False)), ('featured_mobile', wagtail.core.blocks.BooleanBlock(required=False)), ('title_dark', wagtail.core.blocks.BooleanBlock(required=False))])))])), ('paragraph', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link', 'ol', 'ul', 'image', 'embed', 'blockquote', 'code']))])), ('rich_text', ee_site.apps.main.blocks.RichTextBlock()), ('quote', wagtail.core.blocks.StructBlock([('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'])), ('author', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False))])), ('tile_grid', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('tile_grid_spaced', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('subtitle', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('tile_grid_with_icons', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock(required=False)), ('page', wagtail.core.blocks.PageChooserBlock())])))]))], blank=True),
        ),
        migrations.AlterField(
            model_name='subpage',
            name='content_en',
            field=wagtail.core.fields.StreamField([('contact_form', wagtail.core.blocks.StructBlock([('body', wagtail.core.blocks.RichTextBlock()), ('form_heading', wagtail.core.blocks.CharBlock(required=False))])), ('contact_us_button', ee_site.apps.main.blocks.ContactUsButtonBlock()), ('hero_process', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False)), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock()), ('text', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('hero_static_right', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock(required=False)), ('page_secondary', wagtail.core.blocks.PageChooserBlock(required=False)), ('external_url', wagtail.core.blocks.URLBlock(required=False))])), ('image_big', ee_site.apps.main.blocks.ImageBigBlock()), ('level', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock(required=False)), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock(required=False)), ('value', wagtail.core.blocks.CharBlock()), ('property_name', wagtail.core.blocks.CharBlock(required=False))])))])), ('masonry', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('image', wagtail.images.blocks.ImageChooserBlock()), ('page', wagtail.core.blocks.PageChooserBlock()), ('featured_x', wagtail.core.blocks.BooleanBlock(required=False)), ('featured_y', wagtail.core.blocks.BooleanBlock(required=False)), ('featured_mobile', wagtail.core.blocks.BooleanBlock(required=False)), ('title_dark', wagtail.core.blocks.BooleanBlock(required=False))])))])), ('paragraph', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link', 'ol', 'ul', 'image', 'embed', 'blockquote', 'code']))])), ('rich_text', ee_site.apps.main.blocks.RichTextBlock()), ('quote', wagtail.core.blocks.StructBlock([('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'])), ('author', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False))])), ('tile_grid', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('tile_grid_spaced', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('subtitle', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('tile_grid_with_icons', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock(required=False)), ('page', wagtail.core.blocks.PageChooserBlock())])))]))], blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='subpage',
            name='content_pl',
            field=wagtail.core.fields.StreamField([('contact_form', wagtail.core.blocks.StructBlock([('body', wagtail.core.blocks.RichTextBlock()), ('form_heading', wagtail.core.blocks.CharBlock(required=False))])), ('contact_us_button', ee_site.apps.main.blocks.ContactUsButtonBlock()), ('hero_process', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False)), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock()), ('text', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('hero_static_right', wagtail.core.blocks.StructBlock([('background_image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('headline', wagtail.core.blocks.CharBlock()), ('body', wagtail.core.blocks.TextBlock()), ('page', wagtail.core.blocks.PageChooserBlock(required=False)), ('page_secondary', wagtail.core.blocks.PageChooserBlock(required=False)), ('external_url', wagtail.core.blocks.URLBlock(required=False))])), ('image_big', ee_site.apps.main.blocks.ImageBigBlock()), ('level', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock(required=False)), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock(required=False)), ('value', wagtail.core.blocks.CharBlock()), ('property_name', wagtail.core.blocks.CharBlock(required=False))])))])), ('masonry', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('image', wagtail.images.blocks.ImageChooserBlock()), ('page', wagtail.core.blocks.PageChooserBlock()), ('featured_x', wagtail.core.blocks.BooleanBlock(required=False)), ('featured_y', wagtail.core.blocks.BooleanBlock(required=False)), ('featured_mobile', wagtail.core.blocks.BooleanBlock(required=False)), ('title_dark', wagtail.core.blocks.BooleanBlock(required=False))])))])), ('paragraph', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link', 'ol', 'ul', 'image', 'embed', 'blockquote', 'code']))])), ('rich_text', ee_site.apps.main.blocks.RichTextBlock()), ('quote', wagtail.core.blocks.StructBlock([('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'])), ('author', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link'], required=False))])), ('tile_grid', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('tile_grid_spaced', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('image', wagtail.images.blocks.ImageChooserBlock()), ('title', wagtail.core.blocks.CharBlock(required=False)), ('subtitle', wagtail.core.blocks.CharBlock(required=False)), ('body', wagtail.core.blocks.RichTextBlock(features=['bold', 'italic', 'link', 'document-link']))])))])), ('tile_grid_with_icons', wagtail.core.blocks.StructBlock([('title', wagtail.core.blocks.CharBlock()), ('tiles', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('icon', wagtail.images.blocks.ImageChooserBlock(required=False)), ('page', wagtail.core.blocks.PageChooserBlock())])))]))], blank=True, null=True),
        ),
    ]
