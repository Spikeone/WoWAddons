# Installation Guide
These guides should explain on how to install the various parts of the Addon-Manager.
Please read all steps!

# Addon-Manager
## Setup Addon
 1. Navigate to `\Interface\FrameXML`
 2. Open the `FrameXML.toc` with any text editor (e.g. Notepad++)
 3. Depending on the version you have downloaded, the file may differ slightly, find the line `Interface\FrameXML\QATests\QAMenu.xml`
 4. If below that line is more content, e.g. `Interface\FrameXML\EsUI\EsUI.xml` or you can find the line `# Custom AddOns, add them here (add # to unload, remove it to load)` or even both - then put the line `Interface\FrameXML\_AddonManager\_AddonManager.xml` below the "# Custom AddOns, ..." line but above the "EsUI" line.
 5. Save the file
 6. Copy the folder `_AddonManager` into `\Interface\FrameXML`
 
## Example:
Old:
```
... (other content)
Interface\FrameXML\QATests\QAMenu.xml

# Custom AddOns, add them here (add # to unload, remove it to load)
Interface\FrameXML\EsUI\EsUI.xml
Interface\FrameXML\EsUI\EsUI_Bindings.xml

... (other content)
```
New:
```
... (other content)
Interface\FrameXML\QATests\QAMenu.xml

# Custom AddOns, add them here (add # to unload, remove it to load)
Interface\FrameXML\_AddonManager\_AddonManager.xml
Interface\FrameXML\EsUI\EsUI.xml
Interface\FrameXML\EsUI\EsUI_Bindings.xml

... (other content)
```
## Setup Saved Variables

 1. Navigate to `\WTF`
 2. Open the `Config.wtf` with any text editor (e.g. Notepad++)
 3. Scroll to the end of the file
 4. Add the following line: `SET ADNMGR ""`
 5. Save the file

**Warning**: Without this, the Addon-Manager will run into an error and won't be able to save anything!

## Opening the Manager
Just log in, hit escape and the main menu will have a new entry.

# Optional: Install sounds

 1. Navigate to the same directory level as the `WoWClient.exe`
 2. Copy the folders `DBFilesClient` and `Sound` into that directory
