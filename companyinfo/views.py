#!/usr/bin/env python
# -*- coding:utf-8 -*-
# 常规模块的引入分为三部分，依次为：
# Python内置模块（如json、datetime）、第三方模块（如Django）、自己写的模块
import json

from django.core.paginator import Paginator  # 分页器
from django.shortcuts import HttpResponse
from django.shortcuts import render  # render是后端渲染用的方法
from django.views.generic import View

from .models import *


class IndexView(View):
    """首页"""

    def get(self, request):
        # try:
        carousels = Top_Carousel.objects.all()

        choose1 = Choose_us.objects.filter(choose='first')
        choose2 = Choose_us.objects.filter(choose='second')
        choose3 = Choose_us.objects.filter(choose='third')
        tea_advs = Teacher_select.objects.all()
        guanggao = GuangGao.objects.first()
        six_teachs = Six_Teach.objects.all()
        teacher1 = Nancy_Teacher.objects.filter(carousel='first')
        teacher2 = Nancy_Teacher.objects.filter(carousel='second')
        teacher3 = Nancy_Teacher.objects.filter(carousel='third')
        teacher4 = Nancy_Teacher.objects.filter(carousel='fourth')
        teacher5 = Nancy_Teacher.objects.filter(carousel='fifth')
        teacher6 = Nancy_Teacher.objects.filter(carousel='sixth')

        carousel1 = Reading_Life.objects.filter(carousel='first')
        carousel2 = Reading_Life.objects.filter(carousel='second')
        carousel3 = Reading_Life.objects.filter(carousel='third')
        carousel4 = Reading_Life.objects.filter(carousel='fourth')
        carousel5 = Reading_Life.objects.filter(carousel='fifth')

        accompanys = Accompanying.objects.all()
        bt_carousel1 = Bottom_carousel.objects.filter(carousel='first')
        bt_carousel2 = Bottom_carousel.objects.filter(carousel='second')
        bt_carousel3 = Bottom_carousel.objects.filter(carousel='third')
        bt_carousel4 = Bottom_carousel.objects.filter(carousel='fourth')
        bt_carousel5 = Bottom_carousel.objects.filter(carousel='fifth')

        bt_navs = Bt_Nav.objects.all()

        context = {
            'carousels': carousels,
            'choose1': choose1,
            'choose2': choose2,
            'choose3': choose3,
            'six_teachs': six_teachs,
            'guanggao':guanggao,
            'tea_advs': tea_advs,
            'teacher1': teacher1,
            'teacher2': teacher2,
            'teacher3': teacher3,
            'teacher4': teacher4,
            'teacher5': teacher5,
            'teacher6': teacher6,
            'carousel1': carousel1,
            'carousel2': carousel2,
            'carousel3': carousel3,
            'carousel4': carousel4,
            'carousel5': carousel5,
            'accompanys': accompanys,
            'bt_carousel1': bt_carousel1,
            'bt_carousel2': bt_carousel2,
            'bt_carousel3': bt_carousel3,
            'bt_carousel4': bt_carousel4,
            'bt_carousel5': bt_carousel5,
            'bt_navs': bt_navs
        }
        print('发起了get请求')
        return render(request, 'index.html', context)

    # except BaseException as e:
    #     print('请求失败')
    #     return render(request, 'index.html', {})

    def post(self, request):
        # 获取提交的信息
        print('发起了post请求')
        name = request.POST.get('name', '')
        phone = request.POST.get('phone', '')
        school = request.POST.get('school', '')
        age = request.POST.get('age', '')
        print(name, phone, school, age)
        try:
            new_message = Advertising1()
            new_message.name = name
            new_message.phone = phone
            new_message.school = school
            new_message.age = age
            new_message.save()
            return HttpResponse(json.dumps({"status": "success"}), content_type='application/json')
        except BaseException as e:
            print('请求失败')
            return HttpResponse(json.dumps({"status": "failed"}), content_type='application/json')


class AboutView(View):
    """关于南西"""

    def get(self, request):
        try:
            carousels = Top_Carousel.objects.all()
            abouts = About.objects.all()
            enterprises = Enterprise.objects.all()
            bt_carousel1 = About_Bt.objects.all()
            bt_navs = Bt_Nav.objects.all()
            context = {
                'carousels': carousels,
                'abouts': abouts,
                'enterprises': enterprises,
                'bt_carousel1': bt_carousel1,
                'bt_navs': bt_navs
            }
            return render(request, 'gynx.html', context)
        except BaseException as e:
            print('请求失败')
            return render(request, 'gynx.html', {})


class CourseView(View):
    """课程介绍"""

    def get(self, request):
        try:
            carousels = Top_Carousel.objects.all()
            courses = Course.objects.all()
            customs = Custom.objects.all()
            interest1 = Interest.objects.filter(carousel='primary')
            interest2 = Interest.objects.filter(carousel='middle')
            sixsteps = SixStep.objects.all()
            bt_carousel1 = Course_Bt.objects.all()
            bt_navs = Bt_Nav.objects.all()
            context = {
                'carousels': carousels,
                'courses': courses,
                'customs': customs,
                'interest1': interest1,
                'interest2': interest2,
                'sixsteps': sixsteps,
                'bt_carousel1': bt_carousel1,
                'bt_navs': bt_navs

            }
            return render(request, 'kcjs.html', context)
        except BaseException as e:
            print('请求失败')
            return render(request, 'kcjs.html', {})


