#!/usr/bin/env python
# -*- coding: utf-8 -*-
import pygame
from pygame.locals import *
import sys

SCREEN_SIZE = (640, 480)

pygame.init()
screen = pygame.display.set_mode(SCREEN_SIZE)
pygame.display.set_caption("コーガくんにパンツを履かせよう!!")

backImg = pygame.image.load("test.png").convert()
pythonImg = pygame.image.load("test2.png").convert_alpha()

cur_pos = (0,0)    # パンツの位置
pythons_pos = []   # 位置リスト

while True:
    screen.blit(backImg, (0,0))
    
    # マウスクリックでパンツ貼り付け
    mouse_pressed = pygame.mouse.get_pressed()
    if mouse_pressed[0]:  # 左クリック
        x, y = pygame.mouse.get_pos()
        x -= pythonImg.get_width() / 2
        y -= pythonImg.get_height() / 2
        pythons_pos.append((x,y))  # re位置を追加
    
    # マウス移動でパンツを移動
    x, y = pygame.mouse.get_pos()
    x -= pythonImg.get_width() / 2
    y -= pythonImg.get_height() / 2
    cur_pos = (x,y)
    
    # パンツを表示
    screen.blit(pythonImg, cur_pos)
    for i, j in pythons_pos:
        screen.blit(pythonImg, (i,j))
    pygame.display.update()
    
    for event in pygame.event.get():
        if event.type == QUIT:
            sys.exit()

