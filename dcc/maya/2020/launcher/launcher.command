#!/bin/sh

# =============================
# Date  :2021/10/13
# Author:Licht von Einzbern
# Change:2023/11/02
# =============================

# create directory
                                    # example
cd `dirname $0`                     # cd          = /Users/<user_name>/ta_tools_template/dcc/maya/2020/launcher
cd ..                               # cd          = /Users/<user_name>/ta_tools_template/dcc/maya/2020
MAYA_VER=`pwd`                      # MAYA_VER    = /Users/<user_name>/ta_tools_template/dcc/maya/2020
cd ..                               # cd          = /Users/<user_name>/ta_tools_template/dcc/maya
MAYA_VER=${MAYA_VER#`pwd`}          # MAYA_VER    = /2020
MAYA_VER=${MAYA_VER#"/"}            # MAYA_VER    = 2020
cd `dirname $0`                     # cd          = /Users/<user_name>/ta_tools_template/dcc/maya/2020/launcher
cd ..                               # cd          = /Users/<user_name>/ta_tools_template/dcc/maya/2020
cd ..                               # cd          = /Users/<user_name>/ta_tools_template/dcc/maya
INHOUSE_DIR=`pwd`                   # INHOUSE_DIR = /Users/<user_name>/ta_tools_template/dcc/maya
THIRD_DIR=$INHOUSE_DIR/third-party  # THIRD_DIR   = /Users/<user_name>/ta_tools_template/dcc/maya/third-party

# export MAYA_UI_LANGUAGE=ja_JP
export MAYA_UI_LANGUAGE=en_US
export MAYA_PYTHON_VERSION=3
# export MAYA_ENABLE_LEGACY_VIEWPORT=1
# export MAYA_MODULE_PATH=$MAYA_MODULE_PATH;$INHOUSE_DIR/modules
# export MAYA_PLUG_IN_PATH=$MAYA_PLUG_IN_PATH;$INHOUSE_DIR/plug-ins
export MAYA_SCRIPT_PATH=$MAYA_SCRIPT_PATH:$INHOUSE_DIR/share/scripts:$THIRD_DIR/share/scripts
# export MAYA_PRESET_PATH=$MAYA_PRESET_PATH;$INHOUSE_DIR/presets
export XBMLANGPATH=$XBMLANGPATH:$INHOUSE_DIR/share/icons/icon-assets
# export MAYA_MODULE_PATH=$MAYA_MODULE_PATH;$INHOUSE_DIR/modules
export PYTHONPATH=$PYTHONPATH:$INHOUSE_DIR/share/python
# export PYTHONPATH=$PYTHONPATH:$INHOUSE_DIR/python:$INHOUSE_DIR/python/site-packages

# execute
/Applications/Autodesk/maya2020/maya.app/Contents/bin/maya
