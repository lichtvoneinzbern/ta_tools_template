class CustomException(Exception):
    def __init__(self, arg="") -> None:
        self.arg = arg,


class UnsavedScene(CustomException):
    def __str__(self) -> str:
        return "The scene has not yet been saved. Please save the scene before executing."


class UnknownOS(CustomException):
    def __str__(self) -> str:
        return f"{self.arg} : is Unknown OS."
