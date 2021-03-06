# Generated by Django 2.2.3 on 2019-07-16 07:35

from django.db import migrations, models
import django.db.models.deletion
import modelcluster.fields


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailimages', '0001_squashed_0021'),
        ('main', '0029_auto_20190715_1136'),
    ]

    operations = [
        migrations.CreateModel(
            name='SubPageMetric',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(blank=True, editable=False, null=True)),
                ('value', models.CharField(max_length=31)),
                ('value_pl', models.CharField(max_length=31, null=True)),
                ('value_en', models.CharField(max_length=31, null=True)),
                ('property_name', models.CharField(max_length=63)),
                ('property_name_pl', models.CharField(max_length=63, null=True)),
                ('property_name_en', models.CharField(max_length=63, null=True)),
                ('icon', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='wagtailimages.Image')),
                ('page', modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='metrics', to='main.SubPage')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
    ]
