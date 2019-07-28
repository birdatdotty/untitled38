QT += qml
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        Console.cc \
        HTMLA.cc \
        HTMLBlock.cc \
        HTMLBlock_ListProperty.cc \
        HTMLButton.cc \
        HTMLDiv.cc \
        HTMLEl.cc \
        HTMLEl_QmlFunction.cc \
        HTMLLabel.cc \
        HTMLNav.cc \
        PHPFun.cc \
        Page.cc \
        Root.cc \
        Site.cc \
        Txt.cc \
        htmlimg.cc \
        main.cc

RESOURCES += \
  main.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
  Console.h \
  HTMLA.h \
  HTMLBlock.h \
  HTMLButton.h \
  HTMLDiv.h \
  HTMLEl.h \
  HTMLH.h \
  HTMLImg.h \
  HTMLLabel.h \
  HTMLNav.h \
  HTMLP.h \
  HTMLStyle.h \
  HTMLTitle.h \
  PHPFun.h \
  PHPFuncs.h \
  Page.h \
  Root.h \
  Site.h \
  Txt.h

DISTFILES += \
  About.qml \
  BOOTSTRAP_OPTIONS \
  BOOTSTRAP_OPTIONS_PRE \
  CSS.qml \
  Configure.js \
  HEADCommon.qml \
  Index.qml \
  LgCenter.qml \
  Menu.qml \
  PHP.qml \
  Ps.qml \
  Test.qml \
  TestPhp.qml \
  bootstrap/BootAlert.qml \
  bootstrap/BootBadge.qml \
  bootstrap/BootBotton2.qml \
  bootstrap/BootBreadcrumb.qml \
  bootstrap/BootCarousel.qml \
  bootstrap/BootJumbotron.qml \
  bootstrap/BootMenu.qml \
  bootstrap/BootModal.qml \
  bootstrap/BootScrollspy.qml \
  bootstrap/BootstrapHead.qml \
  bootstrap/NavBarLi.qml \
  bootstrap/NavBarLiActive.qml \
  main.qml
