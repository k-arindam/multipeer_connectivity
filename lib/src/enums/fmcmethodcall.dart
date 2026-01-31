enum FMCMethodCallFTN {
  start("start"),
  stop("stop"),
  connect("connect"),
  disconnect("disconnect");

  const FMCMethodCallFTN(this.rawValue);
  final String rawValue;
}

enum FMCMethodCallNTF {
  disconnect("sync");

  const FMCMethodCallNTF(this.rawValue);
  final String rawValue;
}
