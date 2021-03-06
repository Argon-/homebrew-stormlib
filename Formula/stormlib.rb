require "formula"


class Stormlib < Formula
  homepage 'http://www.zezula.net/en/mpq/main.html'
  url 'https://github.com/stormlib/StormLib/archive/v9.00a.tar.gz'
  head 'https://github.com/stormlib/StormLib.git'
  sha1 '74bdda9309cce208d4982c9a1f5d740d246a9755'
  version '9.0a'


  depends_on "cmake" => :build


  def patches
    DATA
  end


  def install
    system 'cmake', '.', '-G', 'Unix Makefiles', *std_cmake_args
    system 'make install'
  end

end


__END__
diff --git a/CMakeLists.txt b/CMakeLists_mod.txt
index 3b22069..c1b1e0e 100644
--- a/CMakeLists.txt
+++ b/CMakeLists_mod.txt
@@ -288,8 +288,8 @@ if(WITH_STATIC)
 endif()

 if(APPLE)
-    set_target_properties(storm PROPERTIES FRAMEWORK true)
-    set_target_properties(storm PROPERTIES PUBLIC_HEADER "src/StormLib.h src/StormPort.h")
+    #set_target_properties(storm PROPERTIES FRAMEWORK true)
+    #set_target_properties(storm PROPERTIES PUBLIC_HEADER "src/StormLib.h src/StormPort.h")
     set_target_properties(storm PROPERTIES LINK_FLAGS "-framework Carbon")
 endif()
