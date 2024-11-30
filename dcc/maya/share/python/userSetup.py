from logging import getLogger

import maya.utils as utl

import menu
import preference
import remote_debug

logger = getLogger(__name__)


def main() -> None:
    preference.set_preference(logger)
    menu.create_menu(logger)
    remote_debug.connect_command_port(port_num="4435")


if __name__ == "__main__":
    utl.executeDeferred(main)
