import logging

import maya.cmds as cmds


def set_preference(logger: logging.Logger) -> None:
    """
    プリファレンスを設定
    """

    logger.info("========== Set Preferences ========== ")

    # ユニット単位：cm
    cmds.optionVar(sv=["workingUnitLinearDefault", "cm"])
    logger.info("Unit : cm")

    # FPS設定：30FPS
    cmds.optionVar(sv=["workingUnitTimeDefault", "ntsc"])
    logger.info("Time : 30fps")

    logger.info("========== =============== ========== ")
