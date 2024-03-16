import subprocess
import platform
import os

import maya.cmds as cmds

from . import error


def get_scene_path() -> str:
    """
    現在開いているシーンのパスを取得

    Returns:
        パスを文字列で返却(シーンが開かれていない場合は空白になる)
    """
    return os.path.dirname(cmds.file(q=True, sn=True))


def open_in_explorer(path: str) -> None:
    """
    フォルダパスをエクスプローラで開く

    Args:
        path:シーンファイルのパス
    """
    subprocess.Popen(["start", f"{path}"], shell=True)


def open_in_finder(path: str) -> None:
    """
    フォルダパスをファインダー開く

    Args:
        path:シーンファイルのパス
    """
    subprocess.call(["open", path])


def execute():
    os_category = platform.system()
    path = get_scene_path()

    if path == "":
        raise error.UnsavedScene()

    if os_category == "Windows":
        open_in_explorer(path)
    elif os_category == "Darwin":
        open_in_finder(path)
    else:
        raise error.UnknownOS(os_category)
