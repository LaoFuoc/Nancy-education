# Generated by Django 3.0.7 on 2020-06-25 21:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('companyinfo', '0005_auto_20200624_2043'),
    ]

    operations = [
        migrations.CreateModel(
            name='About_Bt',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='学校简介', max_length=100, verbose_name='标题')),
                ('s_title', models.CharField(default='SCHOOL SITUATION', max_length=200, verbose_name='小标题')),
                ('bt_carousel_img1', models.ImageField(upload_to='carousel', verbose_name='图片一')),
                ('bt_carousel_img2', models.ImageField(upload_to='carousel', verbose_name='图片二')),
                ('bt_carousel_img3', models.ImageField(upload_to='carousel', verbose_name='图片三')),
            ],
            options={
                'verbose_name': '2关于南西-3底部图',
                'verbose_name_plural': '2关于南西-3底部图',
            },
        ),
        migrations.CreateModel(
            name='Contact_Bt',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='学校简介', max_length=100, verbose_name='标题')),
                ('s_title', models.CharField(default='SCHOOL SITUATION', max_length=200, verbose_name='小标题')),
                ('bt_carousel_img1', models.ImageField(upload_to='carousel', verbose_name='图片一')),
                ('bt_carousel_img2', models.ImageField(upload_to='carousel', verbose_name='图片二')),
                ('bt_carousel_img3', models.ImageField(upload_to='carousel', verbose_name='图片三')),
            ],
            options={
                'verbose_name': '7联系我们-2底部',
                'verbose_name_plural': '7联系我们-2底部',
            },
        ),
        migrations.CreateModel(
            name='Course_Bt',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='学校简介', max_length=100, verbose_name='标题')),
                ('s_title', models.CharField(default='SCHOOL SITUATION', max_length=200, verbose_name='小标题')),
                ('bt_carousel_img1', models.ImageField(upload_to='carousel', verbose_name='图片一')),
                ('bt_carousel_img2', models.ImageField(upload_to='carousel', verbose_name='图片二')),
                ('bt_carousel_img3', models.ImageField(upload_to='carousel', verbose_name='图片三')),
            ],
            options={
                'verbose_name': '3课程介绍-5底部',
                'verbose_name_plural': '3课程介绍-5底部',
            },
        ),
        migrations.CreateModel(
            name='Dynamic_Bt',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='学校简介', max_length=100, verbose_name='标题')),
                ('s_title', models.CharField(default='SCHOOL SITUATION', max_length=200, verbose_name='小标题')),
                ('bt_carousel_img1', models.ImageField(upload_to='carousel', verbose_name='图片一')),
                ('bt_carousel_img2', models.ImageField(upload_to='carousel', verbose_name='图片二')),
                ('bt_carousel_img3', models.ImageField(upload_to='carousel', verbose_name='图片三')),
            ],
            options={
                'verbose_name': '5最新动态-3底部',
                'verbose_name_plural': '5最新动态-3底部',
            },
        ),
        migrations.CreateModel(
            name='Program_Bt',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='学校简介', max_length=100, verbose_name='标题')),
                ('s_title', models.CharField(default='SCHOOL SITUATION', max_length=200, verbose_name='小标题')),
                ('bt_carousel_img1', models.ImageField(upload_to='carousel', verbose_name='图片一')),
                ('bt_carousel_img2', models.ImageField(upload_to='carousel', verbose_name='图片二')),
                ('bt_carousel_img3', models.ImageField(upload_to='carousel', verbose_name='图片三')),
            ],
            options={
                'verbose_name': '6小南编程-6底部',
                'verbose_name_plural': '6小南编程-6底部',
            },
        ),
        migrations.CreateModel(
            name='Teach_Bt',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='学校简介', max_length=100, verbose_name='标题')),
                ('s_title', models.CharField(default='SCHOOL SITUATION', max_length=200, verbose_name='小标题')),
                ('bt_carousel_img1', models.ImageField(upload_to='carousel', verbose_name='图片一')),
                ('bt_carousel_img2', models.ImageField(upload_to='carousel', verbose_name='图片二')),
                ('bt_carousel_img3', models.ImageField(upload_to='carousel', verbose_name='图片三')),
            ],
            options={
                'verbose_name': '4教学体系-4底部',
                'verbose_name_plural': '4教学体系-4底部',
            },
        ),
        migrations.AlterModelOptions(
            name='contact',
            options={'verbose_name': '7联系我们-1', 'verbose_name_plural': '7联系我们-1'},
        ),
    ]
