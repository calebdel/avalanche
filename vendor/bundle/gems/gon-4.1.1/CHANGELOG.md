# CHANGELOG

## 4.1.1

  * Fixed critical XSS vulnerability https://github.com/gazay/gon/issues/84 (@vadimr & @Hebo)

## 4.1.0

  * Refactored script tag generation (@toothrot)
  * Stop support for MRI 1.8.7
  * Added rabl-rails support (@jtherrell)
  * Accepting locals in jbuilder templates

## 4.0.3

  * Added new method `Gon#push` for assign variables through Hash-like
    objects (@topdev)
  * Fixes for 1.8.7 compatibility.
  * !!!IMPORTANT!!! Last version with compatibility for MRI 1.8.7

## 4.0.2

  * Fixed gon.watch in JS without callback and options

## 4.0.1

  * Removed BlankSlate requirement *Peter Schröder*
  * Gon#set_variable and Gon#get_variable moved to public scope
  * Added option :locals to gon.rabl functionality

## 4.0.0

  * Added gon.watch functionality (thanks to @brainopia and @kossnocorp)
  * Compatibility with jbuilder paths for partial! method
  * Fixed some bugs
  * Little bit refactoring - Gon now is a class

## 3.0.3

  * Include ActionView::Helpers into Gon::JBuilder
  * Added init option (@torbjon)

## 3.0.2

  * Added need_tag option (@afa)

## 3.0.0

  * Almost all code refactored
  * Added Gon.global for using gon everywhere
  * Included ActionView::Helpers into Rabl::Engine

## 2.3.0

  * Don't really remember what was before this version
