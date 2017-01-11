Facter.add(:git_version) do
  setcode do
    git_version = Facter::Util::Resolution.exec('git --version 2>&1')
    Facter.debug "Matching git '#{git_version}'"
    %r{^git version (\d+\.\d+(\.\d+)?(\.\d+)?)}.match(git_version)[1]
  end
end