class TeachView(View):
    """教学体系"""

    def get(self, request):
        try:
            carousels = Top_Carousel.objects.all()
            choose_nancys = Choose_Nancy.objects.all()
            educations = Education.objects.all()
            services = Service.objects.all()
            bt_carousel1 = Teach_Bt.objects.all()
            bt_navs = Bt_Nav.objects.all()
            context = {
                'carousels': carousels,
                'bt_carousel1': bt_carousel1,
                'choose_nancys': choose_nancys,
                'educations': educations,
                'services': services,
                'bt_navs': bt_navs
            }
            return render(request, 'jxtx.html', context)
        except BaseException as e:
            print('请求失败')
            return render(request, 'jxtx.html', {})


class ProgramingView(View):
    """小南编程"""

    def get(self, request):
        try:
            carousels = Top_Carousel.objects.all()
            programmings = Programming.objects.all()
            guanggao = GuangGao.objects.first()
            why_chooses = Why_Choose.objects.all()
            tea_advs = Teacher_select.objects.all()
            first_class = First_Class.objects.all()
            class_teach = Class_Teach.objects.all()
            first_match1 = First_Match.objects.filter(carousel='first')
            first_match2 = First_Match.objects.filter(carousel='second')
            first_match3 = First_Match.objects.filter(carousel='third')
            first_match4 = First_Match.objects.filter(carousel='fourth')
            bt_carousel1 = Program_Bt.objects.all()
            advertising = Advertising2.objects.all()
            bt_navs = Bt_Nav.objects.all()
            context = {
                'carousels': carousels,
                'guanggao':guanggao,
                'programmings': programmings,
                'why_chooses': why_chooses,
                'advertising':advertising,
                'tea_advs': tea_advs,
                'first_class': first_class,
                'class_teach': class_teach,
                'first_match1': first_match1,
                'first_match2': first_match2,
                'first_match3': first_match3,
                'first_match4': first_match4,
                'bt_carousel1': bt_carousel1,
                'bt_navs': bt_navs
            }
            return render(request, 'xnbc.html', context)
        except BaseException as e:
            print('请求失败')
            return render(request, 'xnbc.html', {})

    def post(self, request):
        # 获取提交的信息
        print('发起post请求')
        name = request.POST.get('name', '')
        phone = request.POST.get('phone', '')
        age = request.POST.get('age', '')
        print(name, phone, age)
        try:
            new_message = Advertising2()
            new_message.name = name
            new_message.phone = phone
            new_message.age = age
            new_message.save()
            return HttpResponse(json.dumps({"status": "success"}), content_type='application/json')
        except BaseException as e:
            return HttpResponse(json.dumps({"status": "failed"}), content_type='application/json')


class DynamicView(View):
    def get(self, request):
        try:
            dynamics = Dynamic.objects.all()

            # 获取动态属性
            category = request.GET.get('cat')
            categorys = {'hd': 'hd', 'zx': 'zx'}
            if category in categorys.keys():
                all_news = Dynamic.objects.filter(category=category).order_by('-add_time')
            else:
                category = 'hd'
                all_news = Dynamic.objects.filter(category=category).order_by('-add_time')
            guanggao = GuangGao.objects.first()
            tags = Tag.objects.all()  # 所有的标签
            # 获取关键字
            tag = request.GET.get('tag')
            articles = []
            if tag != None:
                name = Tag.objects.filter(title=tag)
                all_news = Dynamic.objects.filter(articles=name[0])

            # 分页
            paginator = Paginator(all_news, 5)
            page = request.GET.get('page')
            try:
                all_news = paginator.page(page)
            except BaseException as e:
                all_news = paginator.page(1)
            # 轮播图部分
            carousels = Top_Carousel.objects.all()
            bt_carousel1 = Dynamic_Bt.objects.all()

            bt_navs = Bt_Nav.objects.all()
            context = {
                'carousels': carousels,
                'dynamics': dynamics,
                'category': category,
                'guanggao':guanggao,
                'tags': tags,
                'articles': articles,
                'all_news': all_news,
                'bt_carousel1': bt_carousel1,
                'bt_navs': bt_navs
            }

            return render(request, 'zxdt.html', context)
        except BaseException as e:
            print('请求失败')
            return render(request, 'zxdt.html', {})


class NewsDetailView(View):
    """动态详情"""

    def get(self, request, pk):
        try:
            carousels = Top_Carousel.objects.all()
            category = request.GET.get('cat', 'all')
            all_news = Dynamic.objects.all()
            bt_navs = Bt_Nav.objects.all()
            # 当前新闻
            category_name = '新闻中心'
            current_new = pre_new = next_new = Dynamic()
            try:
                current_new = Dynamic.objects.get(id=pk)
                category_name = current_new.get_category_display()
                category = current_new.category

                # 处理上一篇和下一篇
                news = Dynamic.objects.filter(category=current_new.category).order_by("id")
                pre_new = news.filter(id__lt=current_new.id).order_by("-id").first()  # 上一篇
                next_new = news.filter(id__gt=current_new.id).first()  # 下一篇

            except BaseException as e:
                pass

            context = {
                'carousels': carousels,
                'all_news': all_news,
                'current_new': current_new,
                'category_name': category_name,
                'category': category,
                'pre_new': pre_new,
                'next_new': next_new,
                'bt_navs': bt_navs
            }
            return render(request, 'dynamic.html', context)
        except BaseException as e:
            print('请求失败')
            return render(request, 'dynamic.html', {})


class ContactView(View):
    """联系我们"""

    def get(self, request):
        try:
            carousels = Top_Carousel.objects.all()
            contacts = Contact.objects.all()
            bt_carousel1 = Contact_Bt.objects.all()
            bt_navs = Bt_Nav.objects.all()
            context = {
                'carousels': carousels,
                'contacts': contacts,
                'bt_carousel1': bt_carousel1,
                'bt_navs': bt_navs
            }
            return render(request, 'lxwm.html', context)
        except BaseException as e:
            print('请求失败')
            return render(request, 'lxwm.html', {})
