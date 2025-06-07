from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class Shope:
    def __init__(self):
        self.libs= BuiltIn().get_library_instance('SeleniumLibrary')

    @keyword
    def selecting_products(self,selected_products):
        count=1
        elements=self.libs.get_webelements("//app-card-list[@class='row']/app-card/div/*[2]/h4")
        for each in elements:
            # print(each.text)
            if each.text in selected_products:
                self.libs.click_button("//app-card-list[@class='row']/app-card["+str(count)+"]/div/*[3]/button")
            count=count+1
