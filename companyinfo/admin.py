#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 后台管理系统，注册model

from django.contrib import admin

from .models import *

"""首页部分"""


# 顶部轮播图
class CarouselAdmin1(admin.ModelAdmin):
    list_display_links = list_display = ['number', 'url', 'carousel_figure1', 'carousel_figure2', 'carousel_figure3',
                                         'carousel_figure4',
                                         'carousel_figure5']


# 选择我们
class Choose_usAdmin(admin.ModelAdmin):
    list_display_links = list_display = ['title', 's_title', 'choose']
    list_filter = ['choose']


# 点击咨询
class Advertising1Admin(admin.ModelAdmin):
    list_display_links = list_display = ['name', 'phone', 'school', 'age', 'is_handle']
    list_filter = ['is_handle']
    readonly_fields = ['name', 'phone', 'school', 'age']


# 教师选拔-广告背景-广告链接
class Adv_BgAdmin(admin.ModelAdmin):
    list_display_links = list_display = ['title', 's_title', 'urls']


# 南西六步教学法
class Six_teachAdmin(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'six_teach1', 'six_teach3', 'six_teach5', 'six_teach7', 'six_teach9',
                                         'six_teach11']


# 南西师资
class Nancy_TeacherAdmin(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'carousel', 'name1', 'name2', 'name3', 'name4', 'name5', 'name6']
    list_filter = ['carousel']


# 读书点亮生活
class Reading_LifeAdmin(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'carousel', 'course1_int', 'course2_int', 'course3_int']
    list_filter = ['carousel']


# 陪伴式教育
class AccompanyingAdmin(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'accompany1', 'accompany2', 'accompany3', 'accompany4', 'accompany5',
                                         'accompany6']


# 底部轮播图
class CarouselAdmin2(admin.ModelAdmin):
    list_display = ['title', 'bt_carousel_img1', 'bt_carousel_img2', 'bt_carousel_img3', 'carousel']
    list_filter = ['carousel']


# 底部导航栏
class Bt_NavAdmin(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'address', 'phone', 'record1', 'record2', 'imprimatur']
    list_filter = ['title']


"""关于南西"""


# 学校简介-校长致辞
class AboutAdmin1(admin.ModelAdmin):
    list_display_links = list_display = ['title1', 'sltuation', 'title2']


# 企业文化
class AboutAdmin2(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'corpcrate1', 'corpcrate3', 'corpcrate5', 'corpcrate7', 'corpcrate7']


class Admin2(admin.ModelAdmin):
    list_display_links = list_display = ['title', 's_title', 'bt_carousel_img1', 'bt_carousel_img2', 'bt_carousel_img3']


"""课程介绍"""


# 科目
class CourseAdmin1(admin.ModelAdmin):
    list_display_links = list_display = ['title1', 'course1', 'course2', 'course3', 'course4', 'course5']


# 定制一对一
class CourseAdmin2(admin.ModelAdmin):
    list_display_links = list_display = ['title1', 'course1', 'course2', 'course3', 'course4', 'course5', 'course6']


# 趣味课堂
class CourseAdmin3(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'course1', 'course2', 'course3', 'carousel']
    list_filter = ['carousel']


# 六步教学法
class CourseAdmin4(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'first1', 'second1', 'third1', 'fourth1', 'fifth1', 'sixth1']


class Admin3(admin.ModelAdmin):
    list_display_links = list_display = ['title', 's_title', 'bt_carousel_img1', 'bt_carousel_img2', 'bt_carousel_img3']


"""教学体系"""


# 选择南西
class TeachAdmin1(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'first1', 'second1', 'third1', 'fourth1', 'fifth1']


# 教育体系
class TeachAdmin2(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'first1', 'second1', 'third1', 'fourth1', 'fifth1', ]


# 教育服务
class TeachAdmin3(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'before_inner', 'in_inner', 'after_inner']


class Admin4(admin.ModelAdmin):
    list_display_links = list_display = ['title', 's_title', 'bt_carousel_img1', 'bt_carousel_img2', 'bt_carousel_img3']


"""最新动态"""


class DynamicAdmin1(admin.ModelAdmin):
    list_display_links = list_display = ['id', 'title']


