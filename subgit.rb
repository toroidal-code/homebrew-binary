require 'formula'

class Subgit < Formula
  homepage 'http://subgit.com'
  url 'http://subgit.com/download/subgit-2.0.0.zip'
  sha1 '6c457d57b0f71a5b619a460108236e3c061a38c2'

  def patches
    # fixes default searchpaths for .jars
    DATA
  end
  
  def install
    bin.install 'bin/subgit'
    libexec.install Dir['lib/*']
  end
end

__END__
diff --git a/bin/subgit b/bin/subgit
index 8c9dc5f..2badb65 100755
--- a/bin/subgit
+++ b/bin/subgit
@@ -72,7 +72,7 @@ TS_LIB="$TS_LIB_DEFAULT"

 if [ -z "$TS_LIB" ]
 then
-  TS_LIB="$BASEDIR"/lib
+  TS_LIB="$BASEDIR"/libexec
 fi

 TS_CLASSPATH="$TS_LIB/subgit-2.0.0.jar"
