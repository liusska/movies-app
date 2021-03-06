# Generated by Django 4.0.4 on 2022-04-20 07:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movies', '0002_movie_trailer'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movie',
            name='category',
            field=models.CharField(choices=[('Biography', 'Biography'), ('Documentary', 'Documentary'), ('Fantasy', 'Fantasy'), ('Musical', 'Musical'), ('Comedy', 'Comedy'), ('Thriller', 'Thriller'), ('Mystery', 'Mystery'), ('Romance', 'Romance'), ('Drama', 'Drama'), ('Crime', 'Crime'), ('Horror', 'Horror'), ('Family', 'Family'), ('Animation', 'Animation')], max_length=20),
        ),
    ]
