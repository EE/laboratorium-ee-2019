# Generated by Django 2.2.1 on 2019-05-08 07:49

from django.db import migrations, models
import django.db.models.deletion
import modelcluster.fields


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailcore', '0041_group_collection_permissions_verbose_name_plural'),
        ('projects', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='SpecializationIndexPage',
            fields=[
                ('page_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='wagtailcore.Page')),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='ProjectMetric',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(blank=True, editable=False, null=True)),
                ('value', models.CharField(max_length=31)),
                ('property_name', models.CharField(max_length=63)),
                ('project', modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='metrics', to='projects.ProjectPage')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
    ]
