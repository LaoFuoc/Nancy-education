#encoding: utf-8
from django import template

# 创建模板库对象
register = template.Library()

# 过滤器函数
# def mycut(value,mystr):
#     return value.replace(mystr)
#
# # 将函数注册到模板库中
# register.filter("mycut",mycut)

@register.filter(name='mycut')
def mycut(value):

    return value.replace('"',"'")
