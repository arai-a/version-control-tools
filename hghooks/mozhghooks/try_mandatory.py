#!/usr/bin/env python

import re

chooserUrl = 'http://trychooser.pub.build.mozilla.org/'
infoUrl = 'https://wiki.mozilla.org/Build:TryChooser'

def hook(ui, repo, **kwargs):
    # Block the push unless they use the try_syntax
    # 'try: ' is enough to activate try_parser and get the default set
    if "try: " not in repo.changectx('tip').description():
        print """To push to try you must use try syntax in the push comment of the *last* change 
See %s to build your syntax
For assistance using the syntax and %s for more information.
Thank you for helping to reduce CPU cyles by asking for exactly what you need.""" % (chooserUrl, infoUrl)
        return 1
    else:
        print """Looks like you used try syntax, going ahead with the push.
If you don't get what you expected, check %s for help with building your trychooser request.
Thanks for helping save resources, you're the best!""" % chooserUrl
        return 0

