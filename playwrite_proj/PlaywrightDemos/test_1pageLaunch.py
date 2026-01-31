The default fixture in playwrite is 
        playwright 
        
import statments in order to get the help when hover on object
        from playwright.sync_api import Page
        
method-1 uses the playwright fixture inorder to get
            a. chromium engine for microsoft edge and for chrome
                        browser=playwright.chromium.launch(headless=False)
            by keeping headless=False ,at the time of execution of testcase it will help in opening
            the browser
            
            b. a new context in order to get rid of the chache
                        new_contest=browser.new_context()
                        
            c. in order to open the new page 
                        page=context.new_page()
                        
            d. page.goto("https://rahulshettyacademy.com")
            
method-2 uses the Page class
            from playwright.sync_api import Page
            
            def test_one(page:Page)
                page.goto("url link")


                        
             
                        
                