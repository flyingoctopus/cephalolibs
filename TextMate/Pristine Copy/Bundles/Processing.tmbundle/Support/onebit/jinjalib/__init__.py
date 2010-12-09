# -*- coding: utf-8 -*-
"""
    jinja2
    ~~~~~~

    Jinja2 is a template engine written in pure Python.  It provides a
    Django inspired non-XML syntax but supports inline expressions and
    an optional sandboxed environment.

    Nutshell
    --------

    Here a small example of a Jinja2 template::

        {% extends 'base.html' %}
        {% block title %}Memberlist{% endblock %}
        {% block content %}
          <ul>
          {% for user in users %}
            <li><a href="{{ user.url }}">{{ user.username }}</a></li>
          {% endfor %}
          </ul>
        {% endblock %}


    :copyright: (c) 2009 by the Jinja Team.
    :license: BSD, see LICENSE for more details.
"""
__docformat__ = 'restructuredtext en'
try:
    __version__ = __import__('pkg_resources') \
        .get_distribution('Jinja2').version
except:
    __version__ = 'unknown'

# high level interface
from jinjalib.environment import Environment, Template

# loaders
from jinjalib.loaders import BaseLoader, FileSystemLoader, PackageLoader, \
     DictLoader, FunctionLoader, PrefixLoader, ChoiceLoader

# bytecode caches
from jinjalib.bccache import BytecodeCache, FileSystemBytecodeCache, \
     MemcachedBytecodeCache

# undefined types
from jinjalib.runtime import Undefined, DebugUndefined, StrictUndefined

# exceptions
from jinjalib.exceptions import TemplateError, UndefinedError, \
     TemplateNotFound, TemplateSyntaxError, TemplateAssertionError

# decorators and public utilities
from jinjalib.filters import environmentfilter, contextfilter
from jinjalib.utils import Markup, escape, clear_caches, \
     environmentfunction, contextfunction, is_undefined

__all__ = [
    'Environment', 'Template', 'BaseLoader', 'FileSystemLoader',
    'PackageLoader', 'DictLoader', 'FunctionLoader', 'PrefixLoader',
    'ChoiceLoader', 'BytecodeCache', 'FileSystemBytecodeCache',
    'MemcachedBytecodeCache', 'Undefined', 'DebugUndefined',
    'StrictUndefined', 'TemplateError', 'UndefinedError', 'TemplateNotFound',
    'TemplateSyntaxError', 'TemplateAssertionError', 'environmentfilter',
    'contextfilter', 'Markup', 'escape', 'environmentfunction',
    'contextfunction', 'clear_caches', 'is_undefined'
]
