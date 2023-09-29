public final class Main {
	private Main() {
		assert false;
	}

	/**
	 * When using JNI/CNI and AOT compilation, no previous call to {@link
	 * System#loadLibrary} is required.
	 */
	public static native void foo();

	public static void main(final String args[]) {
		foo();
	}
}
