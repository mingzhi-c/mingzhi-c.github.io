# Compatibility shim for older Jekyll/Liquid versions on newer Ruby releases.
# Liquid 4 calls `tainted?`, which was removed from recent Ruby versions.
class Object
  def tainted?
    false
  end

  def untaint
    self
  end
end
