from robot.api.deco import keyword, library


@library
class Shop():
    def __init__(self):
        print("from constructor")

    @keyword
    def hello_world(self):
        print("hai welcome !!!!!")