 --- This readme file contains all information that is needed to make tests work, plus an overview of results I have.
Please read ALL the information below and do ALL the steps below. ---

Thanks and let's start!

# So, Tests results:
**This is a screenshot from my Command Line**
![image](https://user-images.githubusercontent.com/32220899/36077159-4a3d73d6-0f67-11e8-8e71-ece805feff02.png)

**All tests passed successfully. During running tests you will observe Browser will start and do all described scenarios one by one.**

# But before we receive these cool results we need to SETUP everything (Windows)
**Why Windows?**
I'm using it at home!

Glossary:

cmd* - command line (can be opened by shortcut 'winkey+r' Run->cmd)
![image](https://user-images.githubusercontent.com/32220899/36077489-d5f18ac6-0f6b-11e8-8eb0-cdb319741df2.png)

**1. Install Ruby http://rubyinstaller.org/downloads/ (take 32-bit installer)**
 - Make sure you check the option to “Add Ruby executables to your PATH.”
 
**2. Check that Ruby was installed**
 - cmd. Command "ruby -v" (Expected result example: "ruby 2.4.3p205 (2017-12-14 revision 61247) [i386-mingw32]" )
 - cmd. Command "gem -v" (Expected result example: "2.6.14" )
 
**3. Install Develompent Kit (download it from the step 1 source)**
 - Extract it to "c:/DevKit"
 - cmd. Run command "c:\DevKit>ruby dk.rb init"
 
**4. cmd. Run command "ruby dk.rb install"**
 
 Expected results:
 
 [INFO] Updating existing gem override for 'C:/Ruby24'
 
 [INFO] Installing 'C:/Ruby24/lib/ruby/site_ruby/devkit.rb'
 
**5. Install cucumber**
 - cmd. Run command "gem install cucumber"
 
**6. Install capybara**
 - cmd. Run command "gem install capybara"
 
**7. Install selenium webdriver**
 - cmd. Run command "gem install selenium-webdriver"
 
**8. Install rspec**
 - cmd. Run command "gem install rspec"
 
**9. Install Firefox browser https://www.mozilla.org/en-US/firefox/new/**

# Ok, right now we will do last preparations before running tests

**10. Download all the files from this repository to your local pc.
Copy folder "CucumberCapybaraTests" to your C:/ root**
Expected is - C:/CucumberCapybaraTests on your local system

**11. PATH contains path to geckodriver**
 - Go to Control Panel\System and Security\System. Press "Advanced System Settings". Press "Environment Variables..."
 - In System Variables find variable "Path". Add to the beginning of Variable value next : "C:\CucumberCapybaraTests;"
 - Save by pressing OK
 
 # Finally we can run the tests
 - cmd. Run command - cd "c:\CucumberCapybaraTests"
 - cmd. Run command - cucumber features\Login.feature
 
 **Enjoy watching tests running in browser :)**
