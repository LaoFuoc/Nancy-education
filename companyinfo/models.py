#!/usr/bin/env python
# -*- coding:utf-8 -*-
from datetime import datetime

from ckeditor_uploader.fields import RichTextUploadingField  # 富文本编辑器
from django.db import models  # 创建Django模型


# 顶部-轮播图
class Top_Carousel(models.Model):
    number = models.CharField(verbose_name='标题栏电话', default='023-00000000', max_length=20)
    url = models.CharField(verbose_name='南西教育网课超链接', default='http://www.nanxijy.com/', max_length=50)
    carousel_figure1 = models.ImageField(verbose_name='顶部轮播图1', upload_to='carousel')
    carousel_figure2 = models.ImageField(verbose_name='顶部轮播图2', upload_to='carousel')
    carousel_figure3 = models.ImageField(verbose_name='顶部轮播图3', upload_to='carousel')
    carousel_figure4 = models.ImageField(verbose_name='顶部轮播图4', upload_to='carousel')
    carousel_figure5 = models.ImageField(verbose_name='顶部轮播图5', upload_to='carousel')

    class Meta:
        verbose_name = '1轮播图-1顶部-广告电话'
        verbose_name_plural = verbose_name


# 选择我们
class Choose_us(models.Model):
    title = models.CharField(verbose_name='标题', default='选择我们', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='CHOOSE Us', max_length=20)
    category_choices = (('first', '选择我们一'), ('second', '选择我们二'), ('third', '选择我们三'))
    choose = models.ImageField(verbose_name='选择我们', choices=category_choices, upload_to='choose_teach')
    title_img = models.ImageField(verbose_name='选择我们方块图', upload_to='choose_teach')
    for i in range(1, 7):
        locals()['choose_img' + str(i)] = models.ImageField(verbose_name='图片{}'.format(i), upload_to='choose_teach')
        locals()['choose_name' + str(i)] = models.CharField(verbose_name='名字{}'.format(i), max_length=20, default='小明')

    class Meta:
        verbose_name = '1首页-2选择我们'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.s_title


# 点击咨询
class Advertising1(models.Model):
    name = models.CharField(verbose_name='学生姓名', max_length=20)
    phone = models.CharField(verbose_name='联系方式', max_length=50)
    school = models.CharField(verbose_name='学校', max_length=50)
    age = models.CharField(verbose_name='年龄', max_length=20)
    is_handle = models.BooleanField(verbose_name='是否处理', default=False)

    class Meta:
        verbose_name = "点击咨询信息"
        verbose_name_plural = verbose_name


# 点击领取
class Advertising2(models.Model):
    name = models.CharField(verbose_name='小朋友姓名', max_length=20)
    phone = models.CharField(verbose_name='联系方式', max_length=50)
    age = models.CharField(verbose_name='小朋友年龄', max_length=20)
    is_handle = models.BooleanField(verbose_name='是否处理', default=False)

    class Meta:
        verbose_name = "立即领取信息"
        verbose_name_plural = verbose_name


# 南西六步教学法
class Six_Teach(models.Model):
    title = models.CharField(verbose_name='标题', default='南西六步教学法', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='SIX STEP TEACHING METHOD', max_length=100)

    six_teach1 = models.CharField(verbose_name='标题1', default='课后跟踪', max_length=20)
    six_teach2 = models.CharField(verbose_name='内容', default='AFTER CLASS TRACKING', max_length=100)

    six_teach3 = models.CharField(verbose_name='标题2', default='情景导入', max_length=20)
    six_teach4 = models.CharField(verbose_name='内容', default='SCENARIO IMPORT', max_length=100)

    six_teach5 = models.CharField(verbose_name='标题3', default='知识梳理', max_length=20)
    six_teach6 = models.CharField(verbose_name='内容', default='KNOWLEDGE SORTING', max_length=100)

    six_teach7 = models.CharField(verbose_name='标题4', default='例题精讲', max_length=20)
    six_teach8 = models.CharField(verbose_name='内容', default='EXEPLIFICATION', max_length=100)

    six_teach9 = models.CharField(verbose_name='标题5', default='拓展巩固', max_length=20)
    six_teach10 = models.CharField(verbose_name='内容', default='EXPANSION ANDCONS OLIDATION', max_length=100)

    six_teach11 = models.CharField(verbose_name='标题6', default='落实效果', max_length=20)
    six_teach12 = models.CharField(verbose_name='内容', default='IMPLEMENT TATION EFFECT', max_length=100)

    class Meta:
        verbose_name = '1首页-3南西六步教学法'
        verbose_name_plural = verbose_name


