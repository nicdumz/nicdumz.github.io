#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages

setup(
    name='nicdumz-website-tools',
    version='0.0.1',
    license='MIT',
    packages=find_packages(),
    install_requires=[
        'pygments >= 1.5',
        'blogofile @ git+https://github.com/nicdumz/blogofile.git@plugins#egg=blogofile-0.8.4',
        'blogofile_blog @ git+https://github.com/nicdumz/blogofile_blog.git#egg=blogofile_blog-0.8.4',
        ],
    entry_points="""
        [pygments.styles]
        base16flatdark=base16_flat.dark:base16_flat_dark
        base16flatlight=base16_flat.light:base16_flat_light
    """,
    zip_safe=False,
)
