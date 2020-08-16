# Generated by Django 3.0.7 on 2020-06-24 20:43

import ckeditor_uploader.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('companyinfo', '0004_auto_20200623_2112'),
    ]

    operations = [
        migrations.AlterField(
            model_name='accompanying',
            name='accompany1_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='accompanying',
            name='accompany2_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='accompanying',
            name='accompany3_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='accompanying',
            name='accompany4_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='accompanying',
            name='accompany5_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='accompanying',
            name='accompany6_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='custom',
            name='course1_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='这是', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='custom',
            name='course2_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='这是', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='custom',
            name='course3_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='这是', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='custom',
            name='course4_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='这是', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='custom',
            name='course5_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='这是', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='custom',
            name='course6_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='这是', verbose_name='介绍'),
        ),
        migrations.AlterField(
            model_name='education',
            name='fifth1',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='激发发现问题-解决问题-反思问题的潜力所在', verbose_name='体系五'),
        ),
        migrations.AlterField(
            model_name='education',
            name='first1',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='还原学校上课模式。任课老师，班主任老师，定班教学', verbose_name='体系一'),
        ),
        migrations.AlterField(
            model_name='education',
            name='fourth1',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='搞笑有趣的教学活动，精准适度的悉心指导', verbose_name='体系四'),
        ),
        migrations.AlterField(
            model_name='education',
            name='second1',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='目的性强的学习任务，自主学习能力培养', verbose_name='体系二'),
        ),
        migrations.AlterField(
            model_name='education',
            name='third1',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='科学定位，分层教学。基于现有理论水平教学', verbose_name='体系三'),
        ),
        migrations.AlterField(
            model_name='enterprise',
            name='corpcrate10',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='为求其实', verbose_name='内容'),
        ),
        migrations.AlterField(
            model_name='enterprise',
            name='corpcrate2',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='打造具有..', verbose_name='内容'),
        ),
        migrations.AlterField(
            model_name='enterprise',
            name='corpcrate4',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='为天地..', verbose_name='内容'),
        ),
        migrations.AlterField(
            model_name='enterprise',
            name='corpcrate6',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='与祖国..', verbose_name='内容'),
        ),
        migrations.AlterField(
            model_name='enterprise',
            name='corpcrate8',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='永不作恶', verbose_name='内容'),
        ),
        migrations.AlterField(
            model_name='first_class',
            name='inner',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='基于“PIE”理念（项目教学/激发兴趣/鼓励探索） 进行编程教学大纲开发设计，倡导通过项目实战的方式，去激发学生的兴趣， 进一步提高学习的自我驱动力，获取新知识', verbose_name='简介'),
        ),
        migrations.AlterField(
            model_name='reading_life',
            name='course1_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='这是需要总监定稿1', verbose_name='介绍一'),
        ),
        migrations.AlterField(
            model_name='reading_life',
            name='course2_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='这是需要总监定稿2', verbose_name='介绍二'),
        ),
        migrations.AlterField(
            model_name='reading_life',
            name='course3_int',
            field=ckeditor_uploader.fields.RichTextUploadingField(default='这是需要总监定稿3', verbose_name='介绍三'),
        ),
    ]
