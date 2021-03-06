# Generated by Django 2.2.2 on 2019-06-14 12:40

from django.db import migrations, models
import django.db.models.deletion
import wagtail.core.fields


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailimages', '0001_squashed_0021'),
        ('wagtailcore', '0041_group_collection_permissions_verbose_name_plural'),
        ('projects', '0011_projectpage_background_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='TopicPage',
            fields=[
                ('page_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='wagtailcore.Page')),
                ('marked', models.BooleanField(default=False, help_text='If True, this topic would be visible on HomePage.')),
                ('content', wagtail.core.fields.RichTextField()),
                ('content_pl', wagtail.core.fields.RichTextField(null=True)),
                ('content_en', wagtail.core.fields.RichTextField(null=True)),
                ('background_image', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='wagtailimages.Image')),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.AddField(
            model_name='projectpage',
            name='topics',
            field=models.ManyToManyField(blank=True, related_name='projects', to='projects.TopicPage'),
        ),
    ]
