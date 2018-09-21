//
//  SEBAboutController.m
//  SafeExamBrowser
//
//  Created by Daniel R. Schneider on 26.05.17.
//
//

#import "SEBAboutController.h"

@implementation SEBAboutController

- (NSString *) version
{
    // Get application short version and bundle (build) version string
    NSString* versionString = [[MyGlobals sharedMyGlobals] infoValueForKey:@"CFBundleShortVersionString"];
    NSString* buildNumber = [[MyGlobals sharedMyGlobals] infoValueForKey:@"CFBundleVersion"];
    versionString = [NSString stringWithFormat:@"%@ %@ (%@)", NSLocalizedString(@"Version",nil), versionString, buildNumber];

    return versionString;
}


- (NSString *) copyright
{
    NSString* copyrightString = [[MyGlobals sharedMyGlobals] infoValueForKey:@"NSHumanReadableCopyright"];
    copyrightString = [NSString stringWithFormat:@"%@\n\n%@\n\n%@\n\n%@\n\n%@\n\n%@\n\n\n%@\n\n%@\n\n%@\n\n%@\n\n%@\n\n%@",
                       copyrightString,
                       NSLocalizedString(@"This project was partly carried out under the program 'AAA/SWITCH – e-Infrastructure for e-Science' lead by SWITCH, the Swiss National Research and Education Network and the cooperative CRUS project 'Learning Infrastructure' coordinated by SWITCH, supported by funds from the ETH Board.", nil),
                       NSLocalizedString(@"Project concept: Thomas Piendl, Daniel R. Schneider, Dirk Bauer, Kai Reuter, Tobias Halbherr, Karsten Burger, Marco Lehre, Brigitte Schmucki, Oliver Rahs.", nil),
                       NSLocalizedString(@"Code contributions © 2015 - 2016 Janison", nil),
                       @"SafeExamBrowser is subject to the Mozilla Public License Version 1.1 (the 'License'); you may not use this software except in compliance with the License. You may obtain a copy of the License at http://www.mozilla.org/MPL/\n\nSoftware distributed under the License is distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for the specific language governing rights and limitations under the License.",
                       NSLocalizedString(@"More information at http://safeexambrowser.org", nil),
                       NSLocalizedString(@"Used third-party frameworks:", nil),
                       @"RNCryptor.m\n\nCopyright (c) 2012 Rob Napier\n\nThis code is licensed under the MIT License:\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n",
                       @"CocoaLumberjack\n\nSoftware License Agreement (BSD License)\n\nCopyright (c) 2010-2018, Deusty, LLC\nAll rights reserved.\n\nRedistribution and use of this software in source and binary forms, with or without modification, are permitted provided that the following conditions are met:\n\n* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.\n\n* Neither the name of Deusty nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission of Deusty, LLC.\n\nTHIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n",
                       @"InAppSettingsKit\nhttp://www.inappsettingskit.com\n\nCopyright (c) 2009-2010:\nLuc Vandal, Edovia Inc., http://www.edovia.com\nOrtwin Gentz, FutureTap GmbH, http://www.futuretap.com\nAll rights reserved.\n\nThis code is licensed under the BSD license that is available at: http://www.opensource.org/licenses/bsd-license.php\n",
                       @"Friend-LGA/LGSideMenuController\nhttps://github.com/Friend-LGA/LGSideMenuController\n\nFriend-LGA/LGSideMenuController is licensed under the MIT License\n\nCopyright (c) 2015 Grigory Lutkov <Friend.LGA@gmail.com>\n\nThe MIT License (MIT)\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n",
                       @"QRCodeReader\n\nCopyright 2014-present Yannick Loriot.\nhttp://yannickloriot.com\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n"
                       ];

    return copyrightString;
}

@end