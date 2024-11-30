import maya.cmds as cmds


def connect_command_port(port_num: str = "4435") -> None:
    """
    Mayaで指定されたポート番号を使用してコマンドポートを接続

    Args:
        port_num (str): 使用するコマンドポートのポート番号。デフォルトは "4435"（Maya 2024用）
        
    Examples:
        connect_command_port("4434")  # Maya 2023
        connect_command_port("4435")  # Maya 2024
        connect_command_port("4436")  # Maya 2025

    References:
        https://qiita.com/paty-6991/items/cdb59416761e9f35008f
    """
    if not cmds.commandPort(f":{port_num}", q=True):
        cmds.commandPort(n=f":{port_num}")
