Viper Module Generator (Edited to work with Swift 3)
======================
Gem to generate VIPER modules to use them in your Objective-C/Swift projects
The implementation scheme returned by this generator is hardly inspired in the example and post of Objc.io, http://www.objc.io/issue-13/viper.html .

- [Features](#features)
  - [Changelog](#changelog-0.1)
  - [Expected in version 0.2](#expected-in-version-0.2)
- [Viper files structure](#viper-files-structure)
- [How to generate a VIPER module with a given name?](#how-to-generate-viper-module-with-a-given-name?)
- [Resources](#resources)

## Features
- Generates the module in Swift and Objective-C
- Ready to be installed as a gem https://rubygems.org/gems/VIPERGen

### Changelog 0.1.6
- Added `templates` command to know which templates are available
- YAML file in each template with the information about the template (more scalable)

### Changelog 0.1
- Added default template
- Fully components tested

### Expected in version 0.2
- Example project of Redbooth login with notifications
- FetchedResultsController template
- Default template in Swift
- Login template
- Integrate with XCode as a plugin (http://nshipster.com/xcode-plugins/)

## Viper files structure
```bash
.objc
+-- DataManager
|   +-- VIPERDataManager.h
|   +-- VIPERDataManager.m
+-- Interactor
|   +-- VIPERInteractor.h
|   +-- VIPERInteractor.m
+-- Presenter
|   +-- VIPERPresenter.h
|   +-- VIPERPresenter.m
+-- ViewController
|   +-- VIPERViewController.h
|   +-- VIPERViewController.m
+-- WireFrame
|   +-- VIPERWireFrame.h
|   +-- VIPERWireFrame.m
+-- Protocols
|   +-- VIPERProtocols.h
.swift
+-- DataManager
|   +-- VIPERDataManager.swift
+-- Interactor
|   +-- VIPERInteractor.swift
+-- Presenter
|   +-- VIPERPresenter.swift
+-- ViewController
|   +-- VIPERViewController.swift
+-- WireFrame
|   +-- VIPERWireFrame.swift
+-- Protocols
|   +-- VIPERProtocols.swift
```

## How to generate a VIPER module with a given name?
You have just to execute the following command
```bash
vipergen generate MyFirstViperModule --path=~/myproject/shared
```
And then the files structure will be automatically created. Don't forget to add this folder to your project dragging it into the XCode/Appcode inspector

## Resources
- Rspec documentation: http://rubydoc.info/gems/rspec-expectations/frames
- XCode Plugins: http://nshipster.com/xcode-plugins/
- XCodeProj gem (to modify project groups structure): https://github.com/CocoaPods/Xcodeproj
- Thor, powerful Ruby library for command line: http://whatisthor.com/

## Contact
If you have any doubt about the gem or even if you want to make any suggestion you can do it directly to my email address, pedro@redbooth.com . You can use the issues Github page too
