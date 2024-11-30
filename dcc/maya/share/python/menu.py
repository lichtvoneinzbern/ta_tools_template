import logging

import maya.cmds as cmds
import maya.mel as mel

CUSTOM_MENU_NAME = "CustomTools"


def create_menu(logger: logging.Logger) -> None:
    """
    メニューを作成
    """

    g_main_window = mel.eval('$temp=$gMainWindow')

    if cmds.menu(CUSTOM_MENU_NAME, q=True, ex=True):
        cmds.menu(CUSTOM_MENU_NAME, e=True, dai=True, to=True)

    cmds.menu(CUSTOM_MENU_NAME, l=CUSTOM_MENU_NAME.capitalize(), p=g_main_window, to=True)

    set_menu_general()
    logger.info("=== General Menu Created ===")

    cmds.setParent('..', menu=True)
    cmds.setParent('..')
    cmds.setParent(CUSTOM_MENU_NAME, menu=True)


def set_menu_general() -> None:
    """
    一般ツールのサブメニューを作成
    """
    cmds.menuItem(l=u"General", sm=True, to=True, p=CUSTOM_MENU_NAME)
    cmds.menuItem(l=u"Open Scene Path", c='from general.open_scene_path import main; main.execute()')
