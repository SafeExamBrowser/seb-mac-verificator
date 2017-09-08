//
//  SEBSettings.m
//  SafeExamBrowser
//
//  Created by Daniel R. Schneider on 21.08.17.
//
//

#import "SEBSettings.h"

@implementation SEBSettings

+ (NSDictionary *)defaultSettings
{
    return  @{@"rootSettings" : [NSDictionary dictionaryWithObjectsAndKeys:
                          
             [NSArray array],
             @"additionalResources",
             
             @NO,
             @"allowBrowsingBackForward",
             
             @NO,
             @"allowDisplayMirroring",
             
             @NO,
             @"allowDictionaryLookup",
             
             @NO,
             @"allowDownUploads",
             
             @YES,
             @"allowedDisplayBuiltin",
             
             [NSNumber numberWithLong:1],
             @"allowedDisplaysMaxNumber",
             
             @NO,
             @"allowFlashFullscreen",
             
             @NO,
             @"allowPDFPlugIn",
             
             @YES,
             @"allowPreferencesWindow",
             
             @YES,
             @"allowQuit",
             
             @NO,
             @"allowScreenSharing",
             
             @NO,
             @"allowSpellCheck",
             
             @NO,
             @"allowSwitchToApplications",
             
             @YES,
             @"allowUserSwitching",
             
             @NO,
             @"allowVirtualMachine",
             
             @NO,
             @"allowWLAN",
             
             @NO,
             @"blockPopUpWindows",
             
             [NSNumber numberWithLong:120000],
             @"browserMessagingPingTime",
             
             @"ws:\\localhost:8706",
             @"browserMessagingSocket",
             
             @NO,
             @"browserScreenKeyboard",
             
             @YES,
             @"browserURLSalt",
             
             [NSNumber numberWithLong:browserUserAgentModeMacDefault],
             @"browserUserAgentMac",
             
             @"",
             @"browserUserAgentMacCustom",
             
             [NSNumber numberWithLong:browserUserAgentModeWinDesktopDefault],
             @"browserUserAgentWinDesktopMode",
             
             @"",
             @"browserUserAgentWinDesktopModeCustom",
             
             [NSNumber numberWithLong:browserUserAgentModeWinTouchDefault],
             @"browserUserAgentWinTouchMode",
             
             @"",
             @"browserUserAgentWinTouchModeCustom",
             
             [NSNumber numberWithLong:browserViewModeWindow],
             @"browserViewMode",

             @NO,
             @"browserWindowAllowReload",
             
             [NSNumber numberWithLong:manuallyWithFileRequester],
             @"chooseFileToUploadPolicy",
             
             @YES,
             @"createNewDesktop",
             
             [NSDictionary dictionary],
             @"configKeyContainedKeys",
             
             @YES,
             @"downloadAndOpenSebConfig",
             
             [NSHomeDirectory() stringByAppendingPathComponent: @"Downloads"],
             @"downloadDirectoryOSX",
             
             @"Desktop",
             @"downloadDirectoryWin",
             
             @NO,
             @"downloadPDFFiles",
             
             [NSArray array],
             @"embeddedCertificates",
             
             @YES,
             @"enableAppSwitcherCheck",
             
             @NO,
             @"enableBrowserWindowToolbar",
             
             @NO,
             @"enableJava",
             
             @YES,
             @"enableJavaScript",
             
             @YES,
             @"enableLogging",
             
             @YES,
             @"enablePlugIns",
             
             @YES,
             @"enablePrivateClipboard",
             
             @YES,
             @"enableSebBrowser",
             
             @NO,
             @"enableTouchExit",
             
             [NSData data],
             @"examKeySalt",
             
             [NSNumber numberWithLong:2],
             @"exitKey1",
             
             [NSNumber numberWithLong:10],
             @"exitKey2",
             
             [NSNumber numberWithLong:5],
             @"exitKey3",
             
             @"",
             @"hashedAdminPassword",
             
             @"",
             @"hashedQuitPassword",
             
             @NO,
             @"hideBrowserWindowToolbar",
             
             @YES,
             @"hookKeys",
             
             @NO,
             @"enableEsc",
             
             @NO,
             @"enableCtrlEsc",
             
             @NO,
             @"enableAltEsc",
             
             @NO,
             @"enableAltMouseWheel",
             
             @YES,
             @"enableAltTab",
             
             @NO,
             @"enableAltF4",
             
             @NO,
             @"enablePrintScreen",
             
             @YES,
             @"enableRightMouse",
             
             @NO,
             @"enableStartMenu",
             
             @NO,
             @"enableF1",
             
             @NO,
             @"enableF2",
             
             @NO,
             @"enableF3",
             
             @NO,
             @"enableF4",
             
             @YES,
             @"enableF5",
             
             @NO,
             @"enableF6",
             
             @NO,
             @"enableF7",
             
             @NO,
             @"enableF8",
             
             @NO,
             @"enableF9",
             
             @NO,
             @"enableF10",
             
             @NO,
             @"enableF11",
             
             @NO,
             @"enableF12",
             
             @YES,
             @"enableZoomPage",
             
             @YES,
             @"enableZoomText",
             
             @YES,
             @"forceAppFolderInstall",
             
             @YES,
             @"ignoreExitKeys",
             
             @NO,
             @"ignoreQuitPassword",
             
             @NO,
             @"insideSebEnableChangeAPassword",
             
             @NO,
             @"insideSebEnableEaseOfAccess",
             
             @NO,
             @"insideSebEnableLockThisComputer",
             
             @NO,
             @"insideSebEnableLogOff",
             
             @NO,
             @"insideSebEnableShutDown",
             
             @NO,
             @"insideSebEnableStartTaskManager",
             
             @NO,
             @"insideSebEnableSwitchUser",
             
             @NO,
             @"insideSebEnableVmWareClientShade",
             
             @NO,
             @"killExplorerShell",
             
             @"",
             @"logDirectoryOSX",
             
             @"",
             @"logDirectoryWin",
             
             [NSNumber numberWithLong:SEBLogLevelDebug],
             @"logLevel",
             
             @"100%",
             @"mainBrowserWindowHeight",
             
             [NSNumber numberWithLong:browserWindowPositioningCenter],
             @"mainBrowserWindowPositioning",
             
             @"100%",
             @"mainBrowserWindowWidth",
             
             [NSNumber numberWithLong:SEBMinOSX10_7],
             @"minMacOSVersion",
             
             @YES,
             @"monitorProcesses",
             
             @NO,
             @"newBrowserWindowByLinkBlockForeign",
             
             @"100%",
             @"newBrowserWindowByLinkHeight",
             
             [NSNumber numberWithLong:openInNewWindow],
             @"newBrowserWindowByLinkPolicy",
             
             [NSNumber numberWithLong:browserWindowPositioningRight],
             @"newBrowserWindowByLinkPositioning",
             
             @"1000",
             @"newBrowserWindowByLinkWidth",
             
             @NO,
             @"newBrowserWindowByScriptBlockForeign",
             
             [NSNumber numberWithLong:openInNewWindow],
             @"newBrowserWindowByScriptPolicy",
             
             @NO,
             @"openDownloads",
             
             [NSNumber numberWithLong:oskBehaviorAutoShow],
             @"oskBehavior",
             
             [NSArray array],
             @"permittedProcesses",
             
             @NO,
             @"pinEmbeddedCertificates",
             
             [NSArray array],
             @"prohibitedProcesses",
             
             [NSMutableDictionary new],
             @"proxies",
             
             [NSNumber numberWithLong:useSystemProxySettings],
             @"proxySettingsPolicy",
             
             @"",
             @"quitURL",
             
             @YES,
             @"removeBrowserProfile",
             
             @NO,
             @"removeLocalStorage",
             
             @YES,
             @"restartExamPasswordProtected",
             
             @"",
             @"restartExamText",
             
             @"",
             @"restartExamURL",
             
             @NO,
             @"restartExamUseStartURL",
             
             [NSNumber numberWithLong:sebConfigPurposeConfiguringClient],
             @"sebConfigPurpose",
             
             [NSNumber numberWithLong:sebModeStartURL],
             @"sebMode",
             
             @NO,
             @"sebServerFallback",
             
             @"",
             @"sebServerURL",
             
             [NSNumber numberWithLong:forceSebService],
             @"sebServicePolicy",
             
             @NO,
             @"sendBrowserExamKey",
             
             @NO,
             @"showInputLanguage",
             
             @YES,
             @"showMenuBar",
             
             @YES,
             @"showReloadButton",
             
             @NO,
             @"showReloadWarning",
             
             @YES,
             @"showTaskBar",
             
             @YES,
             @"showTime",
             
             @"http://www.safeexambrowser.org/start",
             @"startURL",
             
             [NSNumber numberWithLong:40],
             @"taskBarHeight",
             
             @NO,
             @"touchOptimized",
             
             @NO,
             @"URLFilterEnable",
             
             @NO,
             @"URLFilterEnableContentFilter",
             
             [NSArray array],
             @"URLFilterIgnoreList",
             
             [NSNumber numberWithLong:URLFilterMessageText],
             @"URLFilterMessage",
             
             @NO,
             @"urlFilterRegex",
             
             @NO,
             @"urlFilterTrustedContent",
             
             @"",
             @"blacklistURLFilter",
             
             @"",
             @"whitelistURLFilter",
             
             [NSArray array],
             @"URLFilterRules",
             
             [NSNumber numberWithLong:SEBZoomModePage],
             @"zoomMode",
             
                                 nil],
              
              @"additionalResources" : @{
                      @"active" : @YES,
                      @"additionalResources" : @[],
                      @"autoOpen" : @NO,
                      @"identifier" : @"",
                      @"title" : @"",
                      @"URL" : @"",
                      @"URLFilterRules" :  @[],
                      @"resourceData" : @"",
                      @"resourceIcons" : @[],
                      },
              
              @"permittedProcesses" : @{
                      @"active" : @YES,
                      @"allowUserToChooseApp" : @NO,
                      @"allowedExecutables" : @"",
                      @"arguments" : @[],
                      @"autostart" : @NO,
                      @"description" : @"",
                      @"executable" : @"",
                      @"iconInTaskbar" : @YES,
                      @"identifier" : @"",
                      @"os" : @0,
                      @"path" : @"",
                      @"runInBackground" : @NO,
                      @"strongKill" : @NO,
                      @"title" : @"",
                      @"windowHandlingProcess" : @""
                      },
              
              @"prohibitedProcesses" : @{
                      @"active" : @YES,
                      @"allowedExecutables" : @"",
                      @"currentUser" : @NO,
                      @"description" : @"",
                      @"executable" : @"",
                      @"identifier" : @"",
                      @"os" : @0,
                      @"strongKill" : @NO,
                      @"user" : @""
                      },
              
              @"URLFilterRules" : @{
                      @"action" : [NSNumber numberWithLong:URLFilterActionAllow],
                      @"active" : @YES,
                      @"expression" : @"",
                      @"regex" : @NO
                      },
              
              @"embeddedCertificates" : @{
                      @"certificateData" : @YES,
                      @"name" : @"",
                      @"type" : [NSNumber numberWithLong:certificateTypeSSL],
                      },
              
              @"proxies" : @{
                      @"AutoConfigurationEnabled" : @NO,
                      @"AutoConfigurationJavaScript" : @"",
                      @"AutoConfigurationURL" : @"",
                      @"AutoDiscoveryEnabled" : @NO,
                      @"ExceptionsList" : @[],
                      @"ExcludeSimpleHostnames" : @NO,
                      @"FTPEnable" : @NO,
                      @"FTPPassive" : @YES,
                      @"FTPPassword" : @"",
                      @"FTPPort" : @21,
                      @"FTPProxy" : @"",
                      @"FTPRequiresPassword" : @NO,
                      @"FTPUsername" : @"",
                      @"HTTPEnable" : @NO,
                      @"HTTPPassword" : @"",
                      @"HTTPPort" : @80,
                      @"HTTPProxy" : @"",
                      @"HTTPRequiresPassword" : @NO,
                      @"HTTPSEnable" : @NO,
                      @"HTTPSPassword" : @"",
                      @"HTTPSPort" : @443,
                      @"HTTPSProxy" : @"",
                      @"HTTPSRequiresPassword" : @NO,
                      @"HTTPSUsername" : @"",
                      @"HTTPUsername" : @"",
                      @"RTSPEnable" : @NO,
                      @"RTSPPassword" : @"",
                      @"RTSPPort" : @554,
                      @"RTSPProxy" : @"",
                      @"RTSPRequiresPassword" : @NO,
                      @"RTSPUsername" : @"",
                      @"SOCKSEnable" : @NO,
                      @"SOCKSPassword" : @"",
                      @"SOCKSPort" : @1080,
                      @"SOCKSProxy" : @"",
                      @"SOCKSRequiresPassword" : @NO,
                      @"SOCKSUsername" : @""
                      }
              
              };
}


@end
