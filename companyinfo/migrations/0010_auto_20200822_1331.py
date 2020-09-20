# Generated by Django 3.0.7 on 2020-08-22 13:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('companyinfo', '0009_auto_20200822_1309'),
    ]

    operations = [
        migrations.AlterField(
            model_name='advertising1',
            name='advertising_img',
            field=models.ImageField(blank=True, null=True, upload_to='advertising', verbose_name='点击咨询图片'),
        ),
        migrations.AlterField(
            model_name='advertising1',
            name='img',
            field=models.ImageField(blank=True, null=True, upload_to='choose_teach', verbose_name='广告栏图片'),
        ),
        migrations.AlterField(
            model_name='advertising2',
            name='advertising_img',
            field=models.ImageField(blank=True, null=True, upload_to='advertising', verbose_name='立即领取广告图片'),
        ),
        migrations.AlterField(
            model_name='advertising2',
            name='img',
            field=models.ImageField(blank=True, null=True, upload_to='choose_teach', verbose_name='广告栏图片'),
        ),
        migrations.AlterField(
            model_name='teacher_select',
            name='img1',
            field=models.ImageField(blank=True, null=True, upload_to='advertising', verbose_name='图片一'),
        ),
        migrations.AlterField(
            model_name='teacher_select',
            name='img2',
            field=models.ImageField(blank=True, null=True, upload_to='advertising', verbose_name='图片二'),
        ),
    ]