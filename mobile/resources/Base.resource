***Settings***
Documentation       Arquivo principal do projeto robot

Library         AppiumLibrary

***Keywords***

Start session

    Open Application            http://localhost:4723
    ...                         platformName=Android
    ...                         automationName=UIAutomator2
    ...                         deviceName=Emulator
    ...                         udid=emulator-5554
    ...                         app=${EXCDIR}/app/smartbit-beta.apk
    ...                         autoGrantPermissions=true