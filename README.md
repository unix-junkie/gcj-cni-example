GCJ relies upon a modified version of ECJ 3.11.1, a part of Eclipse 4.5.1,
released in February 2016.

The corresponding _Maven_ artifact, available from _Maven Central_, is
`org.eclipse.jdt.core.compiler:ecj:4.5.1`.

The `GCCMain` class invoked by `ecj1` is available from _Debian_ patches (ecj
version 3.11.1 available as a part of Debian 9 "Stretch").

When configuring GCC (**5.x** or **6.x**), the `--with-ecj-jar` switch should
be passed to the `configure` script, e.g.:

```bash ./configure --with-ecj-jar=/usr/share/java/ecj.jar ```

If `libecj-java` package is upgraded along with Debian Linux, the `GCCMain`
class will be gone, breaking the Java-to-bytecode compilation feature of GCJ
(`gcj -C`).
