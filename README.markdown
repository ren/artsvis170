##Download & Install Processing
http://processing.org/download/

##Installing Processing Textmate Bundle

###Install GetBundles
1. $ cd ~/Library/Application\ Support/TextMate/Bundles
2. $ svn co http://svn.textmate.org/trunk/Review/Bundles/GetBundles.tmbundle/

###Install Processing Bundle
1. Bundles > Get Bundles > Get Bundles
2. Find the Processing Bundle, highlight and click "Install Bundles"

###Fix Bundle Run Command
1. Bundles > Bundle Editor > Show Bundles Editor
2. Unfold the Processing Bundle
3. Highlight "Run in Processing"
4. Change instances of "Processing 0135" (or whatever number it has) to just "Processing"

The script for the "Run in Processing" command should now look like [this code snippet](http://gist.github.com/1ecdd8ac3e09672e1aee)

###Reload Bundles
1. Bundles > Bundle Editor > Reload Bundles

###On OS X other Processing Preferences are located here:
/Users/username/Library/Processing/preferences.txt
set editor.external to true

apple+r should now reload the Processing environment from TextMate