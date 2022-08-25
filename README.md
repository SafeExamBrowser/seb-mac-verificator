# seb-mac-verificator
SEB Verificator for macOS

A standalone tool to manually verify the integrity of a Safe Exam Browser installation on Windows. This application is intended for use cases like BYOD exams where candidates have complete control over their
systems and thus could be trying to use a manipulated build of Safe Exam Browser to perform an exam.

You may use the SEB Verificator on a USB flash drive and start it from there on the exam device under your supervision. Alternatively, you could make the tool downloadable on a website in your control and ask
the candidate to download and execute the SEB Verificator under your supervision.

## Requirements

SEB Verificator requires macOS 10.11 or newer and can check recent versions of SEB for macOS.

## Usage

Download and open the DMG disc image containing the [latest release version](https://github.com/SafeExamBrowser/seb-mac-verificator/releases), then start the application by double-clicking the SEBVerificator app.

The tool will automatically search for all applications which are registered on the system to open .seb files or seb(s):// links. It displays the app name, version information, Bundle ID, path, signature status and file and URL scheme types for which the application is registred as default (or none if that app isn't the default for these types). Safe Exam Browser applications, which have the correct code signature and Bundle ID, can be started using SEB Verificator. 

The application searches the folder containing the executable as well as its subdirectories for SEB configuration files to use. If a config file was found and it's selected in the section below the applications, then SEB is started and opens that config. After starting SEB, the application will terminate itself.

If the folder containing SEB Verificator is writable, then a subfolder 'Logs' is created, which contains log files.

## Building

Open SafeExamBrowser.xcworkspace in a recent version of Xcode (currently 13.4.1) and switch to the SEBVerificator scheme to build it.

Currently main reflects SEB for macOS/iOS 3.1. This is the first version using a unified macOS/iOS/iPadOS Xcode project (Xcode workspace with both macOS and iOS targets). In addition, the same Xcode project contains now a SEBVerificator target (as this stand-alone tool shares code with the SEB applications).

All information about Safe Exam Browser you'll find at http://safeexambrowser.org, especially see https://safeexambrowser.org/developer/overview.html. Other documentation is available in the according repositories. Search discussions boards if you don't find  information in the manual and SEB How To document (see links on page Support).