class DynamicAdmin2(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'articles', 'category', 'add_time', ]
    list_filter = ['articles']  # 定义可筛选的属性
    search_fields = ['title']  # 定义可搜索的属性


class Admin5(admin.ModelAdmin):
    list_display_links = list_display = ['title', 's_title', 'bt_carousel_img1', 'bt_carousel_img2', 'bt_carousel_img3']


"""小南编程"""


# 小南编程
class ProgrammingAdmin1(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'program1', 'program2']


# 点击领取
class Advertising2Admin(admin.ModelAdmin):
    list_display_links = list_display = ['name', 'phone', 'age', 'is_handle']
    list_filter = ['is_handle']
    readonly_fields = ['name', 'phone', 'age']


# 为什么选择小南编程
class ProgrammingAdmin2(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'why1', 'why2', 'why3', 'why4']


# 国内一流的教研团队
class ProgrammingAdmin3(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'class1', 'class2', 'class3', 'class4']


# 国内一流的课程体系
class ProgrammingAdmin4(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'course_title1', 'course_title2', 'course_title3', 'course_title4']


# 精选国内顶尖赛事，真正做到学以致用
class ProgrammingAdmin5(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'match_title1', 'match1', 'match2', 'carousel']
    list_filter = ['carousel']


class Admin6(admin.ModelAdmin):
    list_display_links = list_display = ['title', 's_title', 'bt_carousel_img1', 'bt_carousel_img2', 'bt_carousel_img3']


"""联系我们"""


class ContactAdmin(admin.ModelAdmin):
    list_display_links = list_display = ['title', 'address1', 'address2', 'telephone', 'information', 'contact_number',
                                         'email', 'wechat',
                                         'contact_img']


class Admin7(admin.ModelAdmin):
    list_display_links = list_display = ['title', 's_title', 'bt_carousel_img1', 'bt_carousel_img2', 'bt_carousel_img3']


class GuangGaoAdmin(admin.ModelAdmin):
    list_display_links = list_display = ['zxdt_img', 'id', 'img1', 'advertising_img1', 'img2', 'advertising_img2']


# 首页
admin.site.register(Top_Carousel, CarouselAdmin1)
admin.site.register(Choose_us, Choose_usAdmin)
admin.site.register(Teacher_select, Adv_BgAdmin)  # 广告部分
admin.site.register(Advertising1, Advertising1Admin)
admin.site.register(Six_Teach, Six_teachAdmin)
admin.site.register(Nancy_Teacher, Nancy_TeacherAdmin)
admin.site.register(Reading_Life, Reading_LifeAdmin)
admin.site.register(Accompanying, AccompanyingAdmin)
admin.site.register(Bottom_carousel, CarouselAdmin2)
admin.site.register(Bt_Nav, Bt_NavAdmin)

# 关于南西
admin.site.register(About, AboutAdmin1)
admin.site.register(Enterprise, AboutAdmin2)
admin.site.register(About_Bt, Admin2)
# 课程介绍
admin.site.register(Course, CourseAdmin1)
admin.site.register(Custom, CourseAdmin2)
admin.site.register(Interest, CourseAdmin3)
admin.site.register(SixStep, CourseAdmin4)
admin.site.register(Course_Bt, Admin3)
# 教学体系
admin.site.register(Choose_Nancy, TeachAdmin1)
admin.site.register(Education, TeachAdmin2)
admin.site.register(Service, TeachAdmin3)
admin.site.register(Teach_Bt, Admin4)
# 最新动态
admin.site.register(Tag, DynamicAdmin1)
admin.site.register(Dynamic, DynamicAdmin2)
admin.site.register(Dynamic_Bt, Admin5)
# 小南编程
admin.site.register(Programming, ProgrammingAdmin1)
admin.site.register(Advertising2, Advertising2Admin)
admin.site.register(Why_Choose, ProgrammingAdmin2)
admin.site.register(First_Class, ProgrammingAdmin3)
admin.site.register(Class_Teach, ProgrammingAdmin4)
admin.site.register(First_Match, ProgrammingAdmin5)
admin.site.register(Program_Bt, Admin6)
# 联系我们
admin.site.register(Contact, ContactAdmin)
admin.site.register(Contact_Bt, Admin7)

admin.site.register(GuangGao, GuangGaoAdmin)
