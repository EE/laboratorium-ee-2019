# Generated by Django 2.2.2 on 2019-06-13 13:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailimages', '0001_squashed_0021'),
        ('projects', '0010_auto_20190612_1325'),
    ]

    operations = [
        migrations.AddField(
            model_name='projectpage',
            name='background_image',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='wagtailimages.Image'),
        ),
    ]
