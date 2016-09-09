require 'spec_helper'

describe package('nvm') do
  it 'expect to be installed nvm' do
    out, err, _ = Open3.capture3('/usr/bin/env bash -lc "nvm --version"')
    expect(out).not_to eq raise_error(Errno::ENOENT)
  end

  it 'expect to version of node v6.5.0' do
    out, err, _ = Open3.capture3('/usr/bin/env bash -lc "nvm version"')
    expect(out.chomp).to eq 'v6.5.0'
  end

  it 'expect to be installed npm' do
    out, err, _ = Open3.capture3('/usr/bin/env bash -lc "npm --version"')
    expect(out).not_to eq raise_error(Errno::ENOENT)
  end

  it 'expect to be installed node' do
    out, err, _ = Open3.capture3('/usr/bin/env bash -lc "node --version"')
    expect(out).not_to eq raise_error(Errno::ENOENT)
  end
end

