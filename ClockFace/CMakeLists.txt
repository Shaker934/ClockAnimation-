cmake_minimum_required(VERSION 3.16)

project(ClockFace VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appClockFace
    main.cpp
)

qt_add_qml_module(appClockFace
    URI ClockFace
    VERSION 1.0
    QML_FILES Main.qml



    RESOURCES
    clock/clock.png
    clock/2hour.png
    clock/2minu.png
    clock/2sec.png

    clock/shope.png


    clock/clock2.png
    clock/clock3.png
    clock/clock4.png
    clock/clock5.png
    clock/clock6.png
    clock/clock7.png
    clock/clock8.png
    clock/clock9.png

    RESOURCES clock/carBMW.png clock/loge1.png clock/loge2.png clock/loge3.png clock/loge4.png clock/loge5.png clock/loge6.png
    RESOURCES clock/imgCenter.jpg









)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appClockFace PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appClockFace
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appClockFace
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appClockFace
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
