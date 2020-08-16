# Generated by Django 3.0.7 on 2020-06-23 00:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('companyinfo', '0002_auto_20200621_1735'),
    ]

    operations = [
        migrations.CreateModel(
            name='Bt_Nav',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='杨家坪校区', max_length=100, verbose_name='校区名称')),
                ('address', models.CharField(default='保利时代广场B栋12楼（杨家坪步行街正西50米）', max_length=50, verbose_name='详细地址')),
                ('phone', models.CharField(default='杨家坪校区', max_length=20, verbose_name='电话号码')),
                ('record1', models.CharField(default='渝IC P备00000000号00', max_length=100, verbose_name='备案号1')),
                ('url1', models.CharField(default='#', max_length=100, verbose_name='备案号1链接')),
                ('record2', models.CharField(default='渝公网安备00000000000000号', max_length=100, verbose_name='备案号2')),
                ('url2', models.CharField(default='#', max_length=100, verbose_name='备案号2链接')),
                ('imprimatur', models.CharField(default='出版物经营许可证新出发渝零字第V000号', max_length=100, verbose_name='经营许可')),
                ('License', models.CharField(default='营业执照00000000MA05JPR99 J', max_length=100, verbose_name='营业执照')),
                ('other', models.CharField(default='Copysdfght◎2020 AII rights sdfsdfs', max_length=100, verbose_name='备案号2')),
                ('qrcode', models.ImageField(upload_to='advertising', verbose_name='二维码')),
            ],
            options={
                'verbose_name': '1首页-7底部导航栏',
                'verbose_name_plural': '1首页-7底部导航栏',
            },
        ),
        migrations.AlterModelOptions(
            name='dynamic',
            options={'verbose_name': '5最新动态-2编辑新闻', 'verbose_name_plural': '5最新动态-2编辑新闻'},
        ),
        migrations.AlterModelOptions(
            name='tag',
            options={'verbose_name': '5最新动态-1添加关键字', 'verbose_name_plural': '5最新动态-1添加关键字'},
        ),
        migrations.AlterField(
            model_name='dynamic',
            name='articles',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='companyinfo.Tag', verbose_name='关键字'),
        ),
    ]