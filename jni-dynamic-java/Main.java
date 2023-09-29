public final class Main {
	static {
		System.loadLibrary("foo");
	}

	private Main() {
		assert false;
	}

	public static native void foo();

	public static void main(final String args[]) {
		foo();
	}
}