# 南西师资
class Nancy_Teacher(models.Model):
    title = models.CharField(verbose_name='标题', default='南西师资', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='PERSONS QUALIFIED TO TEACH', max_length=100)
    category_choices = (('first', '南西师资图一'), ('second', '南西师资图二'),
                        ('third', '南西师资图三'), ('fourth', '南西师资图四'),
                        ('fifth', '南西师资图五'), ('sixth', '南西师资图六'))

    carousel = models.ImageField(verbose_name='南西师资轮播图', choices=category_choices, default='first',
                                 upload_to='choose_teach')
    teach_img = models.ImageField(verbose_name='师资大图（六合一）', upload_to='choose_teach')
    name1 = models.CharField(verbose_name='名字1', default='第一个', max_length=20)
    name2 = models.CharField(verbose_name='名字2', default='第二个', max_length=20)
    name3 = models.CharField(verbose_name='名字3', default='第三个', max_length=20)
    name4 = models.CharField(verbose_name='名字4', default='第四个', max_length=20)
    name5 = models.CharField(verbose_name='名字5', default='第五个', max_length=20)
    name6 = models.CharField(verbose_name='名字6', default='第六个', max_length=20)

    class Meta:
        verbose_name = '1首页-4南西师资'
        verbose_name_plural = verbose_name


# 教师选拔-广告背景
class Teacher_select(models.Model):
    title = models.CharField(verbose_name='标题', default='教师选拔', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='TEACHER SELECTION', max_length=100)
    advertising1_img = models.ImageField(verbose_name='点击咨询广告图片', upload_to='advertising')
    urls = models.CharField(verbose_name='广告链接', default='#', max_length=100)
    advertising2_img = models.ImageField(verbose_name='立即领取广告图片', upload_to='advertising')

    class Meta:
        verbose_name = '广告--链接及背景'
        verbose_name_plural = verbose_name


# 读书点亮生活
class Reading_Life(models.Model):
    title = models.CharField(verbose_name='标题', default='读书点亮生活', max_length=100)
    s_title = models.CharField(verbose_name='小标题', default='Reading LIGHTENS LIFE', max_length=200)

    category_choices = (('first', '读书点亮生活一'), ('second', '读书点亮生活二'),
                        ('third', '读书点亮生活三'), ('fourth', '读书点亮生活四'),
                        ('fifth', '读书点亮生活五'))
    carousel = models.ImageField(verbose_name='读书点亮生活轮播图', choices=category_choices, default='first',
                                 upload_to='read_life')
    course1_img = models.ImageField(verbose_name='图片一', upload_to='read_life',)
    course1_int = RichTextUploadingField(verbose_name='介绍一', default='这是需要总监定稿1')

    course2_img = models.ImageField(verbose_name='图片二', upload_to='read_life')
    course2_int = RichTextUploadingField(verbose_name='介绍二', default='这是需要总监定稿2')

    course3_img = models.ImageField(verbose_name='图片三', upload_to='read_life')
    course3_int = RichTextUploadingField(verbose_name='介绍三', default='这是需要总监定稿3')

    class Meta:
        verbose_name = '1首页-5读书点亮生活'
        verbose_name_plural = verbose_name


