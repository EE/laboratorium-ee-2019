# Generated by Django 2.2.3 on 2019-07-05 10:06

from django.db import migrations, models
import wagtail.core.blocks
import wagtail.core.fields
import wagtail.images.blocks


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0018_projectpage_project_url'),
    ]

    operations = [
        migrations.AddField(
            model_name='projectpage',
            name='masonry_featured_x',
            field=models.BooleanField(default=False),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='projectpage',
            name='masonry_featured_y',
            field=models.BooleanField(default=False),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='projectpage',
            name='masonry_title_dark',
            field=models.BooleanField(default=False),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='projectpage',
            name='process',
            field=wagtail.core.fields.StreamField([('tiles_list', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())], template='main/blocks/tile_fancy_uppercase.html'), template='projects/blocks/tiles_list_with_arrows.html'))], null=True),
        ),
        migrations.AlterField(
            model_name='projectpage',
            name='process_en',
            field=wagtail.core.fields.StreamField([('tiles_list', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())], template='main/blocks/tile_fancy_uppercase.html'), template='projects/blocks/tiles_list_with_arrows.html'))], null=True),
        ),
        migrations.AlterField(
            model_name='projectpage',
            name='process_pl',
            field=wagtail.core.fields.StreamField([('tiles_list', wagtail.core.blocks.ListBlock(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())], template='main/blocks/tile_fancy_uppercase.html'), template='projects/blocks/tiles_list_with_arrows.html'))], null=True),
        ),
    ]
