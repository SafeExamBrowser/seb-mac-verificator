# seb-mac-verificator
SEB Verificator for macOS

A stand-alone tool to manually verify the integrity of a Safe Exam Browser installation on macOS. This application is intended for use cases like BYOD exams on location, where candidates have complete control over their
systems and therefore could be trying to use a manipulated build of Safe Exam Browser to perform an exam.

Exam proctors/invigilators may use SEB Verificator on a USB stick drive and start it from there on the exam device under their supervision. Alternatively, you could make the tool downloadable on a website in your control and ask
the candidate to download and execute the SEB Verificator under your supervision.

## Requirements

SEB Verificator requires macOS 10.11 or newer and can check recent versions of SEB for macOS.

## Usage

Download and open the DMG disc image containing the [latest release version](https://github.com/SafeExamBrowser/seb-mac-verificator/releases), then start the application by double-clicking the SEBVerificator app.

The tool will automatically search for all applications which are registered on the system to open .seb files or seb(s):// links. It displays the app name, version information, Bundle ID, path, signature status and file and URL scheme types for which the application is registered as default (or none if that app isn't the default for these types). Safe Exam Browser applications, which have the correct code signature and Bundle ID, can be started using SEB Verificator. Please note:
* On a regular system, only one (the latest) version of Safe Exam Browser should be installed, other versions should be deleted or archived.
* If you find several versions of SEB and don't want to delete or archive other versions, make sure the one you intend to use regularly for exams is registered as the default app to open both .seb files and seb(s):// hyperlinks.
* If SEB Verificator displays other applications (which can open .seb files and seb(s):// hyperlinks), even if they have a different app name and/or Bundle ID, those could be manipulated SEB versions or other apps intended to be used for cheating. We suggest to archive those to a .zip file and submit it to us, so we can analyze it.

The SEB Verificator application searches the folder it is started from as well as its subdirectories for SEB configuration files to use. If a config file was found and it's selected in the section below the list of SEB applications, then SEB is started and opens that config. After starting SEB, the SEB Verificator application will terminate itself.

If the folder containing SEB Verificator is writable, then a subfolder 'Logs' is created, which contains log files. The log files list device type and name, operating system version, computer account user name, local network host name in the beginning of each session information, so you could later trace which computers you checked and which had some unwanted SEB versions installed.

In addition, underneath the list of SEB configuration files found, there is a console window displaying SEB Verificator log information since you started it.

Buttons:
* Rescan: In case you delete some invalid SEB version, you can rescan and check if it is really gone.
* Start SEB: SEB Verificator will start the valid SEB version you selected in the found applications list. If you selected a found SEB configuration file, SEB will open it. You can also just press the Enter/Return key to invoke this function.
* Quit Apps & Start SEB: SEB Verificator will attempt to send a quit command to all applications currently running which use the activation policy 'regular', e.g. they have an icon in the macOS Dock and can be activated using the App Chooser (command - tab shortcut). If an app has an open document with unsaved changes and doesn't support auto save, it might ask you to first save the document before quitting. Apps like Google Chrome, which don't comply to Apple's Human Interface Guidelines might ask you to confirm quitting. After all apps are quit, the selected SEB version will be started (opening a selected SEB configuration file). You can also force quit applications in the window which SEB Verificator will display, but then you might loose unsaved changes. Note: This feature currently doesn't terminate background processes and helper apps, which aren't displayed in the Dock/App Chooser. After quitting SEB, you need to start apps which were quit by SEB Verificator manually, including the Finder (use for example the Dock or Spotlight). 
* Checkmark "Start with config ...": If one or several SEB configuration files were found in the folder SEB Verificator was started from, the first one (alphabetically) will be selected when starting SEB Verificator. If you don't want to start SEB with that config, you can deselect this checkmark. If you select another config in the list, this checkmark will automatically be selected again.


## Using Safe Mode for More Security

When an exam proctor/invigilator supervises the correct use of SEB Verificator to start SEB, there is another way how to increase security massively: [Reboot the Mac in safe mode](https://support.apple.com/guide/mac-help/start-up-your-mac-in-safe-mode-mh21245/mac). A macOS device owned and controlled by the candidate could have specific third-party tools installed, which run in the background and could potentially be used for cheating. Also a candidate might attempt to run SEB Verificator and SEB in a manipulated virtual machine (VM), attempting to bypass SEB's VM detector. Safe mode should prevent this if activated while being supervised by a proctor:
* Shut the Mac down.
* Start the mac in safe mode, see [Apple instructions how to do this on a Mac with Apple silicon or an Intel-based Mac](https://support.apple.com/guide/mac-help/start-up-your-mac-in-safe-mode-mh21245/mac).
* In safe mode, macOS prevents some software, such as startup items, from loading. This also applies to VMs and software starting third-party background processes.
* Start SEB using SEB Verificator. You could use SEB Server to monitor if a Mac would be rebooted during the exam.
* After the exam, reboot the Mac, safe mode will be deactivated.
 

## Building

Open SafeExamBrowser.xcworkspace in a recent version of Xcode (currently 13.4.1) and switch to the SEBVerificator scheme to build it.

Currently the main branch reflects SEB for macOS/iOS 3.1. This is the first version using a unified macOS/iOS/iPadOS Xcode project (Xcode workspace with both macOS and iOS targets). In addition, the same Xcode project contains now a SEBVerificator target (as this stand-alone tool shares code with the SEB applications).

All information about Safe Exam Browser you'll find at http://safeexambrowser.org, especially see https://safeexambrowser.org/developer/overview.html. Other documentation is available in the according repositories. Search discussions boards if you don't find  information in the manual and SEB How To document (see links on page Support).
