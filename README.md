# DOSimple

### The DOS emulator you can fit on a floppy disk

DOSimple is a _DOS emulator_ so simple that you can fit it on a **FLOPPY DISK**, made with the help of **_OTVDM_** _v0.8.1_. 
##### (no mouse support)
#### Note: NOT EVERY APP THAT I TESTED WORKS. I HAVE NO EXPECTATIONS THAT THE APPS THAT YOU RUN WILL WORK!

## How does it work?

It is just a bunch of BAT and JS running the dos.exe (OTVDM) file with the required arguments (see [src](https://github.com/msuru-coder-notgamer/DOSimple/tree/main/src)). OTVDM does the rest from there.
Want a more detailed description? Ok, here you go...

The **Start** shortcut opens the src folder and runs **start.vbs**. What **start.vbs** does is it runs the **getLoc.bat** file which gets the location of the current directory. This is passed down with arguments. After that it runs the **choose.vbs** file and opens up a _choose file dialog_ and chooses the file. If no file is chosen then it pops up a message saying "Error, no file selected". Finally it runs **exec.bat** which is what finally runs **dos.exe**.

## How did I make this?
I grabbed the necessary files for **OTVDM** to run **_DOS apps_**, which were:
- otvdm.exe (now renamed to dos.exe)
- libwine.dll
- krnl386.exe16
- vm86.dll
- user.exe16
- keyboard.drv16
- gdi.exe16

Then i used **_BAT and JS_** to make it into a simple source-code-only application.
