//
//  SEBUserDefaultsController.m
//  SafeExamBrowser
//
//  Created by Daniel Schneider on 07.11.11.
//  Copyright (c) 2010-2022 Daniel R. Schneider, ETH Zurich, 
//  Educational Development and Technology (LET), 
//  based on the original idea of Safe Exam Browser 
//  by Stefan Schneider, University of Giessen
//  Project concept: Thomas Piendl, Daniel R. Schneider, Damian Buechel, 
//  Dirk Bauer, Kai Reuter, Tobias Halbherr, Karsten Burger, Marco Lehre, 
//  Brigitte Schmucki, Oliver Rahs. French localization: Nicolas Dunand
//
//  ``The contents of this file are subject to the Mozilla Public License
//  Version 1.1 (the "License"); you may not use this file except in
//  compliance with the License. You may obtain a copy of the License at
//  http://www.mozilla.org/MPL/
//  
//  Software distributed under the License is distributed on an "AS IS"
//  basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
//  License for the specific language governing rights and limitations
//  under the License.
//  
//  The Original Code is Safe Exam Browser for Mac OS X.
//  
//  The Initial Developer of the Original Code is Daniel R. Schneider.
//  Portions created by Daniel R. Schneider are Copyright 
//  (c) 2010-2022 Daniel R. Schneider, ETH Zurich, Educational Development
//  and Technology (LET), based on the original idea of Safe Exam Browser 
//  by Stefan Schneider, University of Giessen. All Rights Reserved.
//  
//  Contributor(s): ______________________________________.
//

#import "SEBUIUserDefaultsController.h"


@implementation SEBUIUserDefaultsController

static SEBUIUserDefaultsController *sharedSEBUIUserDefaultsController = nil;

//@synthesize org_safeexambrowser_SEB_cryptoIdentities = _org_safeexambrowser_SEB_cryptoIdentities;


+ (SEBUIUserDefaultsController *)sharedSEBUIUserDefaultsController
{
	@synchronized(self)
	{
		if (sharedSEBUIUserDefaultsController == nil)
		{
			sharedSEBUIUserDefaultsController = [[self alloc] init];
		}
	}
    
	return sharedSEBUIUserDefaultsController;
}


- (NSArray *) org_safeexambrowser_SEB_newBrowserWindowByLinkPolicies {
    return [NSArray arrayWithObjects:NSLocalizedString(@"get generally blocked", nil), NSLocalizedString(@"open in same window", nil), NSLocalizedString(@"open in new window", nil), nil];
}

- (NSArray *) org_safeexambrowser_SEB_newBrowserWindowByScriptPolicies {
    return [NSArray arrayWithObjects:NSLocalizedString(@"get generally blocked", nil), NSLocalizedString(@"open in same window", nil), NSLocalizedString(@"open in new window", nil), nil];
}


- (NSArray *) org_safeexambrowser_SEB_browserWindowWebViewPolicies {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"Automatic", nil),
            NSLocalizedString(@"Force Classic", nil),
            NSLocalizedString(@"Prefer Modern in New Tab+Different Host", nil),
            NSLocalizedString(@"Prefer Modern", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_browserUserAgentEnvironments {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"Standard user agent", nil),
            NSLocalizedString(@"Win: User agent for desktop mode", nil),
            NSLocalizedString(@"Win: User agent for touch/tablet mode", nil),
            NSLocalizedString(@"iOS User agent", nil), nil];
}


- (NSArray *) org_safeexambrowser_SEB_chooseFileToUploadPolicies {
    return [NSArray arrayWithObjects:NSLocalizedString(@"manually with file requester", nil), NSLocalizedString(@"by attempting to upload same file downloaded before", nil), NSLocalizedString(@"by only allowing to upload the same file downloaded before", nil), nil];
}


