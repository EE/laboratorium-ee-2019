# Generated by Django 2.2.3 on 2019-07-08 11:02

from django.db import migrations
import src.apps.main.blocks
import wagtail.core.blocks
import wagtail.core.fields
import wagtail.images.blocks


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0020_auto_20190705_1018'),
    ]

    operations = [
        migrations.AlterField(
            model_name='jobofferindexpage',
            name='recruitment',
            field=wagtail.core.fields.StreamField([('text', wagtail.core.blocks.CharBlock(template='projects/blocks/paragraph.html')), ('tiles_list', src.apps.main.blocks.HorizontalListWithArrows(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())], template='main/blocks/tile_fancy.html')))]),
        ),
        migrations.AlterField(
            model_name='jobofferindexpage',
            name='recruitment_en',
            field=wagtail.core.fields.StreamField([('text', wagtail.core.blocks.CharBlock(template='projects/blocks/paragraph.html')), ('tiles_list', src.apps.main.blocks.HorizontalListWithArrows(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())], template='main/blocks/tile_fancy.html')))], null=True),
        ),
        migrations.AlterField(
            model_name='jobofferindexpage',
            name='recruitment_pl',
            field=wagtail.core.fields.StreamField([('text', wagtail.core.blocks.CharBlock(template='projects/blocks/paragraph.html')), ('tiles_list', src.apps.main.blocks.HorizontalListWithArrows(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())], template='main/blocks/tile_fancy.html')))], null=True),
        ),
    ]