# 陪伴式教育
class Accompanying(models.Model):
    title = models.CharField(verbose_name='标题', default='陪伴式教育', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='ACCOMPANYING EDUCATION', max_length=100)

    accompany1 = models.CharField(verbose_name='第一', default='入学测试', max_length=100)
    accompany1_img = models.ImageField(verbose_name='图片', upload_to='read_life')
    accompany1_int = RichTextUploadingField(verbose_name='介绍',
                                      default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.')

    accompany2 = models.CharField(verbose_name='第二', default='分析学情', max_length=100)
    accompany2_img = models.ImageField(verbose_name='图片', upload_to='read_life')
    accompany2_int = RichTextUploadingField(verbose_name='介绍',
                                      default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.')

    accompany3 = models.CharField(verbose_name='第三', default='分配老师', max_length=100)
    accompany3_img = models.ImageField(verbose_name='图片', upload_to='read_life')
    accompany3_int = RichTextUploadingField(verbose_name='介绍',
                                      default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.')

    accompany4 = models.CharField(verbose_name='第四', default='定制计划', max_length=100)
    accompany4_img = models.ImageField(verbose_name='图片', upload_to='read_life')
    accompany4_int = RichTextUploadingField(verbose_name='介绍',
                                      default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.')

    accompany5 = models.CharField(verbose_name='第五', default='建立档案', max_length=100)
    accompany5_img = models.ImageField(verbose_name='图片', upload_to='read_life')
    accompany5_int = RichTextUploadingField(verbose_name='介绍',
                                      default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.')

    accompany6 = models.CharField(verbose_name='第六', default='学习报告', max_length=100)
    accompany6_img = models.ImageField(verbose_name='图片', upload_to='read_life')
    accompany6_int = RichTextUploadingField(verbose_name='介绍',
                                      default='Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.')

    class Meta:
        verbose_name = '1首页-6陪伴式教育'
        verbose_name_plural = verbose_name


# 底部轮播图
class Bottom_carousel(models.Model):
    title = models.CharField(verbose_name='标题', default='学校简介', max_length=100)
    s_title = models.CharField(verbose_name='小标题', default='SCHOOL SITUATION', max_length=200)

    category_choices = (('first', '底部第一组'), ('second', '底部第二组'),
                        ('third', '底部第三组'), ('fourth', '底部第四组'),
                        ('fifth', '底部第五组'))
    carousel = models.ImageField(verbose_name='底部轮播图', choices=category_choices, default='first', upload_to='carousel')

    bt_carousel_img1 = models.ImageField(verbose_name='图片一', upload_to='carousel')
    bt_carousel_img2 = models.ImageField(verbose_name='图片二', upload_to='carousel')
    bt_carousel_img3 = models.ImageField(verbose_name='图片三', upload_to='carousel')

    class Meta:
        verbose_name = '1轮播图-7底部'
        verbose_name_plural = verbose_name


class Bt_Nav(models.Model):
    title = models.CharField(verbose_name='校区名称', default='杨家坪校区', max_length=100)
    address = models.CharField(verbose_name='详细地址', default='保利时代广场B栋12楼（杨家坪步行街正西50米）', max_length=50)
    phone = models.CharField(verbose_name='电话号码', default='杨家坪校区', max_length=20)

    record1 = models.CharField(verbose_name='备案号1', default='渝IC P备00000000号00', max_length=100)
    url1 = models.CharField(verbose_name='备案号1链接', default='#', max_length=100)
    record2 = models.CharField(verbose_name='备案号2', default='渝公网安备00000000000000号', max_length=100)
    url2 = models.CharField(verbose_name='备案号2链接', default='#', max_length=100)
    imprimatur = models.CharField(verbose_name='经营许可', default='出版物经营许可证新出发渝零字第V000号', max_length=100)
    License = models.CharField(verbose_name='营业执照', default='营业执照00000000MA05JPR99 J', max_length=100)
    other = models.CharField(verbose_name='备案号2', default='Copysdfght◎2020 AII rights sdfsdfs', max_length=100)
    qrcode = models.ImageField(verbose_name='二维码', upload_to='advertising')

    class Meta:
        verbose_name = '1首页-7底部导航栏'
        verbose_name_plural = verbose_name


"""关于南西"""


# 学校简介
class About(models.Model):
    title1 = models.CharField(verbose_name='学校简介', default='学校简介', max_length=100)
    s_title1 = models.CharField(verbose_name='英文标题', default='SCHOOL SITUATION', max_length=100)
    img = models.ImageField(verbose_name='学校简介照片', upload_to='about',blank=True)
    sltuation = RichTextUploadingField('学校简介')

    # 校长致辞
    title2 = models.CharField(verbose_name='校长致辞', default='校长致辞', max_length=100)
    s_title2 = models.CharField(verbose_name='英文标题', default='MESSAGE PRESIDENT', max_length=100)
    president1 = RichTextUploadingField(verbose_name='校长致辞-左边', default='')
    preimg1 = models.ImageField(verbose_name='左边图片', upload_to='about',blank=True)
    time1 = models.CharField(verbose_name='左边编辑时间', default='2020年5月1日', max_length=100)

    president2 = RichTextUploadingField(verbose_name='校长致辞-右边', default='')
    preimg2 = models.ImageField(verbose_name='右边图片', upload_to='about',blank=True)
    time2 = models.CharField(verbose_name='右边编辑时间', default='2020年5月1日', max_length=100)

    class Meta:
        verbose_name = '2关于南西-1简介致辞'
        verbose_name_plural = verbose_name


# 企业文化
class Enterprise(models.Model):
    title = models.CharField(verbose_name='企业文化', default='企业文化', max_length=100)
    s_title = models.CharField(verbose_name='英文标题', default='ENTERPRISE CULTURE', max_length=100)
    corpcrate1 = models.CharField(verbose_name='标题1', default='我们的愿景', max_length=100)
    corpcrate2 = RichTextUploadingField(verbose_name='内容', default='打造具有..')

    corpcrate3 = models.CharField(verbose_name='标题2', default='我们的使命', max_length=100)
    corpcrate4 = RichTextUploadingField(verbose_name='内容', default='为天地..')

    corpcrate5 = models.CharField(verbose_name='标题3', default='我们的价值', max_length=100)
    corpcrate6 = RichTextUploadingField(verbose_name='内容', default='与祖国..')

    corpcrate7 = models.CharField(verbose_name='标题4', default='我们的理念', max_length=100)
    corpcrate8 = RichTextUploadingField(verbose_name='内容', default='永不作恶')

    corpcrate9 = models.CharField(verbose_name='标题5', default='我们的精神', max_length=100)
    corpcrate10 = RichTextUploadingField(verbose_name='内容', default='为求其实')

    class Meta:
        verbose_name = '2关于南西-2企业文化'
        verbose_name_plural = verbose_name


class About_Bt(models.Model):
    title = models.CharField(verbose_name='标题', default='学校简介', max_length=100)
    s_title = models.CharField(verbose_name='小标题', default='SCHOOL SITUATION', max_length=200)
    bt_carousel_img1 = models.ImageField(verbose_name='图片一', upload_to='carousel')
    bt_carousel_img2 = models.ImageField(verbose_name='图片二', upload_to='carousel')
    bt_carousel_img3 = models.ImageField(verbose_name='图片三', upload_to='carousel')

    class Meta:
        verbose_name = '2关于南西-3底部图'
        verbose_name_plural = verbose_name


"""课程介绍"""


# 科目
class Course(models.Model):
    title1 = models.CharField(verbose_name='科目', default='科目', max_length=100)
    s_title = models.CharField(verbose_name='英文标题', default='COURSE', max_length=100)

    course1 = models.CharField(verbose_name='科目一', default='语文', max_length=100)
    course1_img = models.ImageField(verbose_name='图片', upload_to='course')
    course1_int = models.CharField(verbose_name='介绍', default='这是语文', max_length=100)

    course2 = models.CharField(verbose_name='科目二', default='数学', max_length=100)
    course2_img = models.ImageField(verbose_name='图片', upload_to='course')
    course2_int = models.CharField(verbose_name='介绍', default='这是数学', max_length=100)

    course3 = models.CharField(verbose_name='科目三', default='英语', max_length=100)
    course3_img = models.ImageField(verbose_name='图片', upload_to='course')
    course3_int = models.CharField(verbose_name='介绍', default='这是英语', max_length=100)

    course4 = models.CharField(verbose_name='科目四', default='物理', max_length=100)
    course4_img = models.ImageField(verbose_name='图片', upload_to='course')
    course4_int = models.CharField(verbose_name='介绍', default='这是物理', max_length=100)

    course5 = models.CharField(verbose_name='科目五', default='化学', max_length=100)
    course5_img = models.ImageField(verbose_name='图片', upload_to='course')
    course5_int = models.CharField(verbose_name='介绍', default='这是化学', max_length=100)

    class Meta:
        verbose_name = '3课程介绍-1科目'
        verbose_name_plural = verbose_name


# 定制一对一
class Custom(models.Model):
    title1 = models.CharField(verbose_name='定制一对一', default='定制一对一', max_length=100)
    s_title = models.CharField(verbose_name='英文标题', default='CUSTOM ONE-TO-ONE', max_length=100)

    course1 = models.CharField(verbose_name='分析学情', default='分析学情', max_length=100)
    course1_img = models.ImageField(verbose_name='图片', upload_to='course')
    course1_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    course2 = models.CharField(verbose_name='定制计划', default='定制计划', max_length=100)
    course2_img = models.ImageField(verbose_name='图片', upload_to='course')
    course2_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    course3 = models.CharField(verbose_name='学习报告', default='学习报告', max_length=100)
    course3_img = models.ImageField(verbose_name='图片', upload_to='course')
    course3_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    course4 = models.CharField(verbose_name='入学测试', default='入学测试', max_length=100)
    course4_img = models.ImageField(verbose_name='图片', upload_to='course')
    course4_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    course5 = models.CharField(verbose_name='分配老师', default='分配老师', max_length=100)
    course5_img = models.ImageField(verbose_name='图片', upload_to='course')
    course5_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    course6 = models.CharField(verbose_name='建立档案', default='建立档案', max_length=100)
    course6_img = models.ImageField(verbose_name='图片', upload_to='course')
    course6_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    situation1 = models.CharField(verbose_name='定制内容左边1', default='基础薄弱', max_length=100)
    situation2 = models.CharField(verbose_name='定制内容左边2', default='偏科严重', max_length=100)
    situation3 = models.CharField(verbose_name='定制内容左边3', default='方法不当', max_length=100)
    situation4 = models.CharField(verbose_name='定制内容左边4', default='备考盲目', max_length=100)
    situation_img1 = models.ImageField(verbose_name='定制内容左边图片', upload_to='course')

    situation5 = models.CharField(verbose_name='定制内容右边1', default='巩固复习', max_length=100)
    situation6 = models.CharField(verbose_name='定制内容右边2', default='专项提高', max_length=100)
    situation7 = models.CharField(verbose_name='定制内容右边3', default='提升效率', max_length=100)
    situation8 = models.CharField(verbose_name='定制内容右边4', default='方向指引', max_length=100)
    situation_img2 = models.ImageField(verbose_name='定制内容右边图片', upload_to='course')

    class Meta:
        verbose_name = '3课程介绍-2定制一对一'
        verbose_name_plural = verbose_name


# 趣味课堂
class Interest(models.Model):
    title = models.CharField(verbose_name='标题', default='趣味课堂', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='INTERESTING CLASSROOM', max_length=100)

    category_choices = (('primary', '小学'), ('middle', '中学'))
    carousel = models.ImageField(verbose_name='小学/中学', choices=category_choices, default='primary',
                                 upload_to='course')
    course1 = models.CharField(verbose_name='第一', default='常规同步课', max_length=100)
    course1_img = models.ImageField(verbose_name='图片', upload_to='course')
    course1_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    course2 = models.CharField(verbose_name='第二', default='专项训练课', max_length=100)
    course2_img = models.ImageField(verbose_name='图片', upload_to='course')
    course2_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    course3 = models.CharField(verbose_name='第三', default='冲刺突破课', max_length=100)
    course3_img = models.ImageField(verbose_name='图片', upload_to='course')
    course3_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    class Meta:
        verbose_name = '3课程介绍-3趣味课堂'
        verbose_name_plural = verbose_name


# 六部教学法
class SixStep(models.Model):
    title = models.CharField(verbose_name='标题', default='六部教学法', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='SIX STEP TEACHING METHOD', max_length=100)
    first1 = models.CharField(verbose_name='第一步', default='情景导入', max_length=100)
    first2 = models.CharField(verbose_name='第一步方法', default='情景导入学习法', max_length=100)

    second1 = models.CharField(verbose_name='第二步', default='知识梳理', max_length=100)
    second2 = models.CharField(verbose_name='第二步方法', default='知识梳理的方法', max_length=100)

    third1 = models.CharField(verbose_name='第三步', default='例题精讲', max_length=100)
    third2 = models.CharField(verbose_name='第三步方法', default='例题精讲的方法', max_length=100)

    fourth1 = models.CharField(verbose_name='第四步', default='拓展巩固', max_length=100)
    fourth2 = models.CharField(verbose_name='第四步方法', default='拓展巩固的情况', max_length=100)

    fifth1 = models.CharField(verbose_name='第五步', default='落实效果', max_length=100)
    fifth2 = models.CharField(verbose_name='第五步方法', default='落实的效果', max_length=100)

    sixth1 = models.CharField(verbose_name='第六步', default='课后跟踪', max_length=100)
    sixth2 = models.CharField(verbose_name='第六步方法', default='课后的跟踪', max_length=100)

    class Meta:
        verbose_name = '3课程介绍-4六步教学法'
        verbose_name_plural = verbose_name


class Course_Bt(models.Model):
    title = models.CharField(verbose_name='标题', default='学校简介', max_length=100)
    s_title = models.CharField(verbose_name='小标题', default='SCHOOL SITUATION', max_length=200)
    bt_carousel_img1 = models.ImageField(verbose_name='图片一', upload_to='carousel')
    bt_carousel_img2 = models.ImageField(verbose_name='图片二', upload_to='carousel')
    bt_carousel_img3 = models.ImageField(verbose_name='图片三', upload_to='carousel')

    class Meta:
        verbose_name = '3课程介绍-5底部'
        verbose_name_plural = verbose_name


"""教学体系"""


# 选择南西
class Choose_Nancy(models.Model):
    title = models.CharField(verbose_name='标题', default='选择南西', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='CHOOSE NANCY', max_length=100)
    first1 = models.CharField(verbose_name='第一', default='强大的教学实力', max_length=100)
    first2 = RichTextUploadingField(verbose_name='第一介绍', default='南西教育作为K12升学辅导培训的资深品牌， 有数年的教育培训和应试辅导经验， 已有数万名学子升入理想学校的成功见证。',
                              )

    second1 = models.CharField(verbose_name='第二', default='丰富的教研活动', max_length=100)
    second2 = RichTextUploadingField(verbose_name='第二介绍',
                               default='每周进行学科教研活动，形成完整的教学设计方案，每月集中分析学生学习情况， 教研针对性辅导方案，每季度举行教师赛课，激励教师不断的提高教学质量。',
                               )

    third1 = models.CharField(verbose_name='第三', default='优质的师训系统', max_length=100)
    third2 = RichTextUploadingField(verbose_name='第三介绍', default='学校总部拥有完整的教师培训体系，新教师侧重教学技能的扎实 ，中级教师侧重教学方式的创新，高级教师侧重教研学术的研究。',
                             )

    fourth1 = models.CharField(verbose_name='第四', default='自主研发的多层次教材', max_length=100)
    fourth2 = RichTextUploadingField(verbose_name='第四介绍',
                               default='教材由教研部数位经验丰富的教研大牛自主研发而成， 根据不同层次的学生学情，研发不同层次的教材，教学层次分明，实用性强')

    fifth1 = models.CharField(verbose_name='第五', default='强大的教学实力', max_length=100)
    fifth2 = RichTextUploadingField(verbose_name='第五介绍', default='南西教育作为K12升学辅导培训的资深品牌，有数年的教育培训和应试辅导经验 已有数万名靴子升入理想学校的成功见证。',
                              )

    class Meta:
        verbose_name = '4教学体系-1选择南西'
        verbose_name_plural = verbose_name


# 教育体系
class Education(models.Model):
    title = models.CharField(verbose_name='标题', default='教育体系', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='EDUCATION SYSTEM', max_length=200)
    title2 = models.CharField(verbose_name='左边体系介绍', default='基于国际知名的认知发展潜能去ZPD学习理论，独创“南西教育体系”', max_length=50)

    first1 = RichTextUploadingField(verbose_name='体系一', default='还原学校上课模式。任课老师，班主任老师，定班教学')
    second1 = RichTextUploadingField(verbose_name='体系二', default='目的性强的学习任务，自主学习能力培养')
    third1 = RichTextUploadingField(verbose_name='体系三', default='科学定位，分层教学。基于现有理论水平教学')
    fourth1 = RichTextUploadingField(verbose_name='体系四', default='搞笑有趣的教学活动，精准适度的悉心指导')
    fifth1 = RichTextUploadingField(verbose_name='体系五', default='激发发现问题-解决问题-反思问题的潜力所在')

    class Meta:
        verbose_name = '4教学体系-2教学体系'
        verbose_name_plural = verbose_name


# 教育服务
class Service(models.Model):
    title = models.CharField(verbose_name='标题', default='教育服务', max_length=20)
    s_title = models.CharField(verbose_name='小标题', default='EDUCATION SYSTEM', max_length=400)

    before_img = models.ImageField(verbose_name='课前图片', upload_to='teach')
    before_inner = RichTextUploadingField(verbose_name='课前内容', default='这是课前的内容')

    in_img = models.ImageField(verbose_name='课中图片', upload_to='teach')
    in_inner = RichTextUploadingField(verbose_name='课中内容', default='这是课中的内容')

    after_img = models.ImageField(verbose_name='课后图片', upload_to='teach')
    after_inner = RichTextUploadingField(verbose_name='课后内容', default='这是课后的内容')

    class Meta:
        verbose_name = '4教学体系-3教育服务'
        verbose_name_plural = verbose_name


class Teach_Bt(models.Model):
    title = models.CharField(verbose_name='标题', default='学校简介', max_length=100)
    s_title = models.CharField(verbose_name='小标题', default='SCHOOL SITUATION', max_length=200)
    bt_carousel_img1 = models.ImageField(verbose_name='图片一', upload_to='carousel')
    bt_carousel_img2 = models.ImageField(verbose_name='图片二', upload_to='carousel')
    bt_carousel_img3 = models.ImageField(verbose_name='图片三', upload_to='carousel')

    class Meta:
        verbose_name = '4教学体系-4底部'
        verbose_name_plural = verbose_name


"""最新动态"""

class Tag(models.Model):
    title = models.CharField(verbose_name='关键字',max_length=20)
    class Meta:
        verbose_name = '5最新动态-1添加关键字'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title


class Dynamic(models.Model):
    articles = models.ForeignKey(Tag,on_delete=models.DO_NOTHING,verbose_name='关键字',null=True)
    title = models.CharField(verbose_name='新闻标题', max_length=50)
    category_choices = (('hd', '活动'), ('zx', '教育咨询'))
    category = models.CharField(verbose_name='新闻类别', choices=category_choices, default='hd', max_length=20)
    img = models.ImageField(verbose_name='新闻图片',upload_to='news',blank=True)
    add_time = models.DateTimeField(verbose_name='发布时间', default=datetime.now)
    content = RichTextUploadingField('新闻内容')

    class Meta:
        verbose_name = '5最新动态-2编辑新闻'
        verbose_name_plural = verbose_name


class Dynamic_Bt(models.Model):
    title = models.CharField(verbose_name='标题', default='学校简介', max_length=100)
    s_title = models.CharField(verbose_name='小标题', default='SCHOOL SITUATION', max_length=200)
    bt_carousel_img1 = models.ImageField(verbose_name='图片一', upload_to='carousel')
    bt_carousel_img2 = models.ImageField(verbose_name='图片二', upload_to='carousel')
    bt_carousel_img3 = models.ImageField(verbose_name='图片三', upload_to='carousel')

    class Meta:
        verbose_name = '5最新动态-3底部'
        verbose_name_plural = verbose_name

"""小南编程"""


# 小南编程
class Programming(models.Model):
    title = models.CharField(verbose_name='标题', default='小南编程', max_length=100)
    s_title1 = models.CharField(verbose_name='英文标题', default='PROGRAMMING PROGRAMMING', max_length=100)
    s_title2 = models.CharField(verbose_name='小标题', default='线下双师+先上课后辅导', max_length=400)

    program1_img = models.ImageField(verbose_name='图片', upload_to='programming')
    program1 = models.CharField(verbose_name='左边标题', default='学习编程有什么好处', max_length=100)
    program1_int = RichTextUploadingField(verbose_name='介绍', default='这是富文本编辑器')

    program2_img = models.ImageField(verbose_name='图片', upload_to='programming')
    program2 = models.CharField(verbose_name='右边标题', default='什么是编程', max_length=100)
    program2_int = RichTextUploadingField(verbose_name='介绍', default='这是富文本编辑器')

    class Meta:
        verbose_name = '6小南编程-1小南编程'
        verbose_name_plural = verbose_name


# 为什么选择小南编程
class Why_Choose(models.Model):
    title = models.CharField(verbose_name='标题', default='为什么选择小南编程', max_length=100)
    s_title1 = models.CharField(verbose_name='英文标题', default='WHY CHOOSE PROGRAMMING', max_length=100)
    s_title2 = models.CharField(verbose_name='小标题', default='线下双师+先上课后辅导', max_length=100)

    why1 = models.CharField(verbose_name='第一', default='激活孩子的学习热情，主动学习', max_length=100)
    why1_img = models.ImageField(verbose_name='图片', upload_to='programming')
    why1_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    why2 = models.CharField(verbose_name='第二', default='小南编程三大特色', max_length=100)
    why2_img = models.ImageField(verbose_name='图片', upload_to='programming')
    why2_int = RichTextUploadingField(verbose_name='介绍', default='这是')

    why3 = models.CharField(verbose_name='第三', default='小南编程三大优势', max_length=100,blank=True)
    why3_img = models.ImageField(verbose_name='图片', upload_to='programming',blank=True)
    why3_int = RichTextUploadingField(verbose_name='介绍', default='这是',blank=True)

    why4 = models.CharField(verbose_name='第四', default='CSTA课程设计指标', max_length=100,blank=True)
    why4_img = models.ImageField(verbose_name='图片', upload_to='programming',blank=True)
    why4_int = RichTextUploadingField(verbose_name='介绍', default='这是',blank=True)

    class Meta:
        verbose_name = '6小南编程-2为什么选择小南编程'
        verbose_name_plural = verbose_name


# 国内一流的教研团队
class First_Class(models.Model):
    title = models.CharField(verbose_name='标题', default='国内一流的教研团队', max_length=100)
    s_title1 = models.CharField(verbose_name='英文标题', default='FIRST CLASS TEACHING AND RESEARCH', max_length=100)
    s_title2 = models.CharField(verbose_name='小标题', default='打造专属于中国孩子的编程课', max_length=100)
    inner = RichTextUploadingField(verbose_name='简介',
                             default='基于“PIE”理念（项目教学/激发兴趣/鼓励探索） 进行编程教学大纲开发设计，倡导通过项目实战的方式，去激发学生的兴趣， 进一步提高学习的自我驱动力，获取新知识',
                             )

    class1 = models.CharField(verbose_name='姓名', default='XXX', max_length=100)
    class1_img = models.ImageField(verbose_name='图片', upload_to='programming')
    class1_int = models.CharField(verbose_name='介绍', default='这是人的介绍', max_length=400)

    class2 = models.CharField(verbose_name='姓名', default='YYY', max_length=100)
    class2_img = models.ImageField(verbose_name='图片', upload_to='programming')
    class2_int = models.CharField(verbose_name='介绍', default='这是人的介绍', max_length=400)

    class3 = models.CharField(verbose_name='姓名', default='ZZZ', max_length=100)
    class3_img = models.ImageField(verbose_name='图片', upload_to='programming')
    class3_int = models.CharField(verbose_name='介绍', default='这是人的介绍', max_length=400)

    class4 = models.CharField(verbose_name='姓名', default='AAA', max_length=100)
    class4_img = models.ImageField(verbose_name='图片', upload_to='programming')
    class4_int = models.CharField(verbose_name='介绍', default='这是人的介绍', max_length=400)

    class Meta:
        verbose_name = '6小南编程-3国内一流的教研团队'
        verbose_name_plural = verbose_name


# 国内一流的课程体系
class Class_Teach(models.Model):
    title = models.CharField(verbose_name='标题', default='国内一流的课程体系', max_length=100)
    s_title1 = models.CharField(verbose_name='英文标题', default='FIRST CLASS TEACHING', max_length=100)

    course_title1 = models.CharField(verbose_name='课程标题一', default='图形化编程课程', max_length=100)
    course1_img = models.ImageField(verbose_name='图片', upload_to='programming')
    course1 = models.CharField(verbose_name='小标题', default='零基础入门首选让编程像搭积木一样好', max_length=100)
    age1 = models.CharField(verbose_name='年龄段', default='6-9岁', max_length=20)
    inner1 = RichTextUploadingField(verbose_name='简介',
                                    default='知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识')

    course_title2 = models.CharField(verbose_name='课程标题二', default='python编程课', max_length=100)
    course2_img = models.ImageField(verbose_name='图片', upload_to='programming')
    course2 = models.CharField(verbose_name='小标题', default='零基础入门首选让编程像搭积木一样好', max_length=100)
    age2 = models.CharField(verbose_name='年龄段', default='6-8岁', max_length=20)
    inner2 = RichTextUploadingField(verbose_name='简介',
                                    default='知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识')

    course_title3 = models.CharField(verbose_name='课程标题三', default='C++编程课', max_length=100,blank=True)
    course3_img = models.ImageField(verbose_name='图片', upload_to='programming',blank=True)
    course3 = models.CharField(verbose_name='小标题', default='零基础入门首选让编程像搭积木一样好', max_length=100,blank=True)
    age3 = models.CharField(verbose_name='年龄段', default='6-8岁', max_length=20,blank=True)
    inner3 = RichTextUploadingField(verbose_name='简介',blank=True,
                                    default='知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识')

    course_title4 = models.CharField(verbose_name='课程标题四', default='竞赛培训', max_length=100,blank=True)
    course4_img = models.ImageField(verbose_name='图片', upload_to='programming',blank=True)
    course4 = models.CharField(verbose_name='小标题', default='零基础入门首选让编程像搭积木一样好', max_length=100,blank=True)
    age4 = models.CharField(verbose_name='年龄段', default='6-8岁', max_length=20,blank=True)
    inner4 = RichTextUploadingField(verbose_name='简介',blank=True,
                                    default='知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识')

    class Meta:
        verbose_name = '6小南编程-4国内一流的课程体系'
        verbose_name_plural = verbose_name


# 精选国内顶尖赛事，真正做到学以致用
class First_Match(models.Model):
    title = models.CharField(verbose_name='标题', default='精选国内顶尖赛事，真正做到学以致用', max_length=100)
    s_title1 = models.CharField(verbose_name='英文标题', default='FIRST CLASS TEACHING AND RESEARCH', max_length=100)

    category_choices = (('first', '第一组'), ('second', '第二组'),
                        ('third', '第三组'), ('fourth', '第四组'))
    carousel = models.ImageField(verbose_name='第几组', choices=category_choices, default='first',
                                 upload_to='programming')

    match_title1 = models.CharField(verbose_name='比赛标题一', default='全国青少年创意编程与智能设计大赛', max_length=100,blank=True)
    match1 = models.CharField(verbose_name='小标题', default='SCRATCH', max_length=100,blank=True)
    inner1 = RichTextUploadingField(verbose_name='简介',blank=True,
                                    default='知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识')
    match2 = models.CharField(verbose_name='小标题', default='PYTHON', max_length=100,blank=True)
    inner2 = RichTextUploadingField(verbose_name='简介',blank=True,
                                    default='知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识')

    match1_img = models.ImageField(verbose_name='图片', upload_to='programming',blank=True)
    match2_img = models.ImageField(verbose_name='图片', upload_to='programming',blank=True)
    match3_img = models.ImageField(verbose_name='图片', upload_to='programming',blank=True)

    class Meta:
        verbose_name = '6小南编程-5精选国内顶尖赛事'
        verbose_name_plural = verbose_name


class Program_Bt(models.Model):
    title = models.CharField(verbose_name='标题', default='学校简介', max_length=100)
    s_title = models.CharField(verbose_name='小标题', default='SCHOOL SITUATION', max_length=200)
    bt_carousel_img1 = models.ImageField(verbose_name='图片一', upload_to='carousel')
    bt_carousel_img2 = models.ImageField(verbose_name='图片二', upload_to='carousel')
    bt_carousel_img3 = models.ImageField(verbose_name='图片三', upload_to='carousel')

    class Meta:
        verbose_name = '6小南编程-6底部'
        verbose_name_plural = verbose_name


"""联系我们"""


class Contact(models.Model):
    title = models.CharField(verbose_name='标题', default='南西教育', max_length=100)
    address1 = models.CharField(verbose_name='地址1', default='地址：保利时代广场B栋12楼', max_length=100, blank=True)
    address2 = models.CharField(verbose_name='地址2', default='（杨家坪步行街正西50米）', max_length=100)
    telephone = models.CharField(verbose_name='电话', default='电话：南西教育总机（023）00000000', max_length=100)
    information = models.CharField(verbose_name='联系方式', default='南西教育，为解决孩子各项问题的转向联系方式', max_length=100)
    contact_number = models.CharField(verbose_name='联系电话', default='联系电话：（023）12345678', max_length=20)
    email = models.CharField(verbose_name='邮箱', default='邮箱: 12@qq.com', blank=True, max_length=50)
    wechat = models.CharField(verbose_name='微信号', default='微信号：censxc', max_length=100)
    contact_img = models.ImageField(verbose_name='背景图', upload_to='contact')

    class Meta:
        verbose_name = '7联系我们-1'
        verbose_name_plural = verbose_name

class Contact_Bt(models.Model):
    title = models.CharField(verbose_name='标题', default='学校简介', max_length=100)
    s_title = models.CharField(verbose_name='小标题', default='SCHOOL SITUATION', max_length=200)
    bt_carousel_img1 = models.ImageField(verbose_name='图片一', upload_to='carousel')
    bt_carousel_img2 = models.ImageField(verbose_name='图片二', upload_to='carousel')
    bt_carousel_img3 = models.ImageField(verbose_name='图片三', upload_to='carousel')

    class Meta:
        verbose_name = '7联系我们-2底部'
        verbose_name_plural = verbose_name