- (NSArray *) org_safeexambrowser_SEB_certificateTypes {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"SSL Certificate", nil),
            NSLocalizedString(@"Identity", nil),
            NSLocalizedString(@"CA Certificate", nil),
            NSLocalizedString(@"Debug Certificate", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_SSLCertificateTypes {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"SSL Certificate", nil),
            NSLocalizedString(@"CA Certificate", nil),
            NSLocalizedString(@"Debug Certificate", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_cryptoIdentities {
    return [NSArray arrayWithObjects:NSLocalizedString(@"Fetching identities", nil), nil];
}


- (NSArray *) org_safeexambrowser_SEB_browserWindowPositionings {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"Left", nil),
            NSLocalizedString(@"Center", nil),
            NSLocalizedString(@"Right", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_browserWindowShowURLPolicies {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"Never", nil),
            NSLocalizedString(@"Only on load error", nil),
            NSLocalizedString(@"Before receiving title", nil),
            NSLocalizedString(@"Always", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_proxyProtocols {
    return [NSArray arrayWithObjects:
            [NSDictionary dictionaryWithObjectsAndKeys:
             @"proxyAutoDiscoveryEnable",
             @"keyName",
             NSLocalizedString(@"Auto Proxy Discovery", nil),
             @"name",
             nil],
            [NSDictionary dictionaryWithObjectsAndKeys:
             @"proxyAutoConfigEnable",
             @"keyName",
             NSLocalizedString(@"Automatic Proxy Configuration", nil),
             @"name",
             nil],
            [NSDictionary dictionaryWithObjectsAndKeys:
             @"HTTPEnable",
             @"keyName",
             NSLocalizedString(@"Web Proxy (HTTP)", nil),
             @"name",
             nil],
            [NSDictionary dictionaryWithObjectsAndKeys:
             @"HTTPSEnable",
             @"keyName",
             NSLocalizedString(@"Secure Web Proxy (HTTPS)", nil),
             @"name",
             nil],
            [NSDictionary dictionaryWithObjectsAndKeys:
             @"FTPEnable",
             @"keyName",
             NSLocalizedString(@"FTP Proxy", nil),
             @"name",
             nil],
            [NSDictionary dictionaryWithObjectsAndKeys:
             @"SOCKSEnable",
             @"keyName",
             NSLocalizedString(@"SOCKS Proxy", nil),
             @"name",
             nil],
            [NSDictionary dictionaryWithObjectsAndKeys:
             @"RTSPEnable",
             @"keyName",
             NSLocalizedString(@"Streaming Proxy (RTSP)", nil),
             @"name",
             nil],
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_sebServicePolicies {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"allow to use SEB without service", nil),
            NSLocalizedString(@"warn when service is not running", nil),
            NSLocalizedString(@"allow to use SEB only with service", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_URLFilterRuleActions {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"block", nil),
            NSLocalizedString(@"allow", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_logLevels {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"Error", nil),
            NSLocalizedString(@"Warning", nil),
            NSLocalizedString(@"Info", nil),
            NSLocalizedString(@"Debug", nil),
            NSLocalizedString(@"Verbose", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_minMacOSVersions {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"10.7 (this SEB: 10.11)", nil),
            NSLocalizedString(@"10.8 (this SEB: 10.11)", nil),
            NSLocalizedString(@"10.9 (this SEB: 10.11)", nil),
            NSLocalizedString(@"10.10 (this SEB: 10.11)", nil),
            NSLocalizedString(@"10.11 El Capitan", nil),
            NSLocalizedString(@"10.12 Sierra", nil),
            NSLocalizedString(@"10.13 High Sierra", nil),
            NSLocalizedString(@"10.14 Mojave", nil),
            NSLocalizedString(@"10.15 Catalina", nil),
            NSLocalizedString(@"11 Big Sur", nil),
            NSLocalizedString(@"12 Monterey", nil),
            NSLocalizedString(@"13 Ventura", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_operatingSystems {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"macOS", nil),
            NSLocalizedString(@"Win", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_allowiOSBetaVersions {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"None", nil),
            NSLocalizedString(@"iOS 16", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_mobileStatusBarAppearances {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"None", nil),
            NSLocalizedString(@"White on Black", nil),
            NSLocalizedString(@"Black on White", nil),
            nil];
}


- (NSArray *) org_safeexambrowser_SEB_mobileStatusBarAppearancesExtended {
    return [NSArray arrayWithObjects:
            NSLocalizedString(@"None", nil),
            NSLocalizedString(@"White on Black", nil),
            NSLocalizedString(@"Black on White", nil),
            NSLocalizedString(@"None - Black", nil),
            NSLocalizedString(@"None - White", nil),
            nil];
}


@end
