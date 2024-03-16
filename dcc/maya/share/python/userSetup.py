from logging import getLogger

import menu

logger = getLogger(__name__)


def main() -> None:
    set_preference()
    create_custom_menu()


def set_preference() -> None:
    """
    プリファレンスを設定
    """

    import maya.cmds as cmds

    logger.info("========== Set Preferences ========== ")

    # ユニット単位：cm
    cmds.optionVar(sv=["workingUnitLinearDefault", "cm"])
    logger.info("Unit : cm")

    # FPS設定：30FPS
    cmds.optionVar(sv=["workingUnitTimeDefault", "ntsc"])
    logger.info("Time : 30fps")

    logger.info("========== =============== ========== ")


def create_custom_menu() -> None:
    """
    ツールメニューを作成
    """
    menu.main()


if __name__ == "__main__":
    main()
