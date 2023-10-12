GCJ relies upon a modified version of ECJ 3.11.1, a part of Eclipse 4.5.1,
released in February 2016.

The corresponding _Maven_ artifact, available from _Maven Central_, is
`org.eclipse.jdt.core.compiler:ecj:4.5.1`.

The `GCCMain` class invoked by `ecj1` is available from _Debian_ patches (ecj
version 3.11.1 available as a part of Debian 9 "Stretch").

When configuring GCC (**5.x** or **6.x**), the `--with-ecj-jar` switch should
be passed to the `configure` script, e.g.:

```bash
./configure --with-ecj-jar=/usr/share/java/ecj.jar
```

If `libecj-java` package is upgraded along with Debian Linux, the `GCCMain`
class will be gone, breaking the Java-to-bytecode compilation feature of GCJ
(`gcj -C`).

### External Links

 * [Cygnus Implementation of the Java Language](http://web.archive.org/web/20060203011835/http://www.spindazzle.org/cygnus/design.html), June 1998
 * [Guide to GNU gcj](https://gcc.gnu.org/onlinedocs/gcc-6.5.0/gcj/)
 * [The Cygnus Native Interface for C++/Java Integration](http://gnu.ist.utl.pt/software/gcc/java/papers/cni/t1.html)
 * [GCJ: the GNU Compiler for Java](https://objectcomputing.com/resources/publications/sett/january-2003-gcj-the-gnu-compiler-for-java), January 2003
 * [Java CNI](https://www.imperialviolet.org/2002/12/04/java-cni.html),  December 2002
 * [Proceedings of the GCC Developers’ Summit](https://people.redhat.com/lockhart/.gcc2004/MasterGCC-2side.pdf), June 2004
 * [Java &mdash; CNI &mdash; X Window System (JCNIX)](https://www.ii.uib.no/~rolfwr/jcnix/)
 * [Java/C++ integration: Writing native Java methods in natural C++](https://per.bothner.com/papers/UsenixJVM01/CNI01.pdf)
