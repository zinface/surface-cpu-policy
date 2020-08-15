cmake_minimum_required(VERSION 3.5.1)

project("surface-cpu-policy" VERSION 0.1.0)

set(CPACK_GENERATOR "DEB")
set(CPACK_PACKAGE_NAME ${PROJECT_NAME})
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")

# set(CPACK_DEBIAN_FILE_NAME "CPACK_PACKAGE_FILE_NAME>[-<component>].deb")

set(CPACK_DEBIAN_PACKAGE_NAME         ${PROJECT_NAME})
# set(CPACK_DEBIAN_PACKAGE_VERSION      "v1.0") # CPACK_PACKAGE_VERSION
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "amd64")  # Default :Output of dpkg --print-architecture (or i386 if dpkg is not found)
set(CPACK_DEBIAN_PACKAGE_DEPENDS      "python3")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER   "Individual developer <zinfacex@gmail.com>") # CPACK_PACKAGE_CONTACT
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION  "Surface Pro 6 cpu operation strategy")
set(CPACK_DEBIAN_PACKAGE_SECTION      "devel")
set(CPACK_DEBIAN_ARCHIVE_TYPE         "gnutar")
set(CPACK_DEBIAN_COMPRESSION_TYPE     "gzip")
set(CPACK_DEBIAN_PACKAGE_PRIORITY     "optional")

set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
    "${CMAKE_SOURCE_DIR}/config/prerm;${CMAKE_SOURCE_DIR}/config/postrm;${CMAKE_SOURCE_DIR}/config/preinst;${CMAKE_SOURCE_DIR}/config/postinst")

install(FILES README.md DESTINATION /usr/lib/x86_64-linux-gnu/surface-cpu-policy)
install(FILES src/policy.py DESTINATION /usr/lib/x86_64-linux-gnu/surface-cpu-policy)
install(FILES src/surface.service DESTINATION /etc/systemd/system/)

include(CPack)